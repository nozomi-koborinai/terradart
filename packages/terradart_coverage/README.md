# terradart_coverage

[![Dart SDK](https://img.shields.io/badge/Dart-%E2%89%A53.6-blue.svg)](https://dart.dev)
[![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/nozomi-koborinai/terradart/blob/main/LICENSE)

`terradart-coverage` — a read-only CLI that reports how much of an existing Terraform configuration is already covered by curated [TerraDart](https://terradart.dev) factories.

Point it at a Terraform directory and it tells you which `resource` / `data` types already have a curated factory in `terradart_google`, `terradart_google_beta`, `terradart_appwrite` or `terradart_cloudflare`, which are not in any catalog yet, and roughly how big a migration would be — **with no setup**: no `terraform init`, no backend, no credentials, not even a `terraform` binary. It reads only the `.tf` / `.tf.json` source you already have.

It matches Terraform type strings against the static catalogs compiled into the four provider packages (`package:terradart_<provider>/catalog.dart`). Anything it can't analyze (a registry/git module, a file it can't parse) is reported explicitly rather than dropped silently.

## Status

**Alpha** — same expectations as the rest of TerraDart (pin versions, read release notes). The tool is read-only: it reads source files and reports. It never runs Terraform, touches a backend, or modifies anything.

## Install

**Homebrew (macOS / Linux):**

```sh
brew install nozomi-koborinai/tap/terradart-coverage
```

If Homebrew asks you to trust the tap, run `brew trust nozomi-koborinai/tap` (it's the project's own tap).

**Direct binary:** see [GitHub releases](https://github.com/nozomi-koborinai/terradart/releases) (`terradart-coverage-darwin-arm64`, `linux-amd64`, etc.).

## Usage

### Scan a Terraform directory (default)

```sh
# from inside your Terraform repo
terradart-coverage

# or point at any directory
terradart-coverage --dir path/to/terraform
```

This recursively reads every `.tf` / `.tf.json` under the directory (so running it at the repo root covers `dev/`, `prod/`, `modules/`, … in one pass) and reports coverage. **No `terraform`, no `init`, no backend, no credentials.** `.terraform/` and `.git/` are skipped so the result doesn't depend on whether the tree has been initialized.

Each directory is parsed as one Terraform module with [`terradart_hcl`](../terradart_hcl/) — the same front-end `terradart-migrate` uses — so HCL (`.tf`) and JSON (`.tf.json`) are read exactly, not pattern-matched:

- `count = 3`, and `for_each` over a literal object or `toset([...])`, count as that many occurrences. Any other `count` / `for_each` (a variable, a conditional) counts once and is listed under **Counted once**; pipe `terraform show -json` (below) for exact instance counts.
- A `module` sourced from a registry or git URL can't be read from local source, so its resources are reported as **not analyzed** rather than silently missed. A local module inside the scanned directory is reached by the walk and counted once (whatever `count` / `for_each` it is called with); one outside the directory, or missing, is reported as not analyzed.
- A file that fails to parse is reported with its first error and skipped; the rest still count.

### Evaluated mode (optional)

If you already have a plan or state and want **exact instance counts** (`count` / `for_each` expanded) and **remote modules fully included**, pipe Terraform's evaluated output instead:

```sh
terraform show -json tfplan.bin | terradart-coverage
# or current state:
terraform show -json | terradart-coverage
# or from a file:
terradart-coverage plan.json
```

This is opt-in — only useful if you've already run `terraform`, and never required for the default directory scan.

### JSON output

Add `--json` to either mode for a machine-readable document (tooling / agents):

```sh
terradart-coverage --json --dir path/to/terraform
```

## Example

```
TerraDart coverage
==================
Coverage: 86% of types (6/7), 88% of resources (7/8)

Supported (6):
  google_storage_bucket [resource] x2 -> GoogleStorageBucket (terradart_google/storage)
  google_project [data] x1 -> GoogleProject (terradart_google/data)
  google_compute_network [resource] x1 -> GoogleComputeNetwork (terradart_google/compute)
  google_compute_subnetwork [resource] x1 -> GoogleComputeSubnetwork (terradart_google/compute)
  google_pubsub_topic [resource] x1 -> GooglePubsubTopic (terradart_google/pubsub)
  cloudflare_dns_record [resource] x1 -> CloudflareDnsRecord (terradart_cloudflare/dns)

Not in catalog (1):
  google_compute_router_nat [resource] x1 (compute)

By directory:
  dev: 3 supported, 1 not-in-catalog
  modules/network: 2 supported, 0 not-in-catalog
  prod: 2 supported, 0 not-in-catalog

Counted once (1):
  prod/main.tf: google_pubsub_topic.events: count = var.topic_count — counted once

Not analyzed (1):
  dev/main.tf: module "vpc" (source: terraform-google-modules/network/google) not analyzed — remote module
```

Each supported line maps a Terraform type to the Dart factory (`className`) and the package and service barrel that ship it, so you know exactly what to import when rewriting a stack.

## Library

```dart
import 'package:terradart_coverage/terradart_coverage.dart';

// Scan source files (no terraform):
final parsed = scanConfigDir('path/to/terraform');
// …or parse `terraform show -json` you already have:
// final parsed = parseShowJson(decodedShowJson);

// CatalogIndex.all() matches every provider package; pass
// CatalogIndex(terradartCatalog) from package:terradart_google/catalog.dart
// to match terradart_google only.
final report = buildCoverageReport(parsed, CatalogIndex.all());
print(renderText(report)); // or renderJson(report)
```

The MCP server [`terradart_agent`](../terradart_agent/) wraps the evaluated path as the `check_coverage` tool for AI coding agents.

## Development

This package is `publish_to: none`. Source lives under `packages/terradart_coverage/`; release binaries are built by `.github/workflows/release-binary.yml`.

For the Dart authoring runtime, see [`terradart_core`](https://pub.dev/packages/terradart_core) and [`terradart_google`](https://pub.dev/packages/terradart_google).
