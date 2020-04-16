provider "aws" {
    region     = var.region
}
resource "aws_elastic_beanstalk_application" "stumble-stream" {
    name        = "stumble-stream-app"
    description = "Stumble Stream app"
}

resource "aws_elastic_beanstalk_environment" "stumble-stream-env" {
    name                = "stumble-stream-prod"
    application         = "${aws_elastic_beanstalk_application.stumble-stream.name}"
#    solution_stack_name = "64bit Amazon Linux 2 v0.1.0 running Python 3.7 (BETA)"
    solution_stack_name = "64bit Amazon Linux 2 v3.0.0 running Python 3.7"
    
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