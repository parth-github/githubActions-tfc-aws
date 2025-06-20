variable "tfc_token" {
  description = "Terraform Cloud API token"
  type        = string
  sensitive   = true
}

variable "tfc_organization" {
  description = "Terraform Cloud organization name"
  type        = string
  default = "smriti-aws"
}
variable "tfc_workspace_name" {
  description = "Name of the Terraform Cloud workspace"
  type        = string
  default     = "githubActions-tfc-aws"
}