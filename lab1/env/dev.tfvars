env_name       = "dev"
instance_count = 7
enabled        = true
region         = ["westus", "eastus"]
region_count = {
  "westus" = 3
  "eastus" = 5
}
region_set = ["westus", "eastus"]
sku_setting = {
  kind = "a"
  tier = "dev"
}
#api_key = "fuo"







#terraform apply -var-file ./env/dev.tfvars
#(powershell) $env:TF_VAR_api_key = "foo"  -> to pass val of variable api key as environmnt var

# (bash) echo $TF_VAR_api_key
# export TF_VAR_api_key=foo

# order: env var <- default terraform.tfvars <- (vin.terraform.tfvars) <- -var & -var-file <- manually input
#high prevedence of manually enter input -var foo=blue
# use env var for secret, config
# use default terraform.tfvars file for constant val
# custom tfvars like dev.tfvars, test.tfvars : for different val
