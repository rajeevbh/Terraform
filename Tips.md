- Instead of Azure logon, service principal can be ussed in Terraform
  - Azure Active Directory --> App Registration
  - Service Principal (Subscription Id, Client Id, Tennat id, Sceret (value)) 
  - Subscription -> IAM -> assign contributor role

- If one has already login with AZ account, one can only provide subscription id in the azurerm configuraion
 
- Set up Environment Variable
  Windows (CMD)
  *************
  set ARM_CLIENT_ID=your-client-id
  set ARM_CLIENT_SECRET=your-client-secret
  set ARM_SUBSCRIPTION_ID=your-subscription-id
  set ARM_TENANT_ID=your-tenant-id
  *************

Windows (PowerShell)
  *************
  $env:ARM_CLIENT_ID = "your-client-id"
  $env:ARM_CLIENT_SECRET = "your-client-secret"
  $env:ARM_SUBSCRIPTION_ID = "your-subscription-id"
  $env:ARM_TENANT_ID = "your-tenant-id"

  *************

 Linux
 ******************
  export ARM_CLIENT_ID="your-client-id"
  export ARM_CLIENT_SECRET="your-client-secret"
  export ARM_SUBSCRIPTION_ID="your-subscription-id"
  export ARM_TENANT_ID="your-tenant-id"

 ******************
