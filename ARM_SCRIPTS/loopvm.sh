#1/bin/bash

az group create --name loopvm-rg --location centralindia

for i in 0 1 2
do
    vmname="vm100$i"
    nicname="nic100$i"
    ipname="ip100$i"
    depgroup="cvm100$i"

    az deployment group create --name $depgroup --resource-group loopvm-rg --template-file loopvmtemplate.json --parameters nicName=$nicname vmName=$vmname publicIpName=$ipname

done