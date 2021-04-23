# Start build loop with nodemon:
nodemon --exec "main.bicep" -e bicep

# Login to Azure:
# az login
Login-AzAccount

# List subscriptions:
# az account list -o table
Get-AzSubscription

# *Explicitly* select your working context:
# az account set --subscription AzureDev
Select-AzSubscription -Subscription AzureDev

# Show current context:
# az account show -o table
Get-AzContext

# Execute deployment:
.\deploy.ps1 -ResourceGroupName "rg-bicep-webinar"
