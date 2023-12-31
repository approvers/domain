resource "cloudflare_record" "alpha-cnh-vps-A" {
  name    = "alpha.cnh.vps"
  proxied = false
  type    = "A"
  value   = "160.251.6.120"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "alpha-cnh-vps-AAAA" {
  name    = "alpha.cnh.vps"
  proxied = false
  type    = "AAAA"
  value   = "2400:8500:1801:449:160:251:6:120"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "site" {
  name    = "approvers.dev"
  proxied = true
  type    = "CNAME"
  value   = "approvers.pages.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "site-canary" {
  name    = "canary"
  proxied = true
  type    = "CNAME"
  value   = "approvers.pages.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "containers2" {
  name    = "containers2"
  proxied = false
  type    = "CNAME"
  value   = "alpha.cnh.vps.approvers.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "edit-members" {
  name    = "edit.members"
  proxied = true
  type    = "CNAME"
  value   = "members-edit.pages.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "haracho" {
  name    = "haracho"
  proxied = true
  type    = "CNAME"
  value   = "oreorebot2.pages.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "google-search-console" {
  name    = "approvers.dev"
  proxied = false
  type    = "TXT"
  value   = "google-site-verification=ztgQg-5n8JOc6-QgCMbhTnE4Y7l7bkIrV8y4IfV910U"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "github-challenge" {
  name    = "_github-challenge-approvers"
  proxied = false
  type    = "TXT"
  value   = "78c0bfbf92"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "msky-fqdn" {
  name    = "msky.approvers.dev"
  proxied = false
  type    = "CNAME"
  value   = "mi.ext.misskey-idime.gcp.pulsate.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "ichiyo-ai-docs" {
  name    = "ichiyoai"
  proxied = true
  type    = "CNAME"
  value   = "approvers.github.io"
  zone_id = local.cloudflare_zone_id
}
