# Cloudflare leftover quickstart

Coverage stack for leftover `terradart_cloudflare` factories at the current
pin that are not in [`cloudflare_dns_quickstart`](../cloudflare_dns_quickstart).
Dummy constructor values. Synth only; CI validates the output against the provider. **Never apply.**

```bash
terradart synth
```

`lib/main.dart` is generated. Regenerate it after a wrap with
`dart tool/coverage_stack.dart --lane cloudflare` from the repository root,
which also validates it against the provider; the placeholder values that
satisfy provider validators live in `tool/coverage_dummies/cloudflare.yaml`.

Factories no constructor value can take through provider validation
(a wrapper shape mismatch or a provider bug) are listed with the error in [`tool/example_debt.yaml`](../../tool/example_debt.yaml).

## Before you apply

Dummy constructor values against a Cloudflare account that does not exist. **Never apply.**
