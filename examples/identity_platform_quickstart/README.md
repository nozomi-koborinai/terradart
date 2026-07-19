# Identity Platform quickstart

End-to-end terradart example for Identity Platform factories:

- `google_identity_platform_config`
- `google_identity_platform_tenant`

OAuth / SAML / default-supported IdP configs need real external credentials
and are not included in this stack.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with Identity Toolkit API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```
