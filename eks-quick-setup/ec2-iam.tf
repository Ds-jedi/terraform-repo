resource "aws_iam_role" "ec2-jumpbox-role" {
      
    assume_role_policy    = jsonencode(
        {
            Statement = [
                {
                    Action    = "sts:AssumeRole"
                    Effect    = "Allow"
                    Principal = {
                        Service = "ec2.amazonaws.com"
                    }
                },
            ]
            Version   = "2012-10-17"
        }
    )
    
    description           = "Allows EC2 instances to call AWS services on your behalf."
    force_detach_policies = false
    
    managed_policy_arns   = [
        "arn:aws:iam::727503995468:policy/eks-describe-policy",
        "arn:aws:iam::aws:policy/AmazonSSMFullAccess",
        "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM",
    ]
    max_session_duration  = 3600
    name                  = "ec2-jumpbox-role"
    path                  = "/"

    tags                  = {
        "Name" = "ec2-jumpbox-role"
    }
    tags_all              = {
        "Name" = "ec2-jumpbox-role"
    }

}



# terraform import aws_iam_role.ec2-jumpbox-role ec2-jumpbox-role