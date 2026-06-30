# API security quickstart

End-to-end terradart example for API Keys, reCAPTCHA Enterprise, and a
Network Management connectivity probe.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project (the stack enables `apikeys.googleapis.com`,
  `recaptchaenterprise.googleapis.com`, and `networkmanagement.googleapis.com`)

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init -backend=false
terraform validate
```

## What gets created

- `GoogleApikeysKey` — browser API key with Maps API restriction
- `GoogleRecaptchaEnterpriseKey` — score-based web login key
- `GoogleNetworkManagementConnectivityTest` — TCP probe from a private IP to `8.8.8.8:443`
