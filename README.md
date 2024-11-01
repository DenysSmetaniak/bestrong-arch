# Terraform Configuration for Azure Infrastructure

This project uses **Terraform** to set up and configure essential Azure resources for the **BeStrong** startup. The infrastructure is built with a modular approach to ensure flexibility and scalability. The main components include App Service, Key Vault, SQL Server, VNet, and more.

## Resources Created

The following resources will be created and configured:

1. **App Service Plan**
2. **App Service**
   - Integrated with **Virtual Network (VNet)**
   - Enabled **System Managed Identity** for secure authentication
3. **Application Insights**
   - Linked to the App Service for monitoring
4. **Azure Container Registry (ACR)**
   - Access granted to App Service Identity for pulling images
5. **Azure Key Vault**
   - Access permissions for App Service Identity
   - Integration with **VNet** for secure access
6. **Virtual Network (VNet)**
7. **MS SQL Server Database**
   - Configured with a **Private Endpoint** to restrict access
8. **Storage Account**
   - Private Endpoint setup with VNet
   - File Share mounted to App Service for persistent storage
9. **Storage Account for Terraform State**
   - Used to store the Terraform state file securely
