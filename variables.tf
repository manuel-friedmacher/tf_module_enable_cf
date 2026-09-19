variable "subaccount_id" {
  description = "ID of the subaccount where Cloud Foundry will be enabled."
  type        = string
  validation {
    condition     = can(regex("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$", var.subaccount_id))
    error_message = "subaccount_id must be a valid UUID."
  }
}

variable "subaccount_subdomain" {
  description = "Lowercase DNS subdomain of the subaccount used to name Cloud Foundry resources."
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$", var.subaccount_subdomain))
    error_message = "subaccount_subdomain must be a lowercase DNS label between 1 and 63 characters."
  }
}

variable "cf_region" {
  description = "Cloud Foundry landscape region for the environment instance."
  type        = string
  validation {
    condition     = contains(["cf-eu10-005", "cf-eu20-002"], var.cf_region)
    error_message = "cf_region must be one of: cf-eu10-005, cf-eu20-002."
  }
}
