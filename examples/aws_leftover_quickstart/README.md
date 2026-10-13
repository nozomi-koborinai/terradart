# AWS leftover quickstart

Coverage stack for leftover `terradart_aws` factories at the current pin that
are not in the other AWS quickstarts ([`aws_lambda_quickstart`](../aws_lambda_quickstart),
[`aws_serverless_api_quickstart`](../aws_serverless_api_quickstart),
[`aws_static_site_quickstart`](../aws_static_site_quickstart),
[`aws_ecs_express_quickstart`](../aws_ecs_express_quickstart)). Dummy constructor
values. Synth only; CI validates the output against the provider. **Never apply.**

```bash
terradart synth
```

`lib/main.dart` is generated. Regenerate it after a wrap with
`dart tool/coverage_stack.dart --lane aws` from the repository root, which
also validates it against the provider; the placeholder values that satisfy
provider validators live in `tool/coverage_dummies/aws.yaml`.

## Before you apply

Dummy constructor values against an AWS account that does not exist. **Never apply.**
