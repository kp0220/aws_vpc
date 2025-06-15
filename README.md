# AWS VPC Infrastructure with Terraform

This Terraform project creates a complete AWS VPC infrastructure with public and private subnets, security groups, route tables, Internet Gateway, and NAT Gateway.

## Infrastructure Components

- VPC with DNS support and DNS hostnames enabled
- 1 Public Subnet in ap-south-1a
- 2 Private Subnets in ap-south-1b and ap-south-1c
- Internet Gateway for public subnet
- NAT Gateway for private subnets
- Route Tables for both public and private subnets
- Security Group with HTTP and SSH access

## Network Architecture

- VPC CIDR: 10.0.0.0/16
- Public Subnet CIDR: 10.0.0.0/24
- Private Subnet 1 CIDR: 10.0.16.0/20
- Private Subnet 2 CIDR: 10.0.32.0/20

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (v0.12 or later)
- Basic understanding of AWS VPC concepts

## Usage

1. Clone the repository:
```bash
git clone [repository-url]
cd aws_vpc_sg_rt_ig_nat
```

2. Initialize Terraform:
```bash
terraform init
```

3. Review the planned changes:
```bash
terraform plan
```

4. Apply the infrastructure:
```bash
terraform apply
```

5. To destroy the infrastructure:
```bash
terraform destroy
```

## Variables

| Name | Description | Default |
|------|-------------|---------|
| region | AWS Region | ap-south-1 |
| vpc_cidr | VPC CIDR Block | 10.0.0.0/16 |
| public_subnet1_cidr | Public Subnet CIDR | 10.0.0.0/24 |
| private_subnet1_cidr | Private Subnet 1 CIDR | 10.0.16.0/20 |
| private_subnet2_cidr | Private Subnet 2 CIDR | 10.0.32.0/20 |

## Outputs

| Name | Description |
|------|-------------|
| vpc_id | ID of the created VPC |
| public_subnet1_id | ID of the public subnet |
| private_subnet1_id | ID of the first private subnet |
| private_subnet2_id | ID of the second private subnet |
| internet_gateway_id | ID of the Internet Gateway |
| nat_gateway_id | ID of the NAT Gateway |

## Security Group Rules

The web security group includes:
- Inbound HTTP (port 80) access from anywhere
- Inbound SSH (port 22) access from anywhere
- All outbound traffic allowed

## License

[Your License Here]

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
