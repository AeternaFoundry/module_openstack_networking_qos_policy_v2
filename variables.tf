variable "networking_qos_policy_v2s" {
  description = <<EOT
Map of networking_qos_policy_v2s, attributes below
Optional:
    - description
    - is_default
    - name
    - project_id
    - region
    - shared
    - tags
    - value_specs
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    description = optional(string)
    is_default  = optional(bool)
    name        = optional(string)
    project_id  = optional(string)
    region      = optional(string)
    shared      = optional(bool)
    tags        = optional(set(string))
    value_specs = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

