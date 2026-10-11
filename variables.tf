variable "identity_domains_rules" {
  description = <<EOT
Map of identity_domains_rules, attributes below
Required:
    - condition
    - idcs_endpoint
    - name
    - schemas
    - policy_type (block):
        - value (required)
    - return (block):
        - name (required)
        - return_groovy (optional)
        - value (required)
Optional:
    - active
    - attribute_sets
    - attributes
    - authorization
    - description
    - external_id
    - locked
    - ocid
    - resource_type_schema_version
    - rule_groovy
    - condition_group (block):
        - type (required)
        - value (optional)
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    condition                    = string
    idcs_endpoint                = string
    name                         = string
    schemas                      = list(string)
    active                       = optional(bool)
    attribute_sets               = optional(list(string))
    attributes                   = optional(string)
    authorization                = optional(string)
    description                  = optional(string)
    external_id                  = optional(string)
    locked                       = optional(bool)
    ocid                         = optional(string)
    resource_type_schema_version = optional(string)
    rule_groovy                  = optional(string)
    policy_type = object({
      value = string
    })
    return = list(object({
      name          = string
      return_groovy = optional(string)
      value         = string
    }))
    condition_group = optional(object({
      type  = string
      value = optional(string)
    }))
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identity_domains_rules : (
        length(v.return) >= 1
      )
    ])
    error_message = "Each return list must contain at least 1 items"
  }
}

