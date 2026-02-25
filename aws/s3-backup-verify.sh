#!/bin/bash

BUCKET_NAME="your-backup-bucket"

echo "Checking latest backup file in S3..."

aws s3 ls s3://$BUCKET_NAME --recursive | sort | tail -n 5

echo "Backup verification completed."
