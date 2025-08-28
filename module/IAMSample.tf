resource "aws_iam_user" "admin-user" {

name = "ggtest"

tags = {
    Description = "Tech Team lead "
}

}

resource "aws_iam_policy" "adminUser" {
  name   = "AdminUser"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOF
}

# alternative method we can add policy by providing the json file (file should me in the same directory)
# policy = file ("admin-policy.json")

resource "aws_iam_user_policy_attachment" "ggtest-admin-access"{

    user= aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUser.arn 
}
