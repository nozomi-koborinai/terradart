# GKE quickstart

End-to-end terradart example for Google Kubernetes Engine, GKE Hub, and GKE Backup. Provisions a custom-mode VPC, cluster + node pool, Hub fleet membership, and a backup plan + restore plan with plan-scoped IAM members bound to a dedicated service account.

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
└── pubspec.yaml         # workspace member (terradart_core: ^0.16.x)
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
- GKE Hub membership `main-cluster`, enrolled in the project's auto-created default fleet.
- GKE Backup plan `main-backup-plan` (daily schedule) and restore plan `main-restore-plan`, each with a plan-scoped IAM binding to the `gke-backup-operator` service account.

> Backup/restore *channels* and the default *fleet* resource are intentionally omitted. Channels are inherently cross-project (source must differ from destination), and the default fleet is auto-created (creating it returns 409). Both are tracked in `tool/example_debt.yaml`.

## Related examples

- [compute_quickstart](../compute_quickstart/) — VPC networking primitives without GKE.
- [iam_quickstart](../iam_quickstart/) — Workload Identity Federation pool + GitHub Actions OIDC provider.
