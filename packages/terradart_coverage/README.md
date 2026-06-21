# terradart_coverage

`terradart-coverage` — a read-only CLI that reports how much of an existing Terraform configuration is already covered by curated [TerraDart](https://terradart.dev) factories.

Point it at `terraform show -json` output and it tells you which `resource` and `data` types already have a curated `terradart_google` factory, which are not in the catalog yet, and a rough migration scope — without manually diffing against the [status page](https://terradart.dev/docs/status/).

It matches Terraform type strings against the static catalog compiled into [`terradart_google`](https://pub.dev/packages/terradart_google) (`package:terradart_google/catalog.dart`). Anything it cannot interpret is reported explicitly rather than dropped silently.

## Status

**Pre-alpha** — same expectations as the rest of TerraDart (pin versions, read release notes). The tool is read-only: it parses JSON you pipe in and never runs `terraform`, touches GCP, or modifies any file.

## Install

**Homebrew (macOS / Linux):**

```sh
brew install nozomi-koborinai/tap/terradart-coverage
```

**Direct binary:** see [GitHub releases](https://github.com/nozomi-koborinai/terradart/releases) (`terradart-coverage-darwin-arm64`, `linux-amd64`, etc.).

```sh
terradart-coverage --help
```

## Usage

The input is `terraform show -json` output — either a saved plan or current state. Pipe it in, or pass a file path.

```sh
# From a saved plan
terraform plan -out=tfplan.bin
terraform show -json tfplan.bin | terradart-coverage

# From current state
terraform show -json | terradart-coverage

# From a file
terradart-coverage plan.json

# Machine-readable output (for tooling / agents)
terraform show -json tfplan.bin | terradart-coverage --json
```

Using a `plan` works without applying anything, so you can scope a repo you have never deployed from. A `data` source in a plan may require provider credentials at plan time; managed resources do not.

## Example

```
TerraDart coverage
==================
Coverage: 80% of types (8/10), 80% of resources (8/10)

Supported (8):
  google_compute_router [resource] x1 -> GoogleComputeRouter (compute)
  google_pubsub_topic [resource] x1 -> GooglePubsubTopic (pubsub)
  google_service_account [resource] x1 -> GoogleServiceAccount (iam)
  google_storage_bucket [resource] x1 -> GoogleStorageBucket (storage)
  google_storage_bucket_object [resource] x1 -> GoogleStorageBucketObject (storage)
  google_compute_network [resource] x1 -> GoogleComputeNetwork (compute)
  google_compute_route [resource] x1 -> GoogleComputeRoute (compute)
  google_compute_subnetwork [resource] x1 -> GoogleComputeSubnetwork (compute)

Not in catalog (2):
  google_compute_router_nat [resource] x1 (compute)
  google_compute_target_pool [resource] x1 (compute)

By module:
  root: 5 supported, 2 not-in-catalog
  module.network: 3 supported, 0 not-in-catalog
```

Each supported line maps a Terraform type to the Dart factory (`className`) and its service barrel, so you know exactly what to import when rewriting a stack. `--json` emits the same data as a structured document with a `summary`, `supported`, `notInCatalog`, `perModule`, and `unparseable` blocks.

## Library

The same logic is available as a library if you want to build on it:

```dart
import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';

final parsed = parseShowJson(decodedShowJson);
final report = buildCoverageReport(parsed, CatalogIndex(terradartCatalog));
print(renderText(report)); // or renderJson(report)
```

The MCP server [`terradart_agent`](../terradart_agent/) wraps this as the `check_coverage` tool for AI coding agents.

## Development

This package is `publish_to: none`. Source lives under `packages/terradart_coverage/`; release binaries are built by `.github/workflows/release-binary.yml`.

For the Dart authoring runtime, see [`terradart_core`](https://pub.dev/packages/terradart_core) and [`terradart_google`](https://pub.dev/packages/terradart_google).
