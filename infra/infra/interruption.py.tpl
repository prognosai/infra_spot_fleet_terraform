import json
import boto3

def lambda_handler(event, context):
    client = boto3.client('autoscaling')
    response = client.set_desired_capacity(
        AutoScalingGroupName='${auto_scaling_group_name}',   ## match and replace 'spot' with the name of your Auto Scaling group here if required
        DesiredCapacity=1
    )
