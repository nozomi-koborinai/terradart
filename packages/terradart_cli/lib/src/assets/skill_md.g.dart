// GENERATED FILE - DO NOT EDIT
// `dart tool/sync_bundled_skill.dart --fix` copies skills/terradart/SKILL.md here;
// tool/bundled_skill_test.dart fails when the two differ.

/// `skills/terradart/SKILL.md`, byte for byte: the agent skill
/// `terradart skill install` writes.
const String bundledSkillMd = r'''
---
name: terradart
description: Write TerraDart infrastructure code (Dart that synthesizes Terraform JSON). Use when a task mentions TerraDart, a Dart `Stack`, `terradart_google` / `terradart_aws` / `terradart_cloudflare` / `terradart_appwrite` / `terradart_google_beta`, or translating Terraform (`.tf`) into Dart.
metadata:
  terradart-version: "0.33.0"
  terradart-sha256: "bdbb6b8ee43d3034de2d87ac6d482d7e17adf8046b19caadd11e2e9799a12d59"
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

Every barrel re-exports `terradart_core` (`Stack`, `TfArg`, synth), so a Stack imports only barrels. A data source is exported from the `data` barrel of its package and, when one matches, from its service barrel too (`DataGoogleComputeNetwork` from `compute.dart`). `terradart_time` is hand-written and has no catalog.

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

Then read the wrapper itself (`$PKG/lib/src/<barrel>/<tf_type>.dart`). Its constructor is the API, and its doc comment lists the required and optional arguments. Resource classes are the Terraform type in PascalCase (`google_pubsub_topic` → `GooglePubsubTopic`). Data sources add a `Data` prefix (`DataGoogleComputeNetwork`).

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

<!-- argument-rules:start -->
Pick the form by where the value comes from. The argument's type tells you which forms it takes, and a dot shorthand (`.literal`, `.new`, `.providedAl2023`) names the constructor of that type.

| The value is | Write | Example |
|---|---|---|
| known when you synth | `.literal(...)` | `functionName: .literal('hello')` |
| another resource of this Stack (a `RefTo<R>` input) | its `ref` | `role: role.ref` |
| one attribute of another block | its getter | `assumeRolePolicy: trust.json` |
| a resource outside this Stack (a `RefTo<R>` input) | `.literal(id)` | `zoneId: .literal('023e105f4ecef8ad9ca31a8372d0c353')` |
| one of a fixed set (an enum) | the member | `runtime: .providedAl2023` |
| one of several exclusive arguments (a sealed type) | the variant | `code: .filename(.literal('build/fn.zip'))` |
| a nested block | its helper class; `.new(...)` inside another block or a variant | `environment: LambdaFunctionEnvironment(...)` |
| a Terraform variable | the handle `variable<T>()` returns | `memorySize: memory` |
| a variable in an enum or `RefTo<R>` input | `.arg(handle)` | `runtime: .arg(runtimeName)` |
| a secret (a `Sensitive<T>` input) | a sensitive variable, never a literal | `value: .value(dbPassword)` |
| a reference inside a literal list or map | the getter's `.interpolation` | `{'ROLE_ARN': role.arn.interpolation}` |
| anything else Terraform evaluates | `.expression(...)` | `.expression(r'${file("trust.json")}')` |

```dart
final memory = variable<num>('memory_mb');
final runtimeName = variable<String>('runtime');
final dbPassword = variable<String>('db_password', sensitive: true);

final trust = add(
  DataAwsIamPolicyDocument(
    'trust',
    statement: [
      DataIamPolicyDocumentStatement(
        actions: .literal(['sts:AssumeRole']),
        principals: [
          .new(
            type: .literal('Service'),
            identifiers: .literal(['lambda.amazonaws.com']),
          ),
        ],
      ),
    ],
  ),
);
final role = add(AwsIamRole('hello', assumeRolePolicy: trust.json));
add(
  AwsLambdaFunction(
    'hello',
    functionName: .literal('hello'),
    role: role.ref,
    runtime: .arg(runtimeName),
    code: .filename(.literal('build/fn.zip')),
    memorySize: memory,
    environment: LambdaFunctionEnvironment(
      variables: .literal({'ROLE_ARN': role.arn.interpolation}),
    ),
  ),
);
add(
  AwsSsmParameter(
    'db_password',
    name: .literal('/hello/db_password'),
    type: .securestring,
    value: .value(dbPassword),
  ),
);
```
<!-- argument-rules:end -->

- A dot shorthand needs a context type. Spell out the class only where there is none: `final x = TfArg.literal('a');`. A reference makes Terraform order the blocks, so add `dependsOn` only for an ordering no argument shows.
- Do not declare Terraform variables. Use Dart values (constructor parameters, environment variables read in `bin/infra.dart`), not `${var.x}`.
- Do not put credentials in the stack. The provider classes leave them out on purpose; `terraform apply` reads them from the environment.
- Hand values to the app instead of re-typing them there. `addOutput('service_url', service.uri)` declares a Terraform output for a value known after apply. `addConstant('topicName', .ref(topic.name))` writes a `static const` into the file named by `appExports: AppExports('lib/generated/<stack>.app.dart')` on the `super(...)` call; `.ref` reads the literal the attribute is set to (every input has a `<input>Ref` getter, e.g. `scope.scopeId`, so the literal is written once), and synth fails when it is not one, so use `addOutput` for apply-time values. The same file has a `<Stack>Outputs` reader: the app reads an output with `<Stack>Outputs.fromEnvironment(Platform.environment).ordersTopicId` (variable `ORDERS_TOPIC_ID`) or `.fromTerraformJson(...)`, never by re-typing it. Give a Cloud Run service those variables with `env: [for (final (:name, :value) in outputEnvironment()) CloudRunV2ServiceEnv(name: .literal(name), source: .value(value))]` (written `.new(name: ..., source: ...)` inside the container), or a map-shaped environment with `environment: .new(variables: outputEnvironment().variables)` (an AWS Lambda; `environmentVariables:` on a Cloud Function), registering outputs that read the service itself after it. For a Flutter, web or CLI client, call `addDartDefineOutput()` (one output, `dart_defines`; `only:` and `name:` give each client its own) and read the values with `const <Stack>Outputs.fromDartDefine()`; the client is built with `terraform output -json dart_defines > dart_defines.json` and `flutter build web --dart-define-from-file=dart_defines.json`, never with the full `terraform output -json`, which holds the sensitive outputs.

## 5. Check it

```bash
dart analyze
dart run bin/infra.dart            # writes tf-out/main.tf.json
cd tf-out && terraform init -backend=false && terraform validate
```

## Existing Terraform

Do not rewrite an existing Terraform tree by hand. Run the migrator first; it translates every block it can, keeps the rest in Terraform verbatim, and preserves every resource address. Your job is the part it left behind.

1. **Size it.** `terradart migrate --report --dir infra` writes nothing. It lists every `resource` / `data` type with how many blocks translate and how many stay in Terraform, and why.

2. **Migrate.**

   ```bash
   dart pub global activate terradart_cli
   terradart migrate --dir infra --out infra_dart
   ```

   The package has one `Stack` per module directory (`lib/`) and a `tf-out/` tree that mirrors the source. Beside each `main.tf.json` is the **sidecar**: `terradart_leftover.tf`, `backend.tf`, `variables.tf`, `locals.tf` and `outputs.tf`, holding what did not translate. `MIGRATION.md` lists every kept block with its reason.

3. **Port the leftovers, one block at a time.** For each block in `MIGRATION.md` whose reason you can resolve (an argument the migrator had no typed slot for, a `depends_on` on a block you have since ported), look the factory up (sections 1–2), add it to the Stack with the **same `localName`** so the address does not change, and delete the block from the sidecar, along with its `addExternalBlock('<address>')` line when the Stack has one (the migrator declares every kept block the Stack reads external, or synth would report the reference as unregistered). A `locals` entry with a literal value can become a Dart `final`; drop it from `locals.tf` only once nothing left in the sidecar reads it. Leave a block in the sidecar when it has no factory (`not in any catalog`). Never copy a sensitive literal into Dart; pass it as a variable instead.

4. **Synthesize.** `cd infra_dart && dart pub get && dart analyze && dart run bin/infra.dart`

5. **Plan.** In each root under `tf-out/`, run `terraform init` and then `terraform plan`. It must report *No changes*. A diff means the port changed something, so fix the Dart rather than the plan. Do not run `terraform apply` for the user.

See [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/) for the flags (`--merge-envs` folds `envs/dev` and `envs/prod` into one Stack; `--lift-workspace` turns `terraform.workspace` into a Stack parameter).
''';
