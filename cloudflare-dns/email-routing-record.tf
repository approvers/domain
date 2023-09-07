# MX record は冗長なので別tfファイルに

resource "cloudflare_record" "mx-99" {
  name     = "approvers.dev"
  type     = "MX"
  priority = 99
  zone_id  = local.cloudflare_zone_id
  value    = "route1.mx.cloudflare.net"
}

resource "cloudflare_record" "mx-41" {
  name     = "approvers.dev"
  type     = "MX"
  priority = 41
  zone_id  = local.cloudflare_zone_id
  value    = "route2.mx.cloudflare.net"
}

resource "cloudflare_record" "mx-61" {
  name     = "approvers.dev"
  type     = "MX"
  priority = 61
  zone_id  = local.cloudflare_zone_id
  value    = "route3.mx.cloudflare.net"
}

resource "cloudflare_record" "TXT" {
  name     = "approvers.dev"
  type     = "TXT"
  priority = 61
  zone_id  = local.cloudflare_zone_id
  value    = "v=spf1 include:_spf.mx.cloudflare.net ~all"
}
