# Azure Troubleshooting Module - Terraform

## Overview

This folder contains Terraform configurations for deploying and managing Azure resources as part of the Azure Troubleshooting Module. The module is designed to simplify the deployment of infrastructure and provide reusable components for troubleshooting and diagnostics in Azure environments.

---

## Folder Structure

```
terraform/
├── main.tf          # Entry point for the Terraform configuration
├── module/
│   ├── main.tf      # Core module logic
│   ├── outputs.tf   # Outputs for the module
│   ├── providers.tf # Provider configurations
│   └── variables.tf # Input variables for the module
```

---

## Usage

1. **Initialize Terraform:**
   Run the following command to initialize the Terraform configuration:
   ```bash
   terraform init
   ```

2. **Plan the Deployment:**
   Generate and review the execution plan:
   ```bash
   terraform plan
   ```

3. **Apply the Configuration:**
   Deploy the resources to Azure:
   ```bash
   terraform apply
   ```

4. **Destroy the Resources:**
   To clean up and remove the deployed resources:
   ```bash
   terraform destroy
   ```

---

## Module Details

- **`main.tf`:**  
  The entry point for the Terraform configuration. This file orchestrates the deployment of resources using the module.

- **`module/`:**  
  Contains the core logic for the reusable Terraform module:
  - **`main.tf`:** Defines the resources and logic for the module.
  - **`outputs.tf`:** Specifies the outputs of the module.
  - **`providers.tf`:** Configures the Azure provider for Terraform.
  - **`variables.tf`:** Defines the input variables for the module.

---

## Prerequisites

- [Terraform](https://www.terraform.io/) installed on your local machine.
- Azure CLI installed and authenticated.
- Proper permissions to deploy resources in the target Azure subscription.

---

## Notes

- Ensure that the input variables in `variables.tf` are configured correctly before running the Terraform commands.
- Review the outputs in `outputs.tf` to understand the resources created by the module.

---

## License

This project is licensed under the MIT License. See the [LICENSE](../LICENSE) file for details.