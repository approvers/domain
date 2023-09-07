terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

locals {
  # Note: zone_id は非シークレット
  # cf. https://github.com/cloudflare/wrangler-legacy/issues/209#issuecomment-541654484
  cloudflare_zone_id = "68c334c0a3eb8c2cee831179805e4484"
}
