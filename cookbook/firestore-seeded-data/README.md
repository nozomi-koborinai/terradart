# firestore-seeded-data

> **Status:** Verified on terradart v0.11.0. 15-resource Stack (default Firestore database + 11 documents across 4 collections + composite index + daily backup schedule). See [FRICTIONS.md](FRICTIONS.md) for dogfood findings.

A Cloud Firestore master-data seeding recipe. Demonstrates how to manage **small fixed master-data sets** (feature flags, pricing tiers, lookup tables, regional config) via IaC, with the new `GoogleFirestoreDocument` resource + `FirestoreFields.encode(Map)` helper introduced in terradart v0.10.0.

## What this recipe demonstrates

- `google_firestore_database` — the singleton `(default)` Native-mode database in `asia-northeast1`.
- `google_firestore_document` × 11 across 4 collections:
  - **feature_flags** (3) — `dark_mode`, `new_checkout`, `beta_invites`. Booleans + integers + lists + nested maps.
  - **pricing_tiers** (3) — `free`, `pro`, `enterprise`. Strings + integers + lists. `enterprise` includes a `FirestoreReference` to a `billing_profiles/annual` document (note: that doc is referenced but not created here — the helper does not validate target existence).
  - **i18n** (3) — `en`, `ja`, `ko`. Unicode strings + nested maps.
  - **regions** (2) — `us`, `jp`. `FirestoreGeoPoint` lat/lon for office locations.
- `google_firestore_index` — composite index on `pricing_tiers` (`monthly_usd ASC, label ASC`).
- `google_firestore_backup_schedule` — daily backups, 7-day retention.

## Why master data in IaC

- **Reproducibility**: spin up `dev` / `staging` / `prod` projects with identical master data via `terraform apply`.
- **Audit-via-PR**: master-data changes go through code review, not manual console clicks.
- **Env parity**: when you rebuild a project for any reason, master data is recreated by Terraform alongside the database.

## When NOT to use this pattern

For **production-scale** Firestore collections (1000s of documents, frequent app-side writes, transactional data), prefer a separate seed script using the Firebase Admin SDK. IaC ownership of frequently-mutating collections causes Terraform state to diverge from Firestore reality.

This recipe demonstrates the **opposite** end of the spectrum: a small fixed set of documents, infrequently changed via PR review, naturally fitting IaC.

See [terradart_google CHANGELOG `0.10.0` § Supersedes 0.3.0-dev note](https://pub.dev/packages/terradart_google/changelog#0100) for the rationale behind v0.10.0 reversing the original "not curated" decision.

## Prerequisites

- Terraform 1.11+
- `gcloud auth application-default login` with `roles/datastore.owner` on the target project
- A GCP project (e.g., `terradart-validate`). The default `(default)` Firestore database must NOT already exist (Firestore creates one automatically the first time the API is enabled — if `(default)` already exists, see "Recovery" below).

## Run

```bash
export GCP_PROJECT_ID=my-project-id
dart pub get
dart run bin/infra.dart        # → tf-out/main.tf.json
cd tf-out
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

Expected apply duration: **5-10 minutes**, dominated by the composite index. Documents themselves create in seconds (Terraform fans them out in parallel — all 11 typically finish within ~15s total). The `(default)` database takes ~12s. The composite index on `pricing_tiers` is the long pole and takes 5-6 minutes to provision (Firestore index workers run asynchronously — this is normal and well-documented). If you don't need the index ready immediately (e.g. CI synth-and-validate workflows), consider adding `skip_wait: true` on the `GoogleFirestoreIndex` resource so Terraform returns as soon as the API accepts the request.

## Smoke test

`gcloud firestore` does NOT expose document-level commands (only databases / backups / locations / operations). To verify the seeded documents, use the Firestore REST API via `curl` + an ADC access token:

```bash
TOKEN=$(gcloud auth application-default print-access-token)
for col in feature_flags pricing_tiers i18n regions; do
  count=$(curl -s -H "Authorization: Bearer $TOKEN" \
    "https://firestore.googleapis.com/v1/projects/$GCP_PROJECT_ID/databases/(default)/documents/$col" \
    | python3 -c "import json,sys; print(len(json.load(sys.stdin).get('documents',[])))")
  echo "$col: $count"
done
```

Expected counts: `feature_flags: 3`, `pricing_tiers: 3`, `i18n: 3`, `regions: 2`.

To inspect a specific document's encoded field types:

```bash
curl -s -H "Authorization: Bearer $TOKEN" \
  "https://firestore.googleapis.com/v1/projects/$GCP_PROJECT_ID/databases/(default)/documents/feature_flags/dark_mode" \
  | python3 -m json.tool
```

Expect `enabled.booleanValue: true`, `rollout_pct.integerValue: "100"` (string-encoded for 64-bit precision), and `last_updated.timestampValue: "2026-05-22T00:00:00Z"`.

Alternatively, the Firebase / Firestore console: open the project, switch to Firestore Data, confirm the 4 collections with their documents and field types (`enabled` is `boolean`, `rollout_pct` is `number`, `office_location` is `geopoint`).

## Destroy

```bash
cd tf-out
terraform destroy
```

Expected: `Destroy complete! Resources: 15 destroyed.` in a few seconds. The `(default)` database deletes in ~2s.

The recipe sets `deletionPolicy: TfArg.literal('DELETE')` on the database resource — without it, the provider's documented default (`ABANDON`) leaves the database in place on destroy. See [`FRICTIONS.md`](FRICTIONS.md) §P1.

## Recovery: `(default)` database already exists

If the project's `(default)` database was created previously (e.g., by manually enabling the Firestore API), `terraform apply` will fail with "already exists" on the `google_firestore_database` resource. Recovery:

```bash
cd tf-out
terraform import google_firestore_database.default \
  "projects/$GCP_PROJECT_ID/databases/(default)"
terraform apply tfplan
```

Subsequent applies will reconcile cleanly.

## See also

- `FRICTIONS.md` — dogfood findings during the 2026-05-22 cycle.
- [`../single-project-app/`](../single-project-app/) — the larger end-to-end pattern (Cloud Run + Cloud SQL + Pub/Sub + Monitoring).
- `terradart/examples/firestore_document_quickstart/` — a simpler 2-document quickstart inside the terradart repo.
