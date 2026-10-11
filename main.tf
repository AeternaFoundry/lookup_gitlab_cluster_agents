data "gitlab_cluster_agents" "cluster_agents_lookup" {
  for_each = var.cluster_agents_lookup

  project = each.value.project
}

