# Terraform outputs

- Terraform keeps attributes of all the resources you create
- e.g: the aws_instance resource has the attribute public_ip
- Those attributes can be queried and outputted
- This can be useful just to output valuable information or to feed information to external software
- You can also use the attributes in a **script**
- Useful for instance to start automation scripts after infrastructure provisioning

```
resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    // local run that stores private ip address into the txt file
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  // prints outputs the public ip address
  value = aws_instance.example.public_ip
}
```
