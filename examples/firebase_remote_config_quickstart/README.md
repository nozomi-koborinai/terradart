# Firebase Remote Config quickstart

End-to-end terradart example for Firebase Remote Config — dynamic configuration templates with parameters, parameter groups, and conditions. Demonstrates the `FirebaseRemoteConfigRemoteConfigParameter` / `FirebaseRemoteConfigRemoteConfigCondition` / `FirebaseRemoteConfigRemoteConfigDefaultValue` helper-class tree.

## Before you apply

The project must already be registered with Firebase. Enabling `firebase.googleapis.com` is not enough, and this stack does not perform the registration.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Firebase Remote Config API enabled.

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
```

## What gets created

- A `GoogleFirebaseRemoteConfigRemoteConfig` template with:
  - One condition (`is_japan`) with an `expression` that targets users in Japan.
  - Two top-level parameters (`enable_new_checkout`, `welcome_banner_text`), each with a `FirebaseRemoteConfigRemoteConfigDefaultValue` and a conditional value tied to `is_japan`.
  - One parameter group (`feature_flags`) holding `enable_dark_mode`.

`FirebaseRemoteConfigRemoteConfigParameter` is reused at both the top-level `parameters` and `parameter_groups[].parameters` nesting depths: the schema's identical sub-block shape lets one helper class serve both call sites.
