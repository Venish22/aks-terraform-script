#storage_account_name: The name of the Azure Storage account.
#container_name: The name of the blob container.
#key: The name of the state store file to be created.
#access_key: The storage access key.

terraform {
    backend "azurerm" {
        resource_group_name  = "ventfstate"
        storage_account_name = "<copy and paste the storage_acct_name created>"
        container_name       = "ventfstate"
        key                  = "terraform.tfstate"
    }
}

# >terraform init
# >terraform plan
# >terrafrom validate
# >terraform apply