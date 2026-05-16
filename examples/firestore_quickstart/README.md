# Firestore quickstart

End-to-end terradart example for a Cloud Firestore Native-mode database with point-in-time recovery, delete protection, and one composite index suitable for per-user message timelines.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Firestore API enabled, and credentials configured (`gcloud auth application-default login`).
- The project must NOT already have a `(default)` Firestore database in a different mode -- type is forced-replace.

## Layout

```
examples/firestore_quickstart/
├── lib/main.dart        # MessagesStack: database + composite index
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- `google_firestore_database.default` -- the project's `(default)` Native-mode database in `asia-northeast1`, with:
  - `point_in_time_recovery_enablement = POINT_IN_TIME_RECOVERY_ENABLED` (7-day PITR window).
  - `delete_protection_state = DELETE_PROTECTION_ENABLED` (terraform destroy will refuse until you flip this).
  - `concurrency_mode = OPTIMISTIC` (Native mode default).
- `google_firestore_index.messages_by_user_time` -- composite index on the `messages` collection ordered by `user_id ASC, created_at DESC`, modeled via the sealed `IndexFieldSpec` dispatch (`IndexFieldOrder(FirestoreIndexOrder.ascending|descending)`).

The sealed `IndexFieldSpec` keeps the Firestore index `order` / `array_config` / `search_config` / `vector_config` mutual exclusion honest at the type level — each `IndexField.spec` is exactly one of `IndexFieldOrder`, `IndexFieldArrayConfig`, `IndexFieldSearchConfig`, or `IndexFieldVectorConfig`.
