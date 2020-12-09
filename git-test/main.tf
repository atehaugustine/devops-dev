
resource "aws_instance" "web" {
  count = 3
  ami           = "ami-000279759c4819ddf"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform_Instance"
    Purpose = "Terraform Test"
  }
}

resource "aws_s3_bucket" "ateh-terra-bucket-1" {
  bucket = "ateh-terra-bucket-1"
  acl    = "private"
  tags = {
    Name        = "ateh-terra-bucket-1"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "ateh-terra-bucket-2" {
  bucket = "ateh-terra-bucket-2"
  acl    = "private"
  tags = {
    Name        = "ateh-terra-bucket-2"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "ateh-terra-bucket-3" {
  bucket = "ateh-terra-bucket-3"
  acl    = "private"
  tags = {
    Name        = "ateh-terra-bucket-3"
    Environment = "Dev"
  }
}