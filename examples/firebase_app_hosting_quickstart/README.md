# firebase_app_hosting_quickstart

Demonstrates `google_firebase_app_hosting_backend` + custom domain declared via
terradart, validated by `terraform plan` (no apply required).

## Run

```bash
GCP_PROJECT_ID=my-project dart run bin/infra.dart
cd tf-out
terraform init -backend=false
terraform validate
```
