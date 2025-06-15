# Wisdom Pet Medicine

A sample ASP.NET Core Razor Pages application for managing pet, owner, and breed information. This project uses Entity Framework Core and Azure Blob Storage.

## Features

- Manage pets, owners, breeds, and species
- Razor Pages UI
- Entity Framework Core with SQL Server
- Azure Blob Storage integration

## Prerequisites

- [.NET 7 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/7.0)
- Azure Subscription
- (Optional) SQL Server for production

## Local Development

1. **Clone the repository:**
   ```powershell
   git clone <your-repo-url>
   cd wisdom-pet-medicine/src/Wpm.Web
   ```

2. **Run the application:**
   ```powershell
   dotnet run
   ```
   The app will be available at `https://localhost:5001` or `http://localhost:5000`.

3. **Configuration:**
   - Update `appsettings.json` for production settings.
   - For development, use `appsettings.Development.json`.

## Deploying to Azure Web App

1. **Create an Azure Web App:**
   - In the Azure Portal, create a new Web App (choose .NET 7 runtime).

2. **Configure Connection Strings:**
   - In the Azure Portal, go to your Web App > Configuration.
   - Add your SQL Server connection string as `DefaultConnection`.
   - Add your Azure Blob Storage connection string as needed.

3. **Publish the App:**
   - In your project directory:
     ```powershell
     dotnet publish -c Release
     ```
   - Deploy the contents of the `bin\Release\net7.0\publish` folder to Azure (via FTP, VS Code Azure extension, or GitHub Actions).

4. **App Settings in Azure:**
   - Set environment variables or app settings in Azure Portal as needed (e.g., `ASPNETCORE_ENVIRONMENT`, connection strings).

5. **Browse to your site:**
   - Visit the Azure Web App URL to see your deployed application.
