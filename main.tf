resource "openstack_networking_qos_policy_v2" "networking_qos_policy_v2s" {
  for_each = var.networking_qos_policy_v2s

  description = each.value.description
  is_default  = each.value.is_default
  name        = each.value.name
  project_id  = each.value.project_id
  region      = each.value.region
  shared      = each.value.shared
  tags        = each.value.tags
  value_specs = each.value.value_specs

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

