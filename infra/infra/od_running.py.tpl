import boto3
import json

def asg_cap(fleet, od):
    print('in function',fleet)
    print('in function',od)
    if fleet >= 2 and od > 0:
        client = boto3.client('autoscaling')
        response = client.set_desired_capacity(
            AutoScalingGroupName='spot',
            DesiredCapacity=0
        )

def lambda_handler(event, context):
    cnt = 0
    ec3 = boto3.resource('ec2')
    fleet = 0
    od = 0
    instancename = []
    fleet_ltime = []
    od_ltime = []
    for instance in ec3.instances.all():
        print (instance.id)
        print (instance.state)
        print (instance.tags)
        print (instance.launch_time)
        abc = instance.tags
        ab = instance.state
        print (ab['Name'])
        if ab['Name'] == 'running':
            cnt += 1
            for tags in abc:
                if tags["Key"] == 'Name':
                    instancename.append(tags["Value"])
                    inst = tags["Value"]
                    print (inst)
                    if inst == '${tag_spot}':             ## Tag Name of spot instances here, change to match your one's here.
                        fleet += 1
                        fleet_ltime.append(instance.launch_time)
                    if inst == '${tag_od}':              ## Tag Name of on-demand instance here, change to match your one's here.
                        od += 1
                        od_ltime.append(instance.launch_time)
                    
    print('Total number of running instances: ', cnt)
    print(instancename)
    print('Number of spot instances: ', fleet)
    print('Number of on-demand instances: ', od)
    print('Launch time of Fleet: ', fleet_ltime)
    print('Launch time of on-demand: ', od_ltime)
    
    if od > 0:
        dt_od = od_ltime[0]
    else:
        dt_od = '0'
        
    if fleet > 1:
        dt_spot = fleet_ltime[0]
        dt_spot1 = fleet_ltime[1]
    elif (fleet > 0) and (fleet < 2):
        dt_spot = fleet_ltime[0]
        dt_spot1 = '0'
    else:
        dt_spot = '0'
        dt_spot1 = '0'
        
        
    if dt_od != '0':
        if dt_spot != '0':
            if dt_od > dt_spot:
                if dt_spot1 != '0':
                    if dt_od > dt_spot1:
                        print('On-Demand instance is Launched')
                        # do nothing
                    else:
                        print('Spot instance is Launched')
                        asg_cap(fleet, od)
                else:
                    print('Only 1 spot instance exist')
            else:
                print('1Spot instance is Launched')
                asg_cap(fleet, od)
        else:
            print('No spot instance exist')
    else:
        print('No On-Demand instance exist')
        
        
        
    client1 = boto3.client('ec2')
    response = client1.modify_spot_fleet_request(
        SpotFleetRequestId='${sfr_id}',              ## id starts with sfr-
        TargetCapacity=2
    )
