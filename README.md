# lambdainfra

** INFRA-SPOT**

This terraform code will create everything necessary for you to get go with spot fleet request.
However, to use this code efficiently you have to configure few things:

1. You should have an AMI ready. You will require an AMI ID.

2. You must have AWS account and also AWS CLI configured on your system.

3. You will have to edit vars file. You  will find that  'infra/infra/vars.tf'

4. In 'infra/infra/' run 'terraform plan' and then run 'terraform apply'.

IMP: Verify that lambda function created has correct Autoscaling group name in first function, and spot instance tags,on-demand tags and spot fleet request id is correct in second_function.

Comment on blog for any queries.

