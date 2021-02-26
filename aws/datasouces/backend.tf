terraform {
  backend "s3" {
      bucket            = "tfbkbucket"
      key               = "global/terraform/ntier/terraform.tfstate"
      region            = "us-east-1"

      dynamodb_table    = "tablefortfbk"
  }
}
