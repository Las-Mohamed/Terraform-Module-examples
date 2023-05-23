output "ResourceGroup" {
  value = module.ResourceGroup.rg_name_out
}

output "StorageAccount" {
  value = module.StorageAccount.stg_act_name_out
}