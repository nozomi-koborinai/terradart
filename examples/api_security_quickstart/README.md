# API security quickstart

End-to-end terradart example for API Keys, reCAPTCHA Enterprise, and a
Network Management connectivity probe.

## Before you apply

API keys are soft-deleted for 30 days. Applying again with the same key name after a destroy fails with `Resource already exists`.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project (the stack enables `apikeys.googleapis.com`,
  `recaptchaenterprise.googleapis.com`, and `networkmanagement.googleapis.com`)

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart synth
```

## What gets created

- `GoogleApikeysKey` — browser API key with Maps API restriction
- `GoogleRecaptchaEnterpriseKey` — score-based web login key
- `GoogleNetworkManagementConnectivityTest` — TCP probe from a private IP to `8.8.8.8:443`
