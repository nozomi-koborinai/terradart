# AWS leftover quickstart

Coverage stack for leftover `terradart_aws` factories at pin `6.66.0` that are
not in [`aws_lambda_quickstart`](../aws_lambda_quickstart). Dummy constructor
values. Synth + `terraform validate` only. **Never apply.**

```bash
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```

`lib/main.dart` is generated. Regenerate it after a wrap with
`dart tool/generate_aws_leftover_example.dart` from the repository root; the
placeholder values that satisfy provider validators live in that tool's tables.

## Before you apply

Dummy constructor values against an AWS account that does not exist. **Never apply.**
