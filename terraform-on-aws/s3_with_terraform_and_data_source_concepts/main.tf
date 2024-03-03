resource "aws_s3_bucket" "finance" {
  bucket = "finance-03012024"
  tags = {
    Description = "Finance Team Payroll"
  }
}

resource "aws_s3_object" "finance-2020" {
  content  = "/Users/amiteshranjan/terraform-on-aws/finance-2020.txt"
  key      = "finance-2020.txt"
  bucket   = aws_s3_bucket.finance.id
  depends_on = [ 
    aws_s3_bucket.finance 
  ]
}

data "aws_iam_group" "finance-data"{
  group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
  bucket = aws_s3_bucket.finance.id
  policy = jsonencode(
    {
      "Version": "2012-10-17",
      "Statement": [
        {
            "Action": "*",
            "Effect": "Allow",
            "Resource": "arn:aws:s3:::${aws_s3_bucket.finance.id}/*",
            "Principal":{
              "AWS":[
                "${data.aws_iam_group.finance-data.arn}"
              ]
            }
        }
      ]
    }
  )
  depends_on = [ 
    aws_s3_bucket.finance,
    data.aws_iam_group.finance-data
  ]
}
