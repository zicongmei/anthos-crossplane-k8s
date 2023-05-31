#!/bin/bash
set -ex

aws_response=$(aws ec2 create-vpc \
 --cidr-block "10.0.0.0/16" \
 --region us-east-1 \
 --output json)
vpcId=$(echo -e "$aws_response" |  /usr/bin/jq '.Vpc.VpcId' | tr -d '"')

echo "Created ${vpcId}"

aws ec2 create-tags \
  --resources "$vpcId" \
  --region us-east-1 \
  --tags Key=Name,Value="zicong-import-1"