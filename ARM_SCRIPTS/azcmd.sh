#1/bin/bash

az group create -n storage-group-rg -l southindia

az deployment group create --name createstorageaccount --resource-group storage-group-rg --template-file "C:\Users\004054\.vscode\storage\storageacc.json" --parameters OrgName=myorg4

#az deployment group create  --resource-group mygroup-rg1 --template-file newstorageacc1.json --parameters Environment=dev

#az deployment group create --name createstorageaccount --resource-group storage-group-rg1 --template-file storage-template.json --parameters parameters.json
