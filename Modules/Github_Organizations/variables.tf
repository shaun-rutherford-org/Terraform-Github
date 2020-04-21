variable "users" {
  description = "Users to invite to the selected organization and their role"
  default     = {}
}

variable "webhooks" {
  description = "Organization webhooks"
  default     = {}
}

variable "github_teams" {
  description = "Github Teams variable"
  default     = {}
}

variable "github_teams_nested" {
  default = {}
}