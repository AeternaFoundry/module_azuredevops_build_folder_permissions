variable "build_folder_permissions" {
  description = <<EOT
Map of build_folder_permissions, attributes below
Required:
    - path
    - permissions
    - principal
    - project_id
Optional:
    - replace
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    path        = string
    permissions = map(string)
    principal   = string
    project_id  = string
    replace     = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.build_folder_permissions : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

