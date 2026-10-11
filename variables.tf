variable "cluster_agents_lookup" {
  description = <<EOT
Map of cluster_agents_lookup, attributes below
Required:
    - project
EOT

  type = map(object({
    project = string
  }))
}

