data "github_repository_pull_requests" "repository_pull_requests_lookup" {
  for_each = var.repository_pull_requests_lookup

  base_repository = each.value.base_repository
  base_ref        = each.value.base_ref
  head_ref        = each.value.head_ref
  owner           = each.value.owner
  sort_by         = each.value.sort_by
  sort_direction  = each.value.sort_direction
  state           = each.value.state
}

