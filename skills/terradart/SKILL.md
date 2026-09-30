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
| `time_sleep` (`TimeSleep`, with `TimeProvider`) | `terradart_time` | `package:terradart_time/terradart_time.dart` |

Every stack also depends on `terradart_core` (`Stack`, `TfArg`, synth). Data sources are exported from the `data` barrel of each generated package. `terradart_time` is hand-written and has no catalog.

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

- Pass values with `.literal(...)` and reference other resources with `.ref(other.someRef)`, so Terraform sees the dependency. These are dot shorthands for `TfArg.literal` / `TfArg.ref` (Dart 3.10): every argument is typed `TfArg<T>`, so write `type: .literal(.cname)`, not `TfArg.literal(DnsRecordType.cname)`. Spell out `TfArg.` only where there is no context type (`final x = TfArg.literal('a');`). An argument typed `RefTo<Target>` takes `target.ref` (or `.literal('...')` for a value outside the stack).
- Do not declare Terraform variables. Use Dart values (constructor parameters, environment variables read in `bin/infra.dart`), not `${var.x}`.
- Do not put credentials in the stack. The provider classes leave them out on purpose; `terraform apply` reads them from the environment.
- Hand values to the app instead of re-typing them there. `addOutput('service_url', .ref(service.uri))` declares a Terraform output for a value known after apply. `addConstant('topicName', .ref(topic.nameRef))` writes a `static const` into the file named by `appExports: AppExports('lib/generated/<stack>.app.dart')` on the `super(...)` call; `.ref` reads the literal the attribute is set to (every input has a `<input>Ref` getter, e.g. `scope.scopeIdRef`, so the literal is written once), and synth fails when it is not one, so use `addOutput` for apply-time values. The same file has a `<Stack>Outputs` reader: the app reads an output with `<Stack>Outputs.fromEnvironment(Platform.environment).ordersTopicId` (variable `ORDERS_TOPIC_ID`) or `.fromTerraformJson(...)`, never by re-typing it. Give a Cloud Run service those variables with `env: [for (final MapEntry(:key, :value) in outputEnvironment().entries) CloudRunV2ServiceTemplateContainersEnv(name: .literal(key), source: .value(value))]`, registering outputs that read the service itself after it.

## 5. Check it

```bash
dart analyze
dart run bin/infra.dart            # writes tf-out/main.tf.json
cd tf-out && terraform init -backend=false && terraform validate
```

## Existing Terraform

Do not rewrite an existing Terraform tree by hand. Run the migrator first; it translates every block it can, keeps the rest in Terraform verbatim, and preserves every resource address. Your job is the part it left behind.

1. **Size it.** `terradart-migrate --report --dir infra` writes nothing. It lists every `resource` / `data` type with how many blocks translate and how many stay in Terraform, and why.

2. **Migrate.**

   ```bash
   dart pub global activate terradart_migrate
   terradart-migrate --dir infra --out infra_dart
   ```

   The package has one `Stack` per module directory (`lib/`) and a `tf-out/` tree that mirrors the source. Beside each `main.tf.json` is the **sidecar**: `terradart_leftover.tf`, `backend.tf`, `variables.tf`, `locals.tf` and `outputs.tf`, holding what did not translate. `MIGRATION.md` lists every kept block with its reason.

3. **Port the leftovers, one block at a time.** For each block in `MIGRATION.md` whose reason you can resolve (an argument the migrator had no typed slot for, a `depends_on` on a block you have since ported), look the factory up (sections 1–2), add it to the Stack with the **same `localName`** so the address does not change, and delete the block from the sidecar. A `locals` entry with a literal value can become a Dart `final`; drop it from `locals.tf` only once nothing left in the sidecar reads it. Leave a block in the sidecar when it has no factory (`not in any catalog`). Never copy a sensitive literal into Dart; pass it as a variable instead.

4. **Synthesize.** `cd infra_dart && dart pub get && dart analyze && dart run bin/infra.dart`

5. **Plan.** In each root under `tf-out/`, run `terraform init` and then `terraform plan`. It must report *No changes*. A diff means the port changed something, so fix the Dart rather than the plan. Do not run `terraform apply` for the user.

See [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/) for the flags (`--merge-envs` folds `envs/dev` and `envs/prod` into one Stack; `--lift-workspace` turns `terraform.workspace` into a Stack parameter).
