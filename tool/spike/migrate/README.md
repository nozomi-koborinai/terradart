# HCL → Dart migrator spike (issue #80, Phase 0)

Throwaway evidence for the design of `terradart-migrate`
([#80](https://github.com/nozomi-koborinai/terradart/issues/80)). Not product
code: nothing here is wired into `agent_verify.sh` or CI beyond the ordinary
`dart analyze tool/` pass, and the manifest is hand-written for the 11 catalog
types `examples/pubsub_quickstart` uses.

## What it proves

`synth(migrate(synth(S))) == synth(S)` — a Terraform JSON module produced by
TerraDart can be turned back into a Dart `Stack` that synthesizes the very
same `main.tf.json` (deep-equal, and with the same resource order). That
round-trip is the correctness oracle the migrator design builds its CI gate on.

The emitter is generic; only the manifest (`Slot` / `Entry` tables at the top
of `migrate_spike.dart`) is hand-written. It exercises the value classification
the design specifies: literals, single references (`TfArg.ref(x.getter)`,
`.interpolation` inside list literals), raw template expressions kept as raw
Dart strings, enum members, nested helper classes, `depends_on`, and `output`
blocks mapped to `addExport`.

## Run

From the repository root (Dart SDK on `PATH`, `dart pub get` done):

```sh
cd examples/pubsub_quickstart && GCP_PROJECT_ID=ci-test-project-id dart run bin/infra.dart && cd -
dart run tool/spike/migrate/migrate_spike.dart    # writes generated/orders_stack_migrated.dart
dart run tool/spike/migrate/roundtrip.dart        # ROUND-TRIP OK: ... identical tf.json
dart run tool/spike/migrate/sensitive_test.dart   # core's sensitive / variable checks
```

`generated/orders_stack_migrated.dart` is committed so the round-trip driver
compiles without the first step; rerun the spike to refresh it.

## Findings recorded in the design

- `sensitive_test.dart`: a top-level sensitive field rejects any
  `TfArgLiteral` (even a `${var.x}` string); `TfArg.variable` passes once
  declared; a `${var.x}` string inside a nested literal passes; a raw
  `${var.undeclared}` string is not caught by synth's variable check, so the
  migrator must extract variable names from raw expressions itself.
- Literal strings containing `${` or `%{` must be escaped (`$${`, `%%{`)
  because every tf.json string is a template.
- Terraform output blocks become `ResourceIdExport(..., emitTerraformOutput:
  true)`, which also yields Dart constants, so the generated Stack sets
  `setAppExportsOutputPath`.
