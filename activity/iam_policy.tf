resource "aws_iam_policy" "tf-dynamodb-policy" {
  name        = "tf-yl-dynamodb-read"
  path        = "/"
  description = "YL Dynamodb IAM Policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "dynamodb:BatchGetItem",
                "dynamodb:DescribeImport",
                "dynamodb:ConditionCheckItem",
                "dynamodb:DescribeContributorInsights",
                "dynamodb:Scan",
                "dynamodb:ListTagsOfResource",
                "dynamodb:Query",
                "dynamodb:DescribeStream",
                "dynamodb:DescribeTimeToLive",
                "dynamodb:DescribeGlobalTableSettings",
                "dynamodb:PartiQLSelect",
                "dynamodb:DescribeTable",
                "dynamodb:GetShardIterator",
                "dynamodb:DescribeGlobalTable",
                "dynamodb:GetItem",
                "dynamodb:DescribeContinuousBackups",
                "dynamodb:DescribeExport",
                "dynamodb:GetResourcePolicy",
                "dynamodb:DescribeKinesisStreamingDestination",
                "dynamodb:DescribeBackup",
                "dynamodb:GetRecords",
                "dynamodb:DescribeTableReplicaAutoScaling"
            ],
            "Resource": "arn:aws:dynamodb:ap-southeast-1:255945442255:table/yl-bookinventory"
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "dynamodb:ListContributorInsights",
                "dynamodb:DescribeReservedCapacityOfferings",
                "dynamodb:ListGlobalTables",
                "dynamodb:ListTables",
                "dynamodb:DescribeReservedCapacity",
                "dynamodb:ListBackups",
                "dynamodb:GetAbacStatus",
                "dynamodb:ListImports",
                "dynamodb:DescribeLimits",
                "dynamodb:DescribeEndpoints",
                "dynamodb:ListExports",
                "dynamodb:ListStreams"
            ],
            "Resource": "*"
        }
    ]
  })
}