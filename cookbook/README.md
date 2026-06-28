# TerraDart cookbook

Real-world recipes for [terradart](https://github.com/nozomi-koborinai/terradart), the Dart-first IaC library for Google Cloud.

Each recipe is a self-contained Dart project under `cookbook/<name>/` that uses the monorepo workspace packages and ships a working Stack you can `terraform plan + apply` against a real GCP project.

## Recipes

| Recipe | Pattern | Status | Barrels |
|---|---|---|---|
| [`lunch-concierge`](lunch-concierge/README.md) | Flutter Web + Dart server + Genkit Vertex AI + Cloud Run sidecar + private Cloud SQL | Demo recipe | 8 |
| [`single-project-app`](single-project-app/README.md) | Single GCP project, end-to-end app surface (Cloud Run + Cloud SQL + Pub/Sub + Monitoring + Secret Manager + IAM) | Imported | 8 |
| [`remote-backend`](remote-backend/README.md) | GCS-backed Terraform remote state (Stage 0 bootstrap + state migration) | Imported | 1 |
| [`firestore-seeded-data`](firestore-seeded-data/README.md) | Cloud Firestore master-data seeding (11 docs across 4 collections + composite index + daily backup) via `GoogleFirestoreDocument` + `FirestoreFields.encode` | Imported | 3 |

(Coming in future iterations: `multi-env-dev-prod` for env separation and `dynamic-iam-for-each` for `locals`/`for_each` patterns.)

## Usage

```bash
cd cookbook/<name>
dart pub get
dart run bin/infra.dart    # synth to tf-out/
cd tf-out
terraform init
terraform plan
terraform apply
# ...smoke test...
terraform destroy
```

Each recipe's README documents required env vars (e.g. `GCP_PROJECT_ID`, secrets).

## Versions

Recipes in this monorepo use Dart workspace resolution against the checked-out TerraDart packages. Published cookbook snippets should still follow the current `terradart_core` / `terradart_google` release line documented in the root README.

## How recipes feed back into terradart

Each recipe's `FRICTIONS.md` is the canonical log of "things the recipe author hit that should be cleaner in terradart core / cookbook docs". Each friction entry is classified (P0 / P1 / P2 / P3) and consolidated into upstream issues on the [terradart repo](https://github.com/nozomi-koborinai/terradart). The cookbook is the dogfood vehicle: the more real-world recipes we ship, the more strategic input lands on terradart's roadmap.
