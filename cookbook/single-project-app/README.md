> Part of the [TerraDart cookbook](../README.md). Library: [terradart](https://github.com/nozomi-koborinai/terradart).
>
> **Status:** Verified on terradart v0.11.0. See [FRICTIONS.md](./FRICTIONS.md) for dogfood findings.

# single-project-app

Pattern demonstrated: **single GCP project, end-to-end app surface**. Resources span Cloud Run (compute) + Cloud SQL (datastore) + Pub/Sub (messaging) + Monitoring (observability) + Secret Manager + IAM + Service Networking. Internal sample uses "coffee shop" naming (visit `lib/main.dart` for the actual resource names) but the recipe's identity is the PATTERN, not the imagined app domain. The dogfood session surfaced 13 friction entries (logged in FRICTIONS.md) that fed v0.9 polish issues on the terradart repo — see [`terradart#52`](https://github.com/nozomi-koborinai/terradart/issues/52) and adjacent.

Webhook-driven coffee order tracker. Demonstrates terradart end-to-end with a real-world stack on Google Cloud.

## Architecture

- Cloud Run v2 service receives webhook POSTs at `/order`.
- Cloud SQL (Postgres, private IP) persists orders.
- Secret Manager stores the DB password.
- Pub/Sub topic emits `order.created` events; a Pub/Sub push subscription invokes the same Cloud Run service.
- Cloud Monitoring covers an uptime check + alert policy + email notification channel.

~30 resources across 8 terradart barrels: `project`, `iam`, `service_networking`, `compute`, `cloud_sql`, `secret_manager`, `cloud_run`, `pubsub`, `monitoring`.

## Required APIs

The recipe enables the following APIs via `google_project_service` resources — you do not need to enable them manually first:

- `compute.googleapis.com` (Compute Engine — VPC, addresses)
- `iam.googleapis.com` (IAM)
- `monitoring.googleapis.com` (Cloud Monitoring)
- `pubsub.googleapis.com` (Pub/Sub)
- `run.googleapis.com` (Cloud Run)
- `secretmanager.googleapis.com` (Secret Manager)
- `servicenetworking.googleapis.com` (Service Networking — Cloud SQL private peering)
- `sqladmin.googleapis.com` (Cloud SQL)

Storage is typically already enabled on a fresh GCP project. If any of the above are missing on first apply, `terraform plan` will surface a clear 403 error pointing to the missing API.

## Cost notes

This recipe provisions billable resources. Rough estimates if left running 24h in `asia-northeast1`:

- Cloud SQL `db-f1-micro` (Postgres): ~$8-12 / day
- Cloud Run v2 (min-instances=0, idle): negligible until traffic arrives
- Reserved /16 private services range + VPC peering: free
- Pub/Sub + Monitoring + Secret Manager: negligible at this volume

**Always end your dogfood session with `terraform destroy`**. The recipe is structured so destroy fully cleans up — including the SQL instance (`deletion_protection = false` is explicit in the Stack).

## Run

Prerequisites: `gcloud auth application-default login` for an account with Owner on the target project. Terraform 1.11+ (terradart v0.9.0 synth hardcodes `required_version: ">= 1.11.0"` — required for write-only attribute support).

```bash
export GCP_PROJECT_ID=terradart-validate
export DB_PASSWORD=$(openssl rand -base64 24)
export ALERT_EMAIL=kobofender@gmail.com

dart pub get
dart run bin/infra.dart           # synth -> tf-out/main.tf.json

cd tf-out
terraform init
terraform plan
# DB_PASSWORD flows via terradart synth → `password_wo` write-only attribute (not stored in tfstate).
terraform apply -auto-approve

# Smoke test
SERVICE_URL=$(terraform output -raw coffee_service_uri)
curl -i "$SERVICE_URL"

terraform destroy -auto-approve
```

### Teardown gotcha

If your Cloud SQL instance used a private-services-access peering (this recipe does — via `service_networking_connection`), `terraform destroy` will partially succeed and then hang on the PSA connection with `Producer services (e.g. CloudSQL, Cloud Memstore, etc.) are still using this connection.` even though Cloud SQL itself is already gone. GCP's tenant-side cleanup can take hours.

**Workaround**: force-delete the consumer-side peering, then retry destroy:

```bash
gcloud compute networks peerings delete servicenetworking-googleapis-com \
  --network=coffee-shop-vpc \
  --project=terradart-validate \
  --quiet

# Re-run terraform destroy — refresh detects PSA connection missing,
# proceeds with VPC + global_address cleanup.
terraform destroy -auto-approve
```

See [FRICTIONS.md](./FRICTIONS.md) for the full context. This is a GCP / Terraform google provider behavior, not a terradart bug.

## v0.9 patterns

This recipe uses the terradart v0.9.0 API surface. Key changes from v0.8.0-dev:

- **`LocalBackend`** — `Stack(backend: const LocalBackend())` emits `terraform.backend.local: {}` in `main.tf.json`. The handwritten `tf-out/terraform.tf` is gone.
- **`devMode: true`** — `Stack(devMode: true)` flips `deletion_protection: false` on Cloud Run, Cloud SQL, and Secret Manager at synth time. No more per-resource `deletionProtection: TfArg.literal(false)` calls in sample code.
- **Concrete `synth()`** — `Stack.synth()` is now a concrete default that writes `tf-out/main.tf.json`. The `@override synth(...)` boilerplate and `dart:convert` import are gone from the Stack subclass.
- **`TfArg.variable('name')`** — route secrets through Terraform variable blocks (`${var.db_password}`) instead of masking workarounds.
- **`.iamMember` getter** — `GoogleServiceAccount.iamMember` (was `.member`) is self-documenting at IAM binding call sites.
- **Service-prefixed helper classes** — `SqlDatabaseInstanceSettings`, `SqlDatabaseInstanceIpConfiguration`, `SecretManagerSecretReplication`, `CloudRunV2ServiceTemplate`, `CloudRunV2ServiceServiceContainer`, `CloudRunV2ServiceEnvVar`, `PubsubSubscriptionPushConfig`, `MonitoringUptimeCheckConfigMonitoredResource`, `MonitoringAlertPolicyAlertCondition`, etc. Prevents name collisions when importing multiple barrels.
- **Enum name polish** — `Comparison.lessThan` (was `.lt`), `Aligner.alignNextOlder` (was `.nextOlder`).

## D1b — GCS backend

To switch to a GCS-backed state for the second dogfood phase, see [FRICTIONS.md](./FRICTIONS.md) and the `bin/bootstrap.dart` flow.
