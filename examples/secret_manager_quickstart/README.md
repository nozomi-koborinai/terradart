# Secret Manager quickstart

Demonstrates the **write-only** field pattern (`secret_data_wo` + `secret_data_wo_version`) on `google_secret_manager_secret_version`. The cleartext value never lands in Terraform state, and requires Terraform >= 1.11.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0 (required for write-only args)
- A GCP project with the Secret Manager API enabled.

## Usage

```bash
dart pub get

# Edit lib/main.dart -- replace YOUR-PROJECT-ID with your real project.

# Pass the cleartext via env var. Never commit this.
export DB_PASSWORD='your-real-password-here'
dart run bin/infra.dart

cd tf-out
terraform init
terraform apply
```

## What gets created

- A Secret Manager secret `db-password` with auto replication and a `managed-by: terradart` label.
- The first secret version, supplied via `secret_data_wo` (write-only).
- An IAM grant of `roles/secretmanager.secretAccessor` to the application service account.

## Rotation

To rotate the value:

1. Update `DB_PASSWORD` in your environment.
2. Bump the `secretVersion` argument in `bin/infra.dart` (e.g. `1` -> `2`).
3. Re-synth and re-apply:
   ```bash
   DB_PASSWORD='new-value' dart run bin/infra.dart
   cd tf-out && terraform apply
   ```

The version field tells Terraform "the upstream value changed -- push a new SecretVersion" without exposing the cleartext in state.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "terraform": {
    "required_version": ">= 1.11.0"
  },
  "resource": {
    "google_secret_manager_secret": {
      "db_password": {
        "secret_id": "db-password",
        "replication": { "auto": {} },
        "labels": { "managed-by": "terradart" }
      }
    },
    "google_secret_manager_secret_version": {
      "db_password_v1": {
        "secret": "${google_secret_manager_secret.db_password.id}",
        "secret_data_wo": "your-real-password-here",
        "secret_data_wo_version": 1
      }
    },
    "google_secret_manager_secret_iam_member": {
      "db_password_accessor": {
        "secret_id": "${google_secret_manager_secret.db_password.secret_id}",
        "role": "roles/secretmanager.secretAccessor",
        "member": "serviceAccount:app@YOUR-PROJECT-ID.iam.gserviceaccount.com"
      }
    }
  }
}
```

The exported Dart constant `DB_PASSWORD_SECRET_ID` points to the **secret's resource path** (the lookup key). The application resolves the live value at runtime via the Secret Manager client library; the constant ensures the lookup key is refactor-safe.
