resource "aws_instance" "web" {
  ami           =  var.ami
  instance_type = "t3.micro"
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "Terraform-cloud"
  }
}
