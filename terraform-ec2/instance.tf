// https://cloud-images.ubuntu.com/locator/ec2/
resource "aws_instance" "example" {
    ami = lookup(var.AMIS, var.AWS_REGION)
    instance_type = "t2.micro"
}