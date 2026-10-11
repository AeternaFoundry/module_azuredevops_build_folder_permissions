resource "azuredevops_build_folder_permissions" "build_folder_permissions" {
  for_each = var.build_folder_permissions

  path        = each.value.path
  permissions = each.value.permissions
  principal   = each.value.principal
  project_id  = each.value.project_id
  replace     = each.value.replace

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

