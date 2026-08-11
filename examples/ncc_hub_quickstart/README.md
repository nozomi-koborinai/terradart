# Network Connectivity Center hub quickstart

End-to-end terradart example for an NCC hub with a STAR `center` group, a VPC
spoke, an internal IP range reservation, a private regional endpoint for
Storage, a policy-based route (`DEFAULT_ROUTING` + VM tags), and an additive
hub IAM grant.

Partner CCI transport stays in
[`network_connectivity_quickstart`](../network_connectivity_quickstart/)
(apply-skipped).

## Usage

```bash
dart pub get
cd examples/ncc_hub_quickstart && dart pub get

GCP_PROJECT_ID=my-proj-123 dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```
