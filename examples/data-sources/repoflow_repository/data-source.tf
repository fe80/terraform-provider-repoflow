data "repoflow_workspace" "example" {
  name = "example"
}

data "repoflow_repository" "example" {
  name      = "example"
  workspace = repoflow_workspace.example.id
}
