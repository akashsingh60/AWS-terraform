# AWS S3 Bucket Terraform Automation

This project provisions AWS S3 buckets using Terraform with a modular approach, following best practices for security, compliance, and maintainability.

## Features

- **Modular Design** for reusable infrastructure components
- **State Management** with remote state storage in S3
- **S3 Bucket Creation** with globally unique names
- **Security Features:**
  - Server-side encryption (AES256)
  - Public access blocking
  - Versioning with optional MFA delete
  - Object Lock capabilities
- **Resource Tagging** for cost allocation and management
- **CI/CD Integration** via AWS CodeBuild

## Directory Structure

```
AWS-terraform/
├── modules/
│   ├── s3/
│   │   ├── main.tf           # S3 bucket resource definitions
│   │   ├── variables.tf      # Input variables for S3 module
│   │   └── outputs.tf        # Output values from S3 module
│   │
│   └── state-backend/
│       ├── main.tf           # State bucket resource definitions
│       ├── variables.tf      # Input variables for state backend
│       └── outputs.tf        # Output values from state backend
│
├── main.tf                   # Root configuration file
├── variables.tf              # Root variables
├── terraform.tfvars         # Variable values
├── provider.tf              # AWS provider configuration
├── backend.tf              # Backend configuration
│
├── pipeline/
│   └── buildspec.yml        # AWS CodeBuild pipeline configuration
│
├── .gitignore
└── README.md
```

## Prerequisites

- AWS CLI configured
- Terraform (version 1.12.1 or later)
- AWS Account with appropriate permissions

## Usage

1. **Clone the repository:**
   ```sh
   git clone https://github.com/akashsingh60/AWS-terraform.git
   cd AWS-terraform
   ```

2. **Initialize Terraform:**
   ```sh
   terraform init
   ```

## CI/CD Pipeline

The project includes an AWS CodeBuild pipeline that:
- Creates/checks state bucket
- Validates Terraform configurations
- Manages S3 bucket creation/updates
- Implements proper state management
- Includes safety checks and validations

To use the pipeline:
1. Configure AWS CodeBuild project
2. Connect to your repository
3. Use the provided `buildspec.yml`

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.


