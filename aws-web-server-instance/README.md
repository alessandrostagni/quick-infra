# AWS Web Server Instance

Sets up a nano AWS instance with port 22 and 80 open and Amazon Linux AMI installed.

1. Just set your `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY` and `AWS_REGION` environment variables.
2. Run `terraform apply -var=aws_region=[TARGET_AWS_REGION] -var=stack_name=[STACK_NAME] -var=ssh_public_key=[SSH_KEY_PUBLIC_KEY_STRING]`.