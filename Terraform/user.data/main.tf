resource "aws_instance" "shree" {
  ami = "ami-0e326862c8e74c0fe"
  key_name = "pin"
  instance_type = "t2.micro"
  tags = {
    Name = "shree"
  }
    user_data = <<-EOF
    #!/bin/bash
    sudo yum install nginx -y 
    sudo systemctl start nginx
    sudo systemctl enable nginx
    sudo echo "hello shree" > /usr/share/nginx/html/index.html 
EOF
}
