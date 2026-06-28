# firestore-seeded-data — FRICTIONS

Findings from dogfooding the recipe against `terradart-validate` GCP project.

Cycle 1: **2026-05-22 — initial validation against terradart v0.10.0** published to pub.dev. Apply → smoke → destroy against `terradart-validate`. Followed by a second dogfood cycle the same day after discovering a P1 recipe-correctness omission (see below).

Summary: **4 frictions found**. The originally-reported "P0 provider destroy bug" was reclassified to P1 (recipe correctness): the recipe was missing `deletionPolicy: TfArg.literal('DELETE')` on the database resource, so the provider's documented default (`ABANDON`) left the `(default)` database in place on `terraform destroy`. The fix is in the same PR as this update; the second dogfood cycle confirmed destroy now deletes the database in ~2s.

---

## Format

Each entry follows the cookbook template:

- **Context**: what was being done when the friction surfaced.
- **Friction**: what was unexpected / painful.
- **Proposed fix**: what would prevent the friction next time. May be a terradart change, a doc change, or a process change.
- **Tracked**: GitHub issue link if filed, or `none` if a memo-only.

---

## P1 — recipe omitted `deletionPolicy: TfArg.literal('DELETE')`; provider default `ABANDON` leaves DB on destroy

- **Context**: First dogfood cycle's `terraform destroy` reported success (`Destroy complete! Resources: 15 destroyed.`) but `gcloud firestore databases list --project=terradart-validate` showed `(default)` still alive. Initial hypothesis was an upstream `hashicorp/google` provider bug.
- **Friction**: The Cycle-1 Stack did not pass `deletionPolicy` to `GoogleFirestoreDatabase(...)`, so the field was omitted from synth output and the provider applied its documented schema default. Per `schema.json`:
  > "If the deletion policy is 'ABANDON', the database will be removed from Terraform state but not deleted from Google Cloud upon destruction. ... **The default value is 'ABANDON'**."

  `ABANDON` behavior is deliberate — Firestore databases are expensive to recreate, so the safe default is to leave them in place. But for an IaC recipe where the entire stack is intentionally throwaway (cookbook dogfood / dev / staging spin-up), `DELETE` is the right policy. The recipe should have set it explicitly.
- **Proposed fix**:
  1. **Recipe** (fixed in this PR): add `deletionPolicy: TfArg.literal('DELETE')` to the `GoogleFirestoreDatabase(...)` call in `lib/main.dart`, with an inline comment explaining the default-behavior gotcha.
  2. **Verification** (this PR): second dogfood cycle 2026-05-22 — `terraform destroy` cleanly removed the `(default)` database in ~2s. `gcloud firestore databases list` returned empty afterwards. No manual `gcloud` workaround needed.
  3. **Documentation**: the README destroy section is rewritten to drop the manual `gcloud` workaround.
  4. **Upstream issue filing**: not needed — the provider behavior is documented and intentional.
- **Tracked**: closed by this PR's recipe fix.

---

## P1 — `gcloud firestore documents` subcommand does not exist

- **Context**: Plan B Task 7 (smoke verification) called for `gcloud firestore documents list --database='(default)' --collection-id=feature_flags ...` to count seeded documents per collection.
- **Friction**: `gcloud firestore documents` is not a valid subcommand. `gcloud firestore` only exposes `databases`, `backups`, `locations`, `operations`, `user-creds`. There is no document-level CRUD via gcloud. To verify documents you need:
  - Firestore REST API via `curl` + ADC access token (used here: `curl -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" "https://firestore.googleapis.com/v1/projects/<p>/databases/(default)/documents/<col>"`), OR
  - Firebase CLI (`firebase firestore:get`) — separate tool with its own auth, OR
  - Firestore client libraries — for programmatic checks
