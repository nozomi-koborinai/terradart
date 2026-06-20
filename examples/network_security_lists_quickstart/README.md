# Network Security lists quickstart

End-to-end terradart example for Network Security reusable lists. Enables the Network Security API and provisions an IPv4 `google_network_security_address_group` (a set of CIDR ranges for firewall policies) and a `google_network_security_url_lists` (a set of host matchers for Secure Web Proxy) — and exports the address group name as a typed Dart constant.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The Network Security API is enabled by the stack.

## Layout

```
examples/network_security_lists_quickstart/
├── lib/main.dart       # ListsStack (API enablement + address group + URL list)
├── bin/infra.dart      # Synth: stack.writeTo('tf-out')
├── lib/generated/      # (created on synth) lists_stack.app.dart
├── tf-out/             # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/network_security_lists_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=my-project-123

# 3. Synthesize Terraform JSON:
dart run bin/infra.dart

# 4. Plan / apply with Terraform:
cd tf-out && terraform init && terraform plan
```

Address groups and URL lists are free, regional config primitives; the stack creates and destroys cleanly in a single project.
