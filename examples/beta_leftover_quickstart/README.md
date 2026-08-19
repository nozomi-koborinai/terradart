# Beta leftover quickstart

Apply-excluded leftover of beta-only `hashicorp/google-beta` factories.
Synth + `terraform validate` only. Do not apply — the apply-smoke harness
is GA-only and beta apply policy is not designed yet.

```bash
export GCP_PROJECT_ID=your-project-id
dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```
