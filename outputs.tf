output "build_folder_permissions_id" {
  description = "Map of id values across all build_folder_permissions, keyed the same as var.build_folder_permissions"
  value       = { for k, v in azuredevops_build_folder_permissions.build_folder_permissions : k => v.id }
}
output "build_folder_permissions_path" {
  description = "Map of path values across all build_folder_permissions, keyed the same as var.build_folder_permissions"
  value       = { for k, v in azuredevops_build_folder_permissions.build_folder_permissions : k => v.path }
}
output "build_folder_permissions_permissions" {
  description = "Map of permissions values across all build_folder_permissions, keyed the same as var.build_folder_permissions"
  value       = { for k, v in azuredevops_build_folder_permissions.build_folder_permissions : k => v.permissions }
}
output "build_folder_permissions_principal" {
  description = "Map of principal values across all build_folder_permissions, keyed the same as var.build_folder_permissions"
  value       = { for k, v in azuredevops_build_folder_permissions.build_folder_permissions : k => v.principal }
}
output "build_folder_permissions_project_id" {
  description = "Map of project_id values across all build_folder_permissions, keyed the same as var.build_folder_permissions"
  value       = { for k, v in azuredevops_build_folder_permissions.build_folder_permissions : k => v.project_id }
}
output "build_folder_permissions_replace" {
  description = "Map of replace values across all build_folder_permissions, keyed the same as var.build_folder_permissions"
  value       = { for k, v in azuredevops_build_folder_permissions.build_folder_permissions : k => v.replace }
}

