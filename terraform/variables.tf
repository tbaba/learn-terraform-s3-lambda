variable "region" {
  default = "ap-northeast-1"
}

variable "lambda_function_name" {
  default = "create_thumbnail"
}

variable "lambda_role_policy" {
  default = <<EOS
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOS
}
