# Identity Platform quickstart

End-to-end terradart example for:

- `google_identity_platform_tenant`

`google_identity_platform_config` is deferred (`tool/example_debt.yaml`): it is
a project singleton, and shared validate projects that already enabled Identity
Platform reject a second create. Use the factory on a fresh project.

OAuth / SAML / default-supported IdP configs need real external credentials
and are not included in this stack.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with Identity Toolkit API enabled (and Identity Platform on)

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```
