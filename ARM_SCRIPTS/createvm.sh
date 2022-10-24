az group create --name mynewvm-rg --location centralindia

az deployment group create --name newvmdemo --resource-group mynewvm-rg --template-file vmtemplate.json