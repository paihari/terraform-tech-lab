# 🛠️ Terraform Tech Lab

This repository is a structured, hands-on collection of **Terraform modules and exercises** designed to prepare for the **HashiCorp Certified: Terraform Associate** exam. It includes practical examples covering Terraform fundamentals, advanced patterns, and best practices using AWS infrastructure.

---

## 🎯 Project Objective

To provide infrastructure practitioners, DevOps engineers, and certification candidates with:

- Realistic **Terraform configurations**
- Modularity and workspace patterns
- Syntax mastery: variables, locals, outputs, providers, and resources
- Practical demonstrations of **core exam topics**

---

## 📂 Directory Structure Overview

```
hashicorp-terraform-certification/
├── ec2/                         # Basic EC2 provisioning example
├── rds/                         # RDS provisioning using Terraform
├── remote-backend/             # S3 backend config
├── local-values/               # `locals` usage
├── functions/                  # Built-in Terraform function examples
├── datatypes/                  # Variables and complex types (maps, lists)
├── references/                 # Resource references and interpolations
├── conditional-expression/     # Using `count` and ternary operators
├── import-resource/            # Importing existing infrastructure
├── Module-sources/             # Demonstrates use of module sources
├── terraform-modules/          # Reusable module patterns
├── Workspaces/                 # Working with multiple workspaces
├── Splitfiles/                 # Best practices: split configuration files
├── Provisioners/               # File/cmd provisioners (for learning only)
├── formatting/                 # Code formatting (`terraform fmt`)
├── Misc/                       # Save plans, lock files
└── README.md
```

---

## 📦 Prerequisites

- Terraform CLI ≥ 1.1.0
- AWS CLI configured (`~/.aws/credentials`)
- An AWS account with permission to create:
  - EC2, VPC, RDS, S3

---

## 🧪 How to Use

### 1. Navigate to any folder:

```bash
cd ec2/
```

### 2. Initialize Terraform:

```bash
terraform init
```

### 3. Preview the infrastructure plan:

```bash
terraform plan
```

### 4. Apply to create resources:

```bash
terraform apply
```

### 5. (Optional) Destroy resources:

```bash
terraform destroy
```

---

## ✅ Covered Topics (Mapped to Certification)

| Topic                            | Folder Example                |
|----------------------------------|-------------------------------|
| Providers & Resources            | `ec2/`, `rds/`                |
| Variables & Data Types           | `datatypes/`, `variables/`    |
| Resource Targeting               | `references/`, `conditional/` |
| `locals` and `outputs`           | `local-values/`, `ref/`       |
| Workspaces                       | `Workspaces/`                 |
| Modules                          | `terraform-modules/`          |
| Backends (remote, local)         | `remote-backend/`             |
| Import Existing Infrastructure   | `import-resource/`            |
| `count`, `for_each`, conditionals| `conditional-expression/`     |

---

## 🧰 Tools Used

- Terraform CLI
- AWS Provider (`hashicorp/aws`)
- Built-in functions (`join`, `lookup`, `element`, etc.)
- S3 for state storage
- EC2, RDS, VPC as infrastructure targets

---

## 📘 Recommended Learning Flow

1. `ec2/` → Launch and destroy a basic EC2 instance
2. `datatypes/` → Practice maps/lists and variables
3. `local-values/` → Understand how `locals` simplify code
4. `terraform-modules/` → Build and use reusable modules
5. `remote-backend/` → Migrate state to S3 backend
6. `Workspaces/` → Simulate multiple environments
7. `import-resource/` → Bring unmanaged resources under Terraform control

---

## 🔒 Note on Provisioners

The `Provisioners/` example demonstrates file and remote-exec usage. These are discouraged in production but may be tested in certification scenarios.

---

## 🧹 Cleanup

Always destroy resources after testing to avoid AWS charges:

```bash
terraform destroy
```

---

## 📝 License

This project is open-sourced under the MIT License.

---

## ✍️ Author

Built and maintained by [Your Name / GitHub Handle]
