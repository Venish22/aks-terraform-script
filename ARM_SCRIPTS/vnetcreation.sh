
az group create -n ARM-2 -l centralindia

az deployment group create --name createvnet --resource-group ARM-2 --template-file "C:\Users\004054\.vscode\Network\arm-template.json" --parameters "C:\Users\004054\.vscode\Network\arm-template-parameters.json"