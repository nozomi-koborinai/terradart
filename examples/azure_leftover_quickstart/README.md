# Azure leftover quickstart

Coverage stack for every `terradart_azure` factory at the current pin.
Dummy constructor values. Synth only; CI validates the output against the
provider. **Never apply.**

```bash
terradart synth
```

`lib/main.dart` is generated. Regenerate it after a wrap with
`dart tool/coverage_stack.dart --lane azure` from the repository root, which
also validates it against the provider; the placeholder values that satisfy
provider validators live in `tool/coverage_dummies/azure.yaml`.

## Before you apply

Dummy constructor values against an Azure subscription that does not exist. **Never apply.**
