output "repository_pull_requests_lookup_id" {
  description = "Map of id values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.id }
}
output "repository_pull_requests_lookup_base_ref" {
  description = "Map of base_ref values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.base_ref }
}
output "repository_pull_requests_lookup_base_repository" {
  description = "Map of base_repository values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.base_repository }
}
output "repository_pull_requests_lookup_head_ref" {
  description = "Map of head_ref values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.head_ref }
}
output "repository_pull_requests_lookup_owner" {
  description = "Map of owner values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.owner }
}
output "repository_pull_requests_lookup_results" {
  description = "Map of results values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.results }
}
output "repository_pull_requests_lookup_sort_by" {
  description = "Map of sort_by values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.sort_by }
}
output "repository_pull_requests_lookup_sort_direction" {
  description = "Map of sort_direction values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.sort_direction }
}
output "repository_pull_requests_lookup_state" {
  description = "Map of state values across all repository_pull_requests_lookup, keyed the same as var.repository_pull_requests_lookup"
  value       = { for k, v in data.github_repository_pull_requests.repository_pull_requests_lookup : k => v.state }
}

