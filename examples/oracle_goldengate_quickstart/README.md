# Oracle GoldenGate quickstart

End-to-end terradart example for Oracle Database@Google Cloud GoldenGate factories:

- `google_oracle_database_goldengate_deployment`
- `google_oracle_database_goldengate_connection`
- `google_oracle_database_goldengate_connection_assignment`

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with `oracledatabase.googleapis.com` enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- A GoldenGate deployment with placeholder ODB subnet and OGG admin credentials in `us-east4`
- A generic GoldenGate connection and an assignment linking connection to deployment
