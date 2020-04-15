provider "aws" {
    region     = var.region
}
resource "aws_elastic_beanstalk_application" "tftest" {
    name        = "tf-test-name"
    description = "tf-test-desc"
}

resource "aws_elastic_beanstalk_environment" "tfenvtest" {
    name                = "tf-test-name"
    application         = "${aws_elastic_beanstalk_application.tftest.name}"
    solution_stack_name = "64bit Amazon Linux 2 v0.1.0 running Python 3.7 (BETA)"

    setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name = "IamInstanceProfile"
        value = "aws-elasticbeanstalk-ec2-role"
    }

}


# resource "aws_iam_instance_profile" "test_profile" {
#   name = "test_profile"
#   role = "${aws_iam_role.role.name}"
# }

# resource "aws_iam_role" "role" {
#   name = "test_role"
#   path = "/"

#   assume_role_policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Action": "sts:AssumeRole",
#             "Principal": {
#                "Service": "ec2.amazonaws.com"
#             },
#             "Effect": "Allow",
#             "Sid": ""
#         }
#     ]
# }
# EOF
# }