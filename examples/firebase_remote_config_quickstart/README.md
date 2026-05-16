# Firebase Remote Config quickstart

End-to-end terradart example for Firebase Remote Config — dynamic configuration templates with parameters, parameter groups, and conditions. Demonstrates the `RemoteConfigParameter` / `RemoteConfigCondition` / `RemoteConfigDefaultValue` helper-class tree.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Firebase Remote Config API enabled.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- A `GoogleFirebaseRemoteConfigRemoteConfig` template with:
  - One parameter (`welcome_message`) with a `RemoteConfigDefaultValue` literal and a conditional value tied to a named condition.
  - One condition (`ios_users`) with an `expression` that targets the iOS platform.

`RemoteConfigParameter` is reused at both the top-level `parameters` and `parameter_groups[].parameters` nesting depths — the schema's identical sub-block shape lets the helper class serve both call sites without a separate `GroupedParameter` type.
