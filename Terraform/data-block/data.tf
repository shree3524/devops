data "aws_ami" "amazon" {
    most_recent = true
    owners = ["amazon"]

filter {
  name = "name"
  values = ["al2023-ami-2023.*-x86_64"]
}



filter {
    name = "root-device-type" 
    values = ["ebs"]
}

filter {
    name = "virtualization-type"
    values = ["hvm"]
}

}
#create ec2 instance


resource "aws_instance" "ser" {
    ami = data.aws_ami.amazon.id
    instance_type = "t3.micro"
    
}

  output "ami_id" {
    value = data.aws_ami.amazon.id
    
  
  
  }
