output "repository_pull_requests_lookup_id" {
  description = "Map of id values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_pull_requests_lookup_base_ref" {
  description = "Map of base_ref values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.base_ref if v.base_ref != null && length(v.base_ref) > 0 }
}
output "repository_pull_requests_lookup_base_repository" {
  description = "Map of base_repository values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.base_repository if v.base_repository != null && length(v.base_repository) > 0 }
}
output "repository_pull_requests_lookup_head_ref" {
  description = "Map of head_ref values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.head_ref if v.head_ref != null && length(v.head_ref) > 0 }
}
output "repository_pull_requests_lookup_owner" {
  description = "Map of owner values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "repository_pull_requests_lookup_results" {
  description = "Map of results values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}
output "repository_pull_requests_lookup_sort_by" {
  description = "Map of sort_by values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.sort_by if v.sort_by != null && length(v.sort_by) > 0 }
}
output "repository_pull_requests_lookup_sort_direction" {
  description = "Map of sort_direction values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.sort_direction if v.sort_direction != null && length(v.sort_direction) > 0 }
}
output "repository_pull_requests_lookup_state" {
  description = "Map of state values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

