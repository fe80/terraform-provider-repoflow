# Terraform Provider Repoflow

The Terraform provider for [Repoflow](https://www.repoflow.com) stable Api.

## Usage

> [!TIP]
> You also can use `REPOFLOW_BASE_URL` and `REPOFLOW_API_KEY` environment variables

```hcl
provider "repoflow" {
  base_url = "https://repoflow.hosting/api"
  api_key  = "pat_xxxx"
}
```

> [!NOTE]
> Detailed documentation is available on the [Terraform provider registry](https://registry.terraform.io/providers/fe80/repoflow/latest).
