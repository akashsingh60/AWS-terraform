# AWS S3 Bucket Terraform Automation

This task provisions an AWS S3 bucket using Terraform, following best practices for security, compliance, and maintainability.

## Features

- **S3 Bucket Creation** with a globally unique name
- **Region:** Mumbai (`ap-south-1`)
- **Versioning:** Enabled, with optional MFA delete
- **Encryption:** Server-side encryption (AES256)
- **Public Access Block:** Prevents accidental public exposure
- **Tags:** For cost allocation, ownership, and environment tracking
- **Object Lock:** Configurable retention mode and period
- **Modular Code:** All variables are managed via `variables.tf` and `terraform.tfvars`

## Folder Structure

```
AWS-terraform/
├── S3/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── provider.tf
│   ├── output.tf
├── .gitignore
└── README.md
```

## How to Use

1. **Clone the repository:**
   ```sh
   git clone https://github.com/akashsingh60/AWS-terraform.git
   cd AWS-terraform/S3
   ```

2. **Configure AWS CLI:**
   ```sh
   aws configure
   ```

3. **Initialize Terraform:**
   ```sh
   terraform init
   ```

4. **Validate the configuration:**
   ```sh
   terraform validate
   ```

5. **Review the execution plan:**
   ```sh
   terraform plan -var-file="terraform.tfvars"
   ```

6. **Apply the configuration:**
   ```sh
   terraform apply -var-file="terraform.tfvars"
   ```

## Notes

- The `S3 - Copy` folder and Terraform state files are excluded from version control via `.gitignore`.
- All sensitive values and environment-specific settings should be managed via `terraform.tfvars` and not hardcoded.

---