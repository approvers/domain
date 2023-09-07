# domain

approvers.dev の DNS record を terraform で管理.

## 設定する

DNS record を構成するtfファイルは `cloudflare-dns/records.tf` になります.

approvers.dev の DNS record を編集する際は, このファイルを編集してください.

```tf
resource "cloudflare_record" "<resource_name>" {
  name = "<record_name>"
  type = "<record_type>"
  value = "<record_value>"
  proxied = true/false
  zone_id = local.cloudflare_zone_id
}
```

- `<resource_name>` には任意の名前を指定してください. 文字またはアンダースコアから始まり文字, 数字, アンダースコア, ダッシュのみ使用することが出来ます. この名前は他の resource と重複してはいけません.
- `<record_name>` にはレコード名を指定してください.
- `<record_type>` にはレコードタイプを指定します. 使用できる値は以下の通りです.
  - `A`, `AAAA`, `CAA`, `CNAME`, `TXT`, `SRV`, `LOC`, `MX`, `NS`, `SPF`, `CERT`, `DNSKEY`, `DS`, `NAPTR`, `SMIMEA`, `SSHFP`, `TLSA`, `URI`, `PTR`, `HTTPS`, `SVCB`.
- `<record_value>` にはレコード値を指定してください.
- `proxied` は Cloudflare のオリジン保護を受けるかどうか選択できます.
- `zone_id` は `local.cloudflare_zone_id` と指定してください. この値は変更不可です. 変更すると正しく適用できません.
