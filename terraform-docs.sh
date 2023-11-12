#!/bin/bash

terraform-docs markdown ./dynamodb > ./dynamodb/README.md
terraform-docs markdown ./ecr-repo > ./ecr-repo/README.md
terraform-docs markdown ./eks-cluster > ./eks-cluster/README.md
terraform-docs markdown ./s3-backends > ./s3-backends/README.md