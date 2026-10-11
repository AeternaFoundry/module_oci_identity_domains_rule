resource "oci_identity_domains_rule" "identity_domains_rules" {
  for_each = var.identity_domains_rules

  condition                    = each.value.condition
  idcs_endpoint                = each.value.idcs_endpoint
  name                         = each.value.name
  schemas                      = each.value.schemas
  active                       = each.value.active
  attribute_sets               = each.value.attribute_sets
  attributes                   = each.value.attributes
  authorization                = each.value.authorization
  description                  = each.value.description
  external_id                  = each.value.external_id
  locked                       = each.value.locked
  ocid                         = each.value.ocid
  resource_type_schema_version = each.value.resource_type_schema_version
  rule_groovy                  = each.value.rule_groovy

  policy_type {
    value = each.value.policy_type.value
  }

  dynamic "return" {
    for_each = each.value.return
    content {
      name          = return.value.name
      return_groovy = return.value.return_groovy
      value         = return.value.value
    }
  }

  dynamic "condition_group" {
    for_each = each.value.condition_group != null ? [each.value.condition_group] : []
    content {
      type  = condition_group.value.type
      value = condition_group.value.value
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

