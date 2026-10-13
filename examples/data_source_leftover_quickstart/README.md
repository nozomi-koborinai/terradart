# Data-source leftover quickstart

Coverage stack for the remaining GA data sources. Synth only; CI validates the output against the provider.

```bash
export GCP_PROJECT_ID=your-project-id
terradart synth
```

`lib/main.dart` is generated. Regenerate it after a wrap with
`dart tool/coverage_stack.dart --lane google` from the repository root,
which also validates it against the provider; the placeholder values that
satisfy provider validators live in `tool/coverage_dummies/google.yaml`.

## Before you apply

The lookups target dummy ids and would fail on a live project. **Never apply.**
