#To install the provider, you have to write this code into your Terraform configuration. 
#Then, run terraform init in your terminal#
#Terraform 0.13+#

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  # Configuration options
}


resource "aws_s3_bucket" "mybucket" {
  bucket = "starbucks.indi"

  tags = {
    Name= "My bucket"
   
  }
}


#To Add Your Files and folders inside the object#
resource "aws_s3_bucket_object" "object" {
  bucket = "starbucks.indi"
  key    = "SourceFile"
  source = "Path/to/file" 
}


# To Generate Bucket Policy #
resource "aws_s3_bucket" "mybucketPolicy" {
  bucket = "starbucks.indi"
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = starbucks.indi.mybucketPolicy.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["123456789012"]
    }

    actions = [
      "s3:GetObject",
    ]

    resources = [
      starbucks.mybucketPolicy.arn,
      "${starbucks.mybucketPolicy.arn}/*",
    ]
  }
}

