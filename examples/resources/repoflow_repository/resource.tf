resource "repoflow_workspace" "example" {
  name = "example"
}

resource "repoflow_repository" "local" {
  name            = "local-example"
  workspace       = repoflow_workspace.example.id
  repository_type = "local"
  package_type    = "npm"
}

resource "repoflow_repository" "virtual" {
  name                 = "virtual-example"
  workspace            = repoflow_workspace.example.id
  repository_type      = "virtual"
  package_type         = "npm"
  child_repository_ids = [repoflow_repository.local.repository_id]
}

resource "repoflow_repository" "remote" {
  name                  = "remote-example"
  workspace             = repoflow_workspace.example.id
  repository_type       = "remote"
  package_type          = "npm"
  remote_repository_url = "https://registry.npmjs.org"
}
