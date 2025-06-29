# Introduction
This project demonstrates automated deployment of a static web application using Azure DevOps Pipelines and Azure Static Web Apps. Whenever files are changed and pushed to the repository, the Azure DevOps pipeline builds and deploys the latest version automatically.

# Getting Started

To get started with this project:

1. **Clone the repository**
   ```sh
   git clone <repository-url>
   cd azure-devops-mkdoc
   ```

2. **Install dependencies**  
   (If your static site uses a framework like MkDocs, Hugo, or similar, install the required tools. For example, with MkDocs:)
   ```sh
   pip install mkdocs
   ```

3. **Azure Static Web Apps Setup**
   - Ensure you have an Azure Static Web App resource created in your Azure subscription.
   - Note the deployment token or credentials for pipeline configuration.

4. **Azure DevOps Pipeline**
   - The repository includes an Azure DevOps pipeline YAML file (e.g., `azure-pipelines.yml`) that automates build and deployment.
   - The pipeline triggers on changes to the repository and deploys the site to Azure Static Web Apps.

# Build and Test

To build and preview the site locally:

```sh
mkdocs serve
```

To build the static site:

```sh
mkdocs build
```

# Deployment

Deployment is handled automatically by the Azure DevOps pipeline. On every push to the repository, the pipeline will:

1. Build the static site.
2. Deploy the output to Azure Static Web Apps.

You can monitor the deployment status in the Azure DevOps portal under your project's Pipelines section.


---
For more information on Azure DevOps and Static Web Apps, see:
- [Azure Static Web Apps Documentation](https://docs.microsoft.com/en-us/azure/static-web-apps/)
- [Azure DevOps Pipelines Documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/)