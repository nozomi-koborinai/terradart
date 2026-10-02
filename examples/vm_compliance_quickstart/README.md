# VM compliance quickstart

End-to-end terradart example for OS Config (OS policy assignment + patch
deployment + a STOPPED v2 policy orchestrator) and Binary Authorization
(project policy + attestor + IAM member).

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with `osconfig.googleapis.com` and
  `binaryauthorization.googleapis.com` enabled (the stack enables both)

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart synth
```

## What gets created

- `GoogleBinaryAuthorizationPolicy` — project-wide admission policy (allow by default)
- `GoogleBinaryAuthorizationAttestor` — CI attestor with an embedded test PGP key
- `GoogleBinaryAuthorizationAttestorIamMember` — viewer grant for a sample CI SA
- `GoogleOsConfigOsPolicyAssignment` — validation-mode shell script policy in `us-central1-a`
- `GoogleOsConfigPatchDeployment` — one-time patch job scheduled in the future
- `GoogleOsConfigV2PolicyOrchestrator` — stored `STOPPED` recipe (`UPSERT` +
  VALIDATION file payload); does not create zonal OS policy assignments
