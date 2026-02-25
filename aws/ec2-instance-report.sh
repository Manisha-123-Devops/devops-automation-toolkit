devops-automation-toolkit/
│
├── aws/
│   ├── ec2-instance-report.sh
│   └── s3-backup-verify.sh
│
├── kubernetes/
│   ├── cluster-health-check.sh
│   └── pod-restart-check.sh
│
├── monitoring/
│   ├── cpu-alert-check.py
│   └── endpoint-health-check.py
│
├── cicd/
│   └── docker-cleanup.sh
│
└── README.md
#!/bin/bash

echo "Fetching EC2 instance details..."

aws ec2 describe-instances \
  --query 'Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType]' \
  --output table

echo "Report generated successfully."
