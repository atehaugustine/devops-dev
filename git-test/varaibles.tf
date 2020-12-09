variable "ami" {
    type = string
    default = "ami-000279759c4819ddf"
}

variable "type" {
    type = string
    default = "t2.micro"
}

variable "input_name" {
    type = string
    default = "atlas"
}

output "instance_id" {
    value = aws_instance.atlas.id
}

output "public_ip" {
    value = aws_instance.atlas.*.public_ip
}