# AWS EC2 run-instances for content delivery network

This is our typical settings to launch a new AWS EC2 server,
suitable for our typical content delivery network server.

Adjust these instructions as you like for your purposes.

AMI image id:

 * ami-05aa248bfb1c99d0f: Ubuntu 18.04 server, most recent version, by Canonical.

Instance type:

  * r4.xlarge: high memory, needed for the CDN to provide many open connections.

VPC:

  * To get a list of VPCs: `aws ec2 describe-vpcs`

  * We choose the subnet that matches the CDN purpose.

Subnet:

  * To get a list of subnets: `aws ec2 describe-subnets`

  * We choose the subnet that matches the CDN purpose.

Key name:

  * This is the AWS keypair name.

  * We choose the key pair that's specifically for the CDN purpose.

  * See https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#KeyPairs:sort=keyName

Security group id:

  * This is the AWS EC2 Security Group Id, e.g. "sg-12345abcd".

  * We choose the security group id that's specifically for the CDN purpose.

  * List them at https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#SecurityGroups:sort=groupId

Volume type:

  * gp2: General Purpose SSD (we use this for the operating system storage)

  *	io1: Provisioned IOPS SSD

  * st1: Throughput Optimized HDD

  * sc1: Cold HDD

Device mappings:
 
  * /dev/sda1 400 gig SSD

Other settings:

  * monitoring enabled

  * ebs optimized

  * disable termination


Command:

```sh
aws ec2 run-instances \
--dry-run \
--profile my-profile-name \
--image-id ami-05aa248bfb1c99d0f \
--subnet-id subnet-??????? \
--count 1 \
--instance-type r4.xlarge \
--monitoring "Enabled=true" \
--ebs-optimized \
--disable-api-termination \
--key-name ????????? \
--security-group-ids ????????? \
--block-device-mappings '{"DeviceName":"/dev/sda1","Ebs":{"VolumeSize":400,"VolumeType":"gp2","DeleteOnTermination":true}]'
```

Add a tag for the name:

```sh
aws ec2 create-tags \
--dry-run \
--profile my-profile-name \
--resources i-xxxxxxxx \
--tags "Key=Name,Value=CDN"
```
