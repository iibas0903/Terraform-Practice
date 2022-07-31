resource "aws_iam_instance_profile" "ec2_profile" {
  name = "s3_access_profile"
  role = aws_iam_role.s3_role.name
}
#will allow ec2 to access s3 

resource "aws_iam_role" "s3_role" {
  name = "s3_role"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_policy" "s3_policy" {
  name        = "s3_policy"
  path        = "/"
  description = "My s3 policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = [
        "${aws_s3_bucket.ilknur_s3.arn}",
         "${aws_s3_bucket.ilknur_s3.arn}/*"
        ]
      },
    ]
  })
}

#will attach role to policy 
resource "aws_iam_role_policy_attachment" "role-attach" {
  role      = aws_iam_role.s3_role.name
  policy_arn = aws_iam_policy.s3_policy.arn
}