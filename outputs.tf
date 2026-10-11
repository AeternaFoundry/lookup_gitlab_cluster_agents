output "cluster_agents_lookup_id" {
  description = "Map of id values across all cluster_agents_lookup, keyed the same as var.cluster_agents_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_cluster_agents.cluster_agents_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_agents_lookup_cluster_agents" {
  description = "Map of cluster_agents values across all cluster_agents_lookup, keyed the same as var.cluster_agents_lookup except keys with no cluster_agents are omitted"
  value       = { for k, v in data.gitlab_cluster_agents.cluster_agents_lookup : k => v.cluster_agents if v.cluster_agents != null && length(v.cluster_agents) > 0 }
}
output "cluster_agents_lookup_project" {
  description = "Map of project values across all cluster_agents_lookup, keyed the same as var.cluster_agents_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_cluster_agents.cluster_agents_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

