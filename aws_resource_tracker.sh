#!/bin/bash

###############################
#Author: Tejaswini
#Date: 18-DEC-2024
#
#Version: v1
#
#This script will report the AWS report usage
##############################


#AWS S#
#AWS EC2
#AWS Lambda
#AWS IAM USers


set -x
#List the S3 buckets
echo "Print list of S3 buckets"
aws s3 ls

#list the EC2 Instances
echo "Print list ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list the Lambda
echo "Print list of lambda functions"
aws lambda list-functions

#list the IAM users
echo "Print list of iam users "
aws iam list-users
