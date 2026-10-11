variable "repository_pull_requests_lookup" {
  description = <<EOT
Map of repository_pull_requests_lookup, attributes below
Required:
    - base_repository
Optional:
    - base_ref
    - head_ref
    - owner
    - sort_by
    - sort_direction
    - state
EOT

  type = map(object({
    base_repository = string
    base_ref        = optional(string)
    head_ref        = optional(string)
    owner           = optional(string)
    sort_by         = optional(string)
    sort_direction  = optional(string)
    state           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.repository_pull_requests_lookup : (
        v.sort_by == null || (contains(["created", "updated", "popularity", "long-running"], v.sort_by))
      )
    ])
    error_message = "must be one of: created, updated, popularity, long-running"
  }
  validation {
    condition = alltrue([
      for k, v in var.repository_pull_requests_lookup : (
        v.sort_direction == null || (contains(["asc", "desc"], v.sort_direction))
      )
    ])
    error_message = "must be one of: asc, desc"
  }
  validation {
    condition = alltrue([
      for k, v in var.repository_pull_requests_lookup : (
        v.state == null || (contains(["open", "closed", "all"], v.state))
      )
    ])
    error_message = "must be one of: open, closed, all"
  }
}

