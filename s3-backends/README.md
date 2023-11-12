## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.terraform_locks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.terraform_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.terraform_state_crypto_conf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.terraform_bucket_versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region where the resources are going the be provisioned. | `string` | `"us-east-1"` | no |
| <a name="input_tf_state_backend_buckets"></a> [tf\_state\_backend\_buckets](#input\_tf\_state\_backend\_buckets) | The name of the S3 bucket where the Terraform state files will be stored | `list(string)` | <pre>[<br>  "kiusys-eks-cluster-state-bucket",<br>  "kiusys-dynamodb-state-bucket",<br>  "kiusys-ecr-repo-state-bucket"<br>]</pre> | no |
| <a name="input_tf_state_locks"></a> [tf\_state\_locks](#input\_tf\_state\_locks) | DynamoDB table to use for state locking | `list(string)` | <pre>[<br>  "kiusys-eks-cluster-state-lock",<br>  "kiusys-dynamodb-state-lock",<br>  "kiusys-ecr-repo-state-lock"<br>]</pre> | no |

## Outputs

No outputs.
