# Cloudflare leftover quickstart

Coverage stack for leftover `terradart_cloudflare` factories at pin
`5.23.0` that are not in [`cloudflare_dns_quickstart`](../cloudflare_dns_quickstart).
Dummy constructor values. Synth + `terraform validate` only. **Never apply.**

```bash
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

Factories the leftover dummy cannot satisfy (provider enums or nested JSON)
are listed in [`tool/example_debt.yaml`](../../tool/example_debt.yaml).
