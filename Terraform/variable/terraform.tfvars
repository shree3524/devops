vpc_cidr_block = "10.0.0.0/16"
aws_subnet = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
aws_az = [ "ap-southeast-2a", "ap-southeast-2b", "ap-southeast-1c" ]
sg_ports = [ 22, 80, 443, 8080, 0 ]
ami_id = "ami-0e326862c8e74c0fe"
instance_type = "t2.micro"
key_name = "pin"
instance_tags = { 
    Name = "shree"
  }
instance_tags_dev = { 
   Environment = "Development"
  }
