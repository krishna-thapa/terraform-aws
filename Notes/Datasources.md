# Datasources

- For certain providers (like AWS), terraform provides datasources
- Datasources provide you with dynamic information
  - A lot of data is available by AWS in a structured format using their API
  - Terraform also exposes this information using data sources 
- Examples:
  - List of AMIs
  - List of availability Zones
- Another example is the datasource that gives you all IP addresses in use by AWS
- This is great if you want to filter traffic based on a AWS region 

## Security group 
- Filtering traffic in AWS can be done using security groups 
- Incoming and outgoing traffic can be filtered by protocol, IP range and port

Following code will filter the ip ranges from two specific regions for ec2 service only
```
data "aws_ip_ranges" "european_ec2" {
  regions  = ["eu-west-1", "eu-central-1"]
  services = ["ec2"]
}
```