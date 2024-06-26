terraform {
  backend "s3" {
    profile = "shree"
    bucket = "my-kitkat"
    key = "terraform.tfstate"
    region = "ap-southeast-2"

    
  }
}

resource "aws_instance" "bu" {
    ami = "ami-0cb3193ac3a1520ce"
    instance_type = "t3.micro"
     
    tags = {
      Name = "pri"
    }

}
