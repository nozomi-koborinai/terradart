# Appwrite leftover quickstart

Coverage stack for `terradart_appwrite` factories that
[`appwrite_quickstart`](../appwrite_quickstart) does not construct, at the
current pin. Dummy constructor values. Synth only; CI validates the output
against the provider. **Never apply.**

When `appwrite_quickstart` covers every factory, the stack declares only the
provider. A factory a later pin adds appears here once the weekly schema bump
regenerates the stack.

```bash
terradart synth
```

`lib/main.dart` is generated. Regenerate it after a wrap with
`dart tool/coverage_stack.dart --lane appwrite` from the repository root,
which also validates it against the provider; the placeholder values that
satisfy provider validators live in `tool/coverage_dummies/appwrite.yaml`.

Factories no constructor value can take through provider validation, or that
the generator cannot construct, are listed with the reason in
[`tool/example_debt.yaml`](../../tool/example_debt.yaml).

## Before you apply

Dummy constructor values against an Appwrite project that does not exist. **Never apply.**
