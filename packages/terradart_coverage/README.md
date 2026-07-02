# terradart_coverage

`terradart-coverage` — a read-only CLI that reports how much of an existing Terraform configuration is already covered by curated [TerraDart](https://terradart.dev) factories.

Point it at a Terraform directory and it tells you which `resource` / `data` types already have a curated `terradart_google` factory, which are not in the catalog yet, and roughly how big a migration would be — **with no setup**: no `terraform init`, no backend, no credentials, not even a `terraform` binary. It reads only the `.tf` / `.tf.json` source you already have.

It matches Terraform type strings against the static catalog compiled into [`terradart_google`](https://pub.dev/packages/terradart_google) (`package:terradart_google/catalog.dart`). Anything it can't analyze (a registry/git module, a file it can't parse) is reported explicitly rather than dropped silently.

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

It works whether your config is HCL (`.tf`) or JSON (`.tf.json`). A `module` block sourced from a registry or git URL can't be read from local source, so its resources are reported as **not analyzed** rather than silently missed; local modules are reached by the walk and counted directly.

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
Coverage: 83% of types (5/6), 83% of resources (5/6)

Supported (5):
  google_storage_bucket [resource] x1 -> GoogleStorageBucket (storage)
  google_project [data] x1 -> GoogleProject (data)
  google_compute_network [resource] x1 -> GoogleComputeNetwork (compute)
  google_compute_subnetwork [resource] x1 -> GoogleComputeSubnetwork (compute)
  google_pubsub_topic [resource] x1 -> GooglePubsubTopic (pubsub)

Not in catalog (1):
  google_compute_router_nat [resource] x1 (compute)

By directory:
  dev: 2 supported, 1 not-in-catalog
  modules/network: 2 supported, 0 not-in-catalog
  prod: 1 supported, 0 not-in-catalog

Not analyzed (1):
  dev/main.tf: module "vpc" (source: terraform-google-modules/network/google) not analyzed — remote module
```

Each supported line maps a Terraform type to the Dart factory (`className`) and its service barrel, so you know exactly what to import when rewriting a stack.

## Why scan source instead of requiring `terraform show -json`?

Checking coverage shouldn't make you `terraform init`. With a remote backend you don't init locally, and "show me what's covered" should never demand a backend or credentials. So the default reads the `.tf` source directly — the resource/data type is a literal in every block header, which is all coverage needs.

The trade-offs are honest and called out in the report: `count` / `for_each` are counted as one block each (not expanded), and registry/git modules aren't read from local source. When you want that precision, the evaluated `terraform show -json` mode (above) provides it — as an opt-in for people who already run Terraform, not a requirement.

## Library

```dart
import 'package:terradart_coverage/terradart_coverage.dart';
import 'package:terradart_google/catalog.dart';

// Scan source files (no terraform):
final parsed = scanConfigDir('path/to/terraform');
// …or parse `terraform show -json` you already have:
// final parsed = parseShowJson(decodedShowJson);

final report = buildCoverageReport(parsed, CatalogIndex(terradartCatalog));
print(renderText(report)); // or renderJson(report)
```

The MCP server [`terradart_agent`](../terradart_agent/) wraps the evaluated path as the `check_coverage` tool for AI coding agents.

## Development

This package is `publish_to: none`. Source lives under `packages/terradart_coverage/`; release binaries are built by `.github/workflows/release-binary.yml`.

For the Dart authoring runtime, see [`terradart_core`](https://pub.dev/packages/terradart_core) and [`terradart_google`](https://pub.dev/packages/terradart_google).
