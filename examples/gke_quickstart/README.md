# GKE quickstart

End-to-end terradart example for Google Kubernetes Engine, GKE Hub, and GKE Backup. Provisions a custom-mode VPC, cluster + node pool, Hub fleet membership, backup/restore channels and plans, and plan-scoped IAM members.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with billing enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/gke_quickstart/
├── lib/main.dart        # GkeQuickstartStack
├── bin/infra.dart       # Synth entry: stack.writeTo('tf-out')
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml         # workspace member (terradart_core: ^0.12.x)
```

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- API enablement via [`Apis.required`](../../packages/terradart_google/lib/src/project/apis.dart) (`Barrels.compute`, `Barrels.container`, `Barrels.gkeBackup` → Compute, GKE, GKE Hub, GKE Backup APIs).
- VPC `gke-vpc` and subnet `gke-subnet` in `asia-northeast1`.
- Regional cluster `main-gke` with `remove_default_node_pool = true`.
- Node pool `primary-pool` attached to the cluster.
- Default GKE Hub fleet and membership `main-cluster`.
- GKE Backup channels, backup plan `main-backup-plan`, restore plan `main-restore-plan`, and plan IAM members.

## Related examples

- [compute_quickstart](../compute_quickstart/) — VPC networking primitives without GKE.
- [iam_quickstart](../iam_quickstart/) — Workload Identity Federation pool + GitHub Actions OIDC provider.
