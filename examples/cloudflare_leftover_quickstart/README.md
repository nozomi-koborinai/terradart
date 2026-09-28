# Cloudflare leftover quickstart

Coverage stack for leftover `terradart_cloudflare` factories at the current
pin that are not in [`cloudflare_dns_quickstart`](../cloudflare_dns_quickstart).
Dummy constructor values. Synth + `terraform validate` only. **Never apply.**

```bash
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

Factories no constructor value can take through `terraform validate`
(a wrapper shape mismatch or a provider bug) are listed with the error in [`tool/example_debt.yaml`](../../tool/example_debt.yaml).

## Before you apply

Dummy constructor values against a Cloudflare account that does not exist. **Never apply.**
