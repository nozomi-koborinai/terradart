# Filestore quickstart

High Scale SSD Filestore instance and snapshot in `us-central1`.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out && terraform init && terraform validate
```

## What gets created

- `GoogleComputeNetwork` + subnet for NFS attachment
- `GoogleFilestoreInstance` (High Scale SSD, 10 TiB minimum)
- `GoogleFilestoreSnapshot` of the share
