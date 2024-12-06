terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    key = "yl-dynamodb-with-permissions.tfstate"
    region = "ap-southeast-1"
  }
}