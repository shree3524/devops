vpc_cidr_block  = "10.0.0.0/16"
vpc_name = "vpc-mod"
subnet_cidr_block = "10.0.0.0/22"
subnet_az = "ap-southeast-2a"
public_ip = true
subnet_name = "public-subnet"
igw_name = "igw-mod"
ports = [22, 0]
ami_id = "ami-0e326862c8e74c0fe"
instance_name = "EC2-Module"
instance_type = "t2.micro"
key_name = "pin"