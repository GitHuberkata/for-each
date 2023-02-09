# A sample terraform configuration to demonstrate the use of `for_each`

### Prerequisites
- Git
- Terraform CLI
- AWS credentials

### Use Case
Creation of two ec2 instances each of them to be of different type - `t2.micro` and `t2.medium`

### How to use
1. Clone the repo https://github.com/GitHuberkata/for-each.git
2. Set values for the desired instance types in the `resource block`:
```
resource "aws_instance" "myec2" {
  ami = "ami-082b5a644766e0e6f"
  for_each = {
    VM1 = "t2.micro"
    VM2 = "t2.medium"
}
instance_type = each.value


tags = {
    Name = each.key
}
}
```


3. Execute the commands:
- `terraform init`
- `terraform plan`
- `terraform apply`
