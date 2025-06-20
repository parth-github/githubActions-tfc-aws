terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.54"
    }
  }

  required_version = ">= 1.3.0"
}

provider "tfe" {
  token = var.tfc_token
}

resource "tfe_workspace" "lambda" {
  name              = "githubActions-tfc-aws"
  organization      = var.tfc_organization
  description       = "Workspace for AWS Lambda deployments using GitHub Actions"
  # execution_mode    = "local"  # Removed due to deprecation
  working_directory = "infra"
  terraform_version = "1.6.6"
}
