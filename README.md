# Terraform Multi-Environment

A simple Terraform project that demonstrates two ways to deploy AWS EC2 instances across **dev** and **prod** environments using the same codebase.

---

## Project Structure

```text
terraform-multienv/
├── tfvars/
│   ├── dev/
│   │   ├── backend.tf
│   │   └── terraform.tfvars
│   └── prod/
│       ├── backend.tf
│       ├── terraform.tfvars
│       ├── .terraform.lock.hcl
│       ├── ec2.tf
│       ├── provider.tf
│       └── variables.tf
│
├── workspace/
│   ├── .terraform.lock.hcl
│   ├── data.tf
│   ├── ec2.tf
│   ├── locals.tf
│   ├── provider.tf
│   └── variables.tf
│
└── .gitignore
```

---

## Two Approaches

### 1. tfvars

Each environment has its own folder with its own values and backend configuration.

```bash
# Dev
cd tfvars/dev
terraform init
terraform apply

# Prod
cd tfvars/prod
terraform init
terraform apply
```

### 2. Workspaces

Use a single configuration and switch environments using Terraform workspaces.

```bash
cd workspace
terraform init

# Create workspaces
terraform workspace new dev
terraform workspace new prod

# Deploy to dev
terraform workspace select dev
terraform apply

# Deploy to prod
terraform workspace select prod
terraform apply
```

Check the active workspace:

```bash
terraform workspace show
```

---

## Requirements

- Terraform installed
- AWS credentials configured

---

## Which One Should You Use?

| Approach | Best For |
|-----------|------------|
| `tfvars` | Separate environments with independent settings |
| `workspaces` | Managing multiple environments from a single configuration |

---

## Author

**Kalvakota Divakar**

- GitHub: https://github.com/Kalvakota-Divakar
- LinkedIn: https://www.linkedin.com/in/kalvakota-divakar/

---

## License

MIT
