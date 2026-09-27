---
name: terradart
description: Write TerraDart infrastructure code (Dart that synthesizes Terraform JSON). Use when a task mentions TerraDart, a Dart `Stack`, `terradart_google` / `terradart_aws` / `terradart_cloudflare` / `terradart_appwrite` / `terradart_google_beta`, or translating Terraform (`.tf`) into Dart.
---

# TerraDart

TerraDart factories are generated Dart classes, one per Terraform resource or data source. They are committed to the provider packages, so you can read the exact constructor, its doc comment and a runnable example instead of guessing a name.

## 1. Pick the package

| Terraform type | Package | Import |
|----------------|---------|--------|
| `google_*` | `terradart_google` | `package:terradart_google/<barrel>.dart` |
| `google_*` that exists only in `hashicorp/google-beta` | `terradart_google_beta` | `package:terradart_google_beta/<barrel>.dart` |
| `aws_*` | `terradart_aws` | `package:terradart_aws/<barrel>.dart` |
| `cloudflare_*` | `terradart_cloudflare` | `package:terradart_cloudflare/<barrel>.dart` |
| `appwrite_*` | `terradart_appwrite` | `package:terradart_appwrite/<barrel>.dart` |

Every stack also depends on `terradart_core` (`Stack`, `TfArg`, synth). Data sources are exported from the `data` barrel of each package.

## 2. Find the class and its barrel

Each package's `lib/src/_catalog.g.dart` has one entry per factory: its Terraform type, class name, barrel and kind. Look the Terraform type up there:

```bash
# After `dart pub get`, package_config.json points at the package in the pub
# cache (a file:// URI; inside the TerraDart repo it is a relative path).
PKG=$(jq -r '.packages[] | select(.name=="terradart_google") | .rootUri' \
  .dart_tool/package_config.json | sed 's#^file://##')

rg -A3 "tfType: 'google_pubsub_topic'" "$PKG/lib/src/_catalog.g.dart"
#   tfType: 'google_pubsub_topic',
#   className: 'GooglePubsubTopic',
#   barrel: 'pubsub',
#   kind: CatalogKind.resource,
#   ...
#   className: 'DataGooglePubsubTopic',   # the data source of the same type
#   barrel: 'data',
#   kind: CatalogKind.dataSource,
```

Then read the wrapper itself (`$PKG/lib/src/<barrel>/<tf_type>.dart`). Its constructor is the API, and its doc comment lists the required and optional arguments. Resource classes are the Terraform type in PascalCase (`google_pubsub_topic` → `GooglePubsubTopic`). Most data sources add a `Data` prefix (`DataGoogleComputeNetwork`), so check the catalog rather than guessing.

Without a checkout, the same information is online:

- [terradart.dev/llms.txt](https://terradart.dev/llms.txt): the docs, condensed for LLMs.
- [terradart.dev/docs/coverage/](https://terradart.dev/docs/coverage/): every `google_*` factory with its barrel and the examples that use it.
- The generated sources under [`packages/`](https://github.com/nozomi-koborinai/terradart/tree/main/packages) on GitHub.

## 3. Start from an example

[`examples/`](https://github.com/nozomi-koborinai/terradart/tree/main/examples) has more than 100 quickstarts that CI synthesizes and runs `terraform validate` against. Search them for the class you need and copy the shape (`examples/<name>/lib/main.dart` for the `Stack`, `bin/infra.dart` for the entry point):

```bash
rg -l "GooglePubsubTopic\(" examples/*/lib/main.dart
```

## 4. Write the stack

- Pass values with `TfArg.literal(...)` and reference other resources with `TfArg.ref(other.someRef)`, so Terraform sees the dependency.
- Do not declare Terraform variables. Use Dart values (constructor parameters, environment variables read in `bin/infra.dart`), not `${var.x}`.
- Do not put credentials in the stack. The provider classes leave them out on purpose; `terraform apply` reads them from the environment.

## 5. Check it

```bash
dart analyze
dart run bin/infra.dart            # writes tf-out/main.tf.json
cd tf-out && terraform init -backend=false && terraform validate
```

## Existing Terraform

To translate an existing Terraform tree, run the migrator instead of rewriting it by hand:

```bash
brew install nozomi-koborinai/tap/terradart-migrate
terradart-migrate --dir infra --out infra_dart
```

See [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/). To see how much of a plan TerraDart already covers, use `terradart-coverage` (`brew install nozomi-koborinai/tap/terradart-coverage`).