- **Proposed fix**: this recipe's README + the upstream `firestore_document_quickstart` README in terradart should both show the REST-API smoke pattern (it's the lowest-dependency option — gcloud is already in scope for ADC anyway). Plan templates that follow this recipe should also use the REST pattern, not the imaginary gcloud subcommand.
- **Tracked**: `none` (doc-only change captured inline in the README — already in this recipe's README from Cycle 1).

---

## P2 — Composite index creation takes ~6 minutes (vs documents <1s each)

- **Context**: `terraform apply` for the 15-resource Stack. Most resources created in seconds; the database took 12s, then 11 documents created in parallel in ~13s each. The composite index `pricing_tiers_by_price` (2 fields: `monthly_usd ASC, label ASC`) was the long pole — Cycle 1 measured 5m57s, Cycle 2 measured 6m5s.
- **Friction**: A first-time user reading the apply log will see "Still creating... 5m00s elapsed" and reasonably worry something is stuck. The 6-minute composite-index creation time is normal Firestore behavior (indexes provision asynchronously on a separate Firestore worker pool) but the Cycle-1 README claimed "1-3 minutes" for total apply.
- **Proposed fix**: README updated (Cycle 1) — `## Run` section sets expectations as 5-10 minutes dominated by the composite index, with a note that documents themselves complete in seconds and that `skip_wait: true` is a knob for CI-driven workflows that don't need the index ready immediately.
- **Tracked**: `none` (doc-only).

---

## P3 — Plan B's database destroy timing estimate ("1-5 minutes") was pessimistic

- **Context**: Plan B Task 8 warned that `google_firestore_database` destruction takes 1-5 minutes.
- **Friction**: With `deletionPolicy = "DELETE"` (P1 fix), actual destruction was `Destruction complete after 2s`. Without it (Cycle 1), Terraform's "Destruction complete after 0s" was a no-op anyway. There is no scenario in current GCP behavior where `(default)` Native-mode delete takes minutes — it's near-instant either way.
- **Proposed fix**: README destroy section (Cycle 1 + Cycle 2 rewrites) drops the "1-5 minute" estimate. Standard expectation is now <5s for the entire destroy.
- **Tracked**: `none` (folded into the same README rewrite as P1).

---

## What worked well (positive signals for v0.10.0)

These are not frictions but worth recording as positive validation of Plan A:

- **`FirestoreFields.encode` end-to-end correctness**: every type round-tripped correctly through the wire format → Firestore storage → REST API read-back. `booleanValue: true`, `integerValue: "100"` (string-encoded for 64-bit precision per spec), `timestampValue: "2026-05-22T00:00:00Z"` (UTC ISO 8601), `geoPointValue: {latitude: 37.7749, longitude: -122.4194}`, `referenceValue: projects/.../billing_profiles/annual`, Unicode `stringValue: "こんにちは"` + nested `mapValue.fields.subscribe.stringValue: "登録"` all confirmed via REST.
- **11 documents create in parallel**: Terraform's default parallelism naturally fanned out the document creates; total document-creation wall time was ~13s for all 11 (dominated by the slowest single document, not the sum).
- **`FirestoreReference` to non-existent target accepted silently**: as designed — the helper does not validate target existence; Firestore stores the path verbatim and lets the application decide. This is the right design for IaC-seeded master data that may reference documents created elsewhere.
- **Composite index READY after creation**: index reached `READY` state immediately after the create operation returned (no separate polling needed in this Stack — Terraform's index resource waits for READY by default).
- **`Stack(devMode: true)` did NOT inject `deletion_protection: false` on Firestore resources**: confirmed expected — the devMode injection only targets the 6 Plan-1 resources (Cloud Run v2 service+job, Cloud SQL, Secret Manager standard+regional, BigQuery table). Firestore database uses `delete_protection_state` (not `deletion_protection`) and the user-supplied `DeleteProtectionState.disabled` in the Stack already covered it.
- **Clean destroy after `deletionPolicy: DELETE`** (Cycle 2): all 15 resources teardown in seconds, `(default)` database actually removed from GCP, no manual cleanup. Recipe pattern is now safe to run repeatedly in CI / dev / staging environments without leaving database stragglers.

---

Cycle 3: **v0.11.0 surface dogfood**. Fresh-state apply → 15 added (composite index dominated, 6m4s — matches Cycle 1 timing). REST smoke reconfirmed all 11 documents with correct typed encodings (`integerValue` / `booleanValue` / `timestampValue`). Destroy clean in seconds, `(default)` database removed in 2s. No new frictions; the Cycle 2 `deletionPolicy: DELETE` fix carries through.
