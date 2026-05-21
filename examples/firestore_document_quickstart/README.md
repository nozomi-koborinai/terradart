# firestore_document_quickstart

Quickstart example: a single `feature_flags/dark_mode` document and a
single `pricing_tiers/pro` document seeded into the `(default)`
Firestore Native-mode database via `google_firestore_document` and
the `FirestoreFields.encode` helper.

For a more complete cookbook recipe (4 collections, 11 documents,
composite index, daily backup schedule), see
`terradart-cookbook/recipes/firestore-seeded-data/`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0

## Layout

```
examples/firestore_document_quickstart/
├── lib/main.dart        # FirestoreDocumentQuickstart stack
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Run

```bash
export GCP_PROJECT_ID=my-project
dart pub get
dart run bin/infra.dart    # synth to tf-out/main.tf.json
cd tf-out
terraform init -backend=false
terraform validate
```

CI's `terraform validate (firestore_document)` matrix entry covers this
synth + validate workflow on every PR.

## What gets created

- `google_project_service.api_firestore` -- enables `firestore.googleapis.com`.
- `google_firestore_database.default` -- the project's `(default)` Native-mode
  database in `asia-northeast1`, with delete protection disabled.
- `google_firestore_document.flag_dark_mode` -- `feature_flags/dark_mode`
  document with `enabled: true` and `rollout_pct: 100`.
- `google_firestore_document.tier_pro` -- `pricing_tiers/pro` document with
  label, monthly price, and a string array of features.
