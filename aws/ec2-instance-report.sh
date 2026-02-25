#!/bin/bash

echo "Fetching EC2 instance details..."

aws ec2 describe-instances \
  --query 'Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType]' \
  --output table

echo "Report generated successfully."
