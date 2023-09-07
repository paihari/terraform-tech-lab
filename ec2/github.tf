terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.34.0"
    }
  }
}

provider "github" {
  # Configuration options
  token = "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"

}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}