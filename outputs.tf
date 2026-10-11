output "identity_domains_rules_id" {
  description = "Map of id values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no id are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_domains_rules_active" {
  description = "Map of active values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no active are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.active if v.active != null }
}
output "identity_domains_rules_attribute_sets" {
  description = "Map of attribute_sets values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no attribute_sets are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.attribute_sets if v.attribute_sets != null && length(v.attribute_sets) > 0 }
}
output "identity_domains_rules_attributes" {
  description = "Map of attributes values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no attributes are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "identity_domains_rules_authorization" {
  description = "Map of authorization values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no authorization are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "identity_domains_rules_compartment_ocid" {
  description = "Map of compartment_ocid values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no compartment_ocid are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.compartment_ocid if v.compartment_ocid != null && length(v.compartment_ocid) > 0 }
}
output "identity_domains_rules_condition" {
  description = "Map of condition values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no condition are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.condition if v.condition != null && length(v.condition) > 0 }
}
output "identity_domains_rules_condition_group" {
  description = "Map of condition_group values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no condition_group are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => one(v.condition_group) if v.condition_group != null && length(v.condition_group) > 0 }
}
output "identity_domains_rules_delete_in_progress" {
  description = "Map of delete_in_progress values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no delete_in_progress are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.delete_in_progress if v.delete_in_progress != null }
}
output "identity_domains_rules_description" {
  description = "Map of description values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no description are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "identity_domains_rules_domain_ocid" {
  description = "Map of domain_ocid values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no domain_ocid are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.domain_ocid if v.domain_ocid != null && length(v.domain_ocid) > 0 }
}
output "identity_domains_rules_external_id" {
  description = "Map of external_id values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no external_id are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.external_id if v.external_id != null && length(v.external_id) > 0 }
}
output "identity_domains_rules_idcs_created_by" {
  description = "Map of idcs_created_by values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no idcs_created_by are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.idcs_created_by if v.idcs_created_by != null && length(v.idcs_created_by) > 0 }
}
output "identity_domains_rules_idcs_endpoint" {
  description = "Map of idcs_endpoint values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no idcs_endpoint are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.idcs_endpoint if v.idcs_endpoint != null && length(v.idcs_endpoint) > 0 }
}
output "identity_domains_rules_idcs_last_modified_by" {
  description = "Map of idcs_last_modified_by values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no idcs_last_modified_by are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.idcs_last_modified_by if v.idcs_last_modified_by != null && length(v.idcs_last_modified_by) > 0 }
}
output "identity_domains_rules_idcs_last_upgraded_in_release" {
  description = "Map of idcs_last_upgraded_in_release values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no idcs_last_upgraded_in_release are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.idcs_last_upgraded_in_release if v.idcs_last_upgraded_in_release != null && length(v.idcs_last_upgraded_in_release) > 0 }
}
output "identity_domains_rules_idcs_prevented_operations" {
  description = "Map of idcs_prevented_operations values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no idcs_prevented_operations are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.idcs_prevented_operations if v.idcs_prevented_operations != null && length(v.idcs_prevented_operations) > 0 }
}
output "identity_domains_rules_locked" {
  description = "Map of locked values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no locked are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.locked if v.locked != null }
}
output "identity_domains_rules_meta" {
  description = "Map of meta values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no meta are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "identity_domains_rules_name" {
  description = "Map of name values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no name are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_domains_rules_ocid" {
  description = "Map of ocid values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no ocid are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.ocid if v.ocid != null && length(v.ocid) > 0 }
}
output "identity_domains_rules_policy_type" {
  description = "Map of policy_type values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no policy_type are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => one(v.policy_type) if v.policy_type != null && length(v.policy_type) > 0 }
}
output "identity_domains_rules_resource_type_schema_version" {
  description = "Map of resource_type_schema_version values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no resource_type_schema_version are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.resource_type_schema_version if v.resource_type_schema_version != null && length(v.resource_type_schema_version) > 0 }
}
output "identity_domains_rules_return" {
  description = "Map of return values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no return are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.return if v.return != null && length(v.return) > 0 }
}
output "identity_domains_rules_rule_groovy" {
  description = "Map of rule_groovy values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no rule_groovy are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.rule_groovy if v.rule_groovy != null && length(v.rule_groovy) > 0 }
}
output "identity_domains_rules_schemas" {
  description = "Map of schemas values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no schemas are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.schemas if v.schemas != null && length(v.schemas) > 0 }
}
output "identity_domains_rules_tags" {
  description = "Map of tags values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no tags are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "identity_domains_rules_tenancy_ocid" {
  description = "Map of tenancy_ocid values across all identity_domains_rules, keyed the same as var.identity_domains_rules except keys with no tenancy_ocid are omitted"
  value       = { for k, v in oci_identity_domains_rule.identity_domains_rules : k => v.tenancy_ocid if v.tenancy_ocid != null && length(v.tenancy_ocid) > 0 }
}

