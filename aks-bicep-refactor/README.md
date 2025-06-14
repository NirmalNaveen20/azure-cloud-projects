# AKS Bicep Deployment

This project provides Bicep templates for deploying Azure Kubernetes Service (AKS) resources. Use the following Azure CLI commands to validate, preview, and deploy your infrastructure.

## Commands

### 1. Validate the Bicep template

Validates the syntax and structure of the `main.bicep` file without deploying any resources.

```sh
az deployment group validate --resource-group cofee-aks-rg --template-file main.bicep
```

### 2. Validate the Bicep template with parameters

Validates the `main.bicep` template using parameters from `aks.bicepparam`.

```sh
az deployment group validate --resource-group cofee-aks-rg --template-file main.bicep --parameters aks.bicepparam
```

### 3. Preview changes with What-If

Shows a preview of changes that will be made to the resource group if the deployment is executed.

```sh
az deployment group what-if --resource-group cofee-aks-rg --template-file main.bicep --parameters aks.bicepparam
```

### 4. Deploy the Bicep template

Deploys the resources defined in `main.bicep` to the specified resource group using the provided parameters.

```sh
az deployment group create --resource-group cofee-aks-rg --template-file main.bicep --parameters aks.bicepparam
```