variable keyvaults {
  default = {}
}
variable keyvault_key {
  default = null
}
variable keyvault_id {
  default = null
}

variable access_policies {
  validation {
    condition     = length(var.access_policies) <= 16
    error_message = "A maximun of 16 access policies can be set."
  }
}

variable client_config {
  description = "Client configuration object (see module README.md)."
}
variable azuread_groups {
  default = {}
}
variable azuread_apps {
  default = {}
}
variable managed_identities {
  default = {}
}
variable mssql_managed_instances {
  default = {}
}
variable mssql_managed_instances_secondary {
  default = {}
}