# Migrating from terradart 0.8.0-dev to 0.9.0

This guide covers every breaking change introduced between `0.8.0-dev` and
`0.9.0`. Work through the sections in order: the Stack API changes (§1) are
quick mechanical edits; the sensitive-field correctness fix (§2) may require
an architectural decision; the naming changes (§3) are the largest surface
but are mostly mechanical.

For the full machine-readable rename table see
`packages/terradart_codegen/test/codegen/naming_audit/rename_list.json`
(481 nested-helper renames, 199 TfArg-wrap field renames, 7 enum renames).

---

## Before you start

All four packages — `terradart_annotations`, `terradart_core`,
`terradart_codegen`, and `terradart_google` — must be bumped in lockstep.
Update all four in your `pubspec.yaml` at the same time.

---

## 1. Stack API surface changes

### 1.1 `Stack.synth` is now concrete

`Stack.synth` is no longer abstract. Remove the 11-line override that
`0.x` examples carried — the base class now handles writing `main.tf.json`:

```dart
// BEFORE (0.8.0-dev) — delete this override:
@override
Future<void> synth({required String outDir}) async {
  final result = StackSynth.synth(this);
  await Directory(outDir).create(recursive: true);
  final tfFile = File('$outDir/main.tf.json');
  await tfFile.writeAsString(
    const dart_convert.JsonEncoder.withIndent('  ').convert(result.tfJson),
  );
}

// AFTER (0.9.0) — nothing. The base implementation does the same thing.
```

If you need custom file layout (e.g. writing `SynthResult.dartConstants` as
well), override `writeTo` rather than `synth`: in v0.11.0+ `synth()` is the
in-memory step that returns a `SynthResult`, and `writeTo(outDir)` is the
file-IO wrapper. Calling `synth()` from your override gives you the same
`tfJson` / `dartConstants` payload to lay out however you need.

### 1.2 `JsonEncoder` → `TfJsonEncoder`

The public JSON encoder was renamed to avoid collision with `dart:convert`.
Drop the `dart:convert` workaround import and switch to the terradart type:

```dart
// BEFORE (0.8.0-dev):
import 'dart:convert' as dart_convert;
// ...
final encoded = const dart_convert.JsonEncoder.withIndent('  ').convert(map);

// AFTER (0.9.0):
// No import needed — TfJsonEncoder is re-exported from terradart_core.
// If you called it for encoding helpers, use the static methods directly:
final encoded = TfJsonEncoder.encodeArgMap(argMap);
```

Mechanical sed recipe (safe — it only targets the qualified form):

```bash
find . -name '*.dart' \
  -exec sed -i.bak 's/dart_convert\.JsonEncoder/TfJsonEncoder/g' {} \;
```

Check for and remove orphaned `import 'dart:convert' as dart_convert;` lines
after applying the above.

### 1.3 `LocalBackend` replaces handwritten `terraform.tf`

`0.8.x` examples wrote a separate `terraform.tf` file by hand for local-state
workflows. `0.9.0` ships a typed `LocalBackend`:

```dart
// BEFORE (0.8.0-dev) — handwritten file and no backend arg:
class MyStack extends Stack {
  MyStack() : super(providers: [...]);
}
// Separate tool/terraform.tf with: terraform { backend "local" {} }

// AFTER (0.9.0) — pass it to the constructor:
class MyStack extends Stack {
  MyStack()
      : super(
          providers: [...],
          backend: const LocalBackend(),
        );
}
```

Delete the handwritten `terraform.tf` (or `tf-out/terraform.tf`) file — it
is now superseded by the `LocalBackend` block emitted into `main.tf.json`.

**State migration note.** If you were previously using a GCS backend and are
switching to `LocalBackend` for a sample or dogfood stack, Terraform requires
explicit consent:

```bash
terraform init -migrate-state   # interactive prompt to copy state locally
# or, to start fresh with no state:
terraform init -reconfigure
```

### 1.4 `Stack(devMode: true)` for sample and dogfood stacks

`devMode` is a new constructor parameter that flips `deletion_protection` to
`false` on every resource that supports it — so `terraform destroy` works
without manual overrides in development. Production stacks leave it at the
default (`false`).

```dart
// Dogfood / sample stacks:
class SampleStack extends Stack {
  SampleStack() : super(providers: [...], devMode: true);
}

// Production stacks — omit the flag (defaults to false):
class ProdStack extends Stack {
  ProdStack() : super(providers: [...], backend: const GcsBackend(bucket: '...'));
}
```

---

## 2. Synth correctness changes (sensitive fields)

### 2.1 `SensitiveLiteralError` replaces silent masking

In `0.x`, passing a literal string to a `@Sensitive`-annotated field (e.g.
`password`) caused synth to emit an empty string — which Terraform then
rejected at `apply` time with an HTTP 400 error. That silent failure is now
replaced by a `SensitiveLiteralError` thrown at synth time.

**Recovery option A — variable (recommended for production):**

```dart
// BEFORE (0.8.0-dev) — would silently produce an empty password in output:
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  password: TfArg.literal('hunter2'),  // BAD — throws SensitiveLiteralError in v1.0
)

// AFTER (0.9.0):
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  password: TfArg.variable('db_password'),  // value supplied at apply time
)
```

Then declare the variable and pass it at apply time:

```hcl
# variables.tf (or inline in your Stack if you use Variable<T>):
variable "db_password" { sensitive = true }
```

```bash
terraform apply -var="db_password=hunter2"
# or via a .tfvars file — never commit the value.
```

**Recovery option B — write-only field (simpler for one-off secrets):**

Resources that expose a write-only variant (`<field>_wo`) accept literal
values; the `_wo` fields are write-once and exempt from the sensitive check:

```dart
GoogleSqlUser(
  localName: 'app_user',
  instance: TfArg.ref(db.nameRef),
  name: TfArg.literal('app'),
  passwordWo: TfArg.literal('hunter2'),  // write-only — exempt from check
)
```

The `_wo` option is convenient for secrets that never change after initial
provisioning. Use `TfArg.variable` when the value needs to be rotated.

### 2.2 `encodeArgMapWithSensitive` signature change

If you called `TfJsonEncoder.encodeArgMapWithSensitive` directly (uncommon
— only relevant if you built a custom resource wrapper), the signature is
unchanged but the function now **throws** instead of masking. Update callers
to handle `SensitiveLiteralError`.

---

## 3. Naming changes (Plan 3)

### 3.1 Nested helper class renames

Nested helper classes are now always prefixed with the parent resource's
class name to eliminate collision between helpers from different resources
(e.g. `Template` existed in both `cloud_run` and `cloud_build`).

The 15 most commonly encountered renames from cookbook rehearsal:

| Old (0.8.0-dev) | New (0.9.0) | Barrel |
|---|---|---|
| `Settings(` | `SqlDatabaseInstanceSettings(` | `sql` |
| `IpConfiguration(` | `SqlDatabaseInstanceIpConfiguration(` | `sql` |
| `DatabaseFlag(` | `SqlDatabaseInstanceDatabaseFlag(` | `sql` |
| `Replication.` | `SecretManagerSecretReplication.` | `secret_manager` |
| `Template(` | `CloudRunV2ServiceTemplate(` | `cloud_run` |
| `ServiceContainer(` | `CloudRunV2ServiceServiceContainer(` | `cloud_run` |
| `EnvVar(` | `CloudRunV2ServiceEnvVar(` | `cloud_run` |
| `EnvVarFromLiteral(` | `CloudRunV2ServiceEnvVarFromLiteral(` | `cloud_run` |
| `EnvVarFromSecret(` | `CloudRunV2ServiceEnvVarFromSecret(` | `cloud_run` |
| `PushConfig(` | `PubsubSubscriptionPushConfig(` | `pubsub` |
| `OidcToken(` | `PubsubSubscriptionOidcToken(` | `pubsub` |
| `AlertCondition(` | `MonitoringAlertPolicyAlertCondition(` | `monitoring` |
| `ConditionThreshold(` | `MonitoringAlertPolicyConditionThreshold(` | `monitoring` |
| `Aggregation(` | `MonitoringAlertPolicyAggregation(` | `monitoring` |
| `MonitoringUptimeCheckHttpCheck(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckHttpCheck(` | `monitoring` |

Additional high-frequency renames (Cloud Run Job, Monitoring UptimeCheck):

| Old | New |
|---|---|
| `JobTemplate(` | `CloudRunV2JobJobTemplate(` |
| `TaskTemplate(` | `CloudRunV2JobTaskTemplate(` |
| `MonitoringUptimeCheckMonitoredResource(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(` |
| `MonitoringUptimeCheckResourceGroup(` | `MonitoringUptimeCheckConfigMonitoringUptimeCheckResourceGroup(` |
| `VersionTemplate(` (KMS) | `KmsCryptoKeyVersionTemplate(` |

The complete list of all 481 nested-helper renames is in
`packages/terradart_codegen/test/codegen/naming_audit/rename_list.json`
under the `nested_helper_renames` key.

### 3.2 Getter renames

| Old (0.8.0-dev) | New (0.9.0) | Notes |
|---|---|---|
| `<serviceAccount>.member` | `<serviceAccount>.iamMember` | `GoogleServiceAccount` only |

New **additive** getters (no migration needed, but useful to know):

- `GoogleCloudRunV2Service.locationRef` — `TfRef<String>` for the service
  location, useful in `GoogleCloudRunV2ServiceIamMember(location: ...)`.
- `GoogleCloudRunV2Job.locationRef` — same for jobs.

### 3.3 Enum value renames (verbose-natural)

Short abbreviated names were replaced with self-documenting spellings.

**`Comparison` enum** (barrel: `monitoring`):

| Old | New |
|---|---|
| `Comparison.lt` | `Comparison.lessThan` |
| `Comparison.gt` | `Comparison.greaterThan` |
| `Comparison.le` | `Comparison.lessThanOrEqual` |
| `Comparison.ge` | `Comparison.greaterThanOrEqual` |
| `Comparison.eq` | `Comparison.equalTo` |
| `Comparison.ne` | `Comparison.notEqualTo` |

**`Aligner` enum** (barrel: `monitoring`):

| Old | New |
|---|---|
| `Aligner.nextOlder` | `Aligner.alignNextOlder` |

### 3.4 Non-mechanical pattern changes

These three patterns cannot be handled by a regex substitution — they require
reading context and making a judgment call.

**Pattern A: `name:` field now takes `TfArg<String>`**

`CloudRunV2ServiceEnvVar.name` (and the Job equivalent `CloudRunV2JobJobEnvVar.name`)
changed from bare `String` to `TfArg<String>`. Any bare string literal must
be wrapped:

```dart
// BEFORE (0.8.0-dev):
EnvVar(
  name: 'LOG_LEVEL',
  source: EnvVarFromLiteral(TfArg.literal('info')),
)

// AFTER (0.9.0):
CloudRunV2ServiceEnvVar(
  name: TfArg.literal('LOG_LEVEL'),  // wrap with TfArg.literal
  source: CloudRunV2ServiceEnvVarFromLiteral(TfArg.literal('info')),
)
```

**Pattern B: `const` removal for classes with `TfArg<T>` fields**

Classes whose fields changed from bare Dart types (`String`, `int`, `bool`) to
`TfArg<T>` are no longer `const`-constructible. Remove `const` from any call
site where the class now has `TfArg<T>` fields:

```dart
// BEFORE (0.8.0-dev) — field types were bare primitives:
const MonitoringUptimeCheckMonitoredResource(
  type: 'uptime_url',
  labels: {'host': 'example.com'},
)

// AFTER (0.9.0) — fields are TfArg<T>; drop const, wrap values:
MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(
  type: TfArg.literal('uptime_url'),
  labels: TfArg.literal({'host': 'example.com'}),
)
```

**Pattern C: `MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource.type` is `TfArg<String>`**

Specifically — `type` was a required bare `String` and is now `TfArg<String>`.
Any use of this field needs `TfArg.literal(...)` wrapping (covered by Pattern B
above, but called out because it's a non-optional required field).

### 3.5 Bulk `find` / `sed` recipes

Run these from the root of your Dart project. The `-i.bak` flag creates
backup files (remove them with `find . -name '*.bak' -delete` afterwards).
Review the diff before committing — these are heuristic pattern substitutions,
not type-aware refactors.

```bash
# ---- SQL nested helpers ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bSettings(/SqlDatabaseInstanceSettings(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bIpConfiguration(/SqlDatabaseInstanceIpConfiguration(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bDatabaseFlag(/SqlDatabaseInstanceDatabaseFlag(/g' {} \;

# ---- Secret Manager ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bReplication\.\(auto\|userManaged\)/SecretManagerSecretReplication.\1/g' {} \;

# ---- Cloud Run v2 Service ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bTemplate(/CloudRunV2ServiceTemplate(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bServiceContainer(/CloudRunV2ServiceServiceContainer(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVar(/CloudRunV2ServiceEnvVar(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVarFromLiteral(/CloudRunV2ServiceEnvVarFromLiteral(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bEnvVarFromSecret(/CloudRunV2ServiceEnvVarFromSecret(/g' {} \;

# ---- Cloud Run v2 Job (apply after the Service renames above) ----
# Note: JobTemplate / TaskTemplate do not collide with the Service renames.
find . -name '*.dart' -exec sed -i.bak \
  's/\bJobTemplate(/CloudRunV2JobJobTemplate(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bTaskTemplate(/CloudRunV2JobTaskTemplate(/g' {} \;

# ---- Pub/Sub ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bPushConfig(/PubsubSubscriptionPushConfig(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bOidcToken(/PubsubSubscriptionOidcToken(/g' {} \;

# ---- Monitoring alert policy ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bAlertCondition(/MonitoringAlertPolicyAlertCondition(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bConditionThreshold(/MonitoringAlertPolicyConditionThreshold(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bAggregation(/MonitoringAlertPolicyAggregation(/g' {} \;

# ---- Monitoring uptime check (long names) ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckMonitoredResource(/MonitoringUptimeCheckConfigMonitoringUptimeCheckMonitoredResource(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckHttpCheck(/MonitoringUptimeCheckConfigMonitoringUptimeCheckHttpCheck(/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bMonitoringUptimeCheckResourceGroup(/MonitoringUptimeCheckConfigMonitoringUptimeCheckResourceGroup(/g' {} \;

# ---- IAM getter rename ----
# CAUTION: inspect the diff. Terraform's `member:` argument name on IAM
# binding resources is UNRELATED to the Dart getter and must NOT change.
# This recipe targets the getter call pattern `.member` (preceded by
# identifier chars, not a colon), which is safe in the vast majority of cases.
find . -name '*.dart' -exec sed -i.bak \
  's/\.member\b/.iamMember/g' {} \;

# ---- Enum: Comparison ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.lt\b/Comparison.lessThan/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.gt\b/Comparison.greaterThan/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.le\b/Comparison.lessThanOrEqual/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.ge\b/Comparison.greaterThanOrEqual/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.eq\b/Comparison.equalTo/g' {} \;
find . -name '*.dart' -exec sed -i.bak \
  's/\bComparison\.ne\b/Comparison.notEqualTo/g' {} \;

# ---- Enum: Aligner ----
find . -name '*.dart' -exec sed -i.bak \
  's/\bAligner\.nextOlder\b/Aligner.alignNextOlder/g' {} \;

# ---- Cleanup backups ----
find . -name '*.bak' -delete
```

**After running the recipes:** run `dart analyze` and fix any remaining
errors. The recipes above cover the 15 most common renames; projects that
use Compute, Cloud Build, Firestore, or Cloud Functions helpers will also
need renames from the full JSON.

---

## 4. Cookbook example

The `terradart-cookbook` repository's `single-project-app` recipe has been
fully migrated to the v0.9.0 API surface. See the `v0.9.0` tag in that repo
for a working end-to-end reference, including:

- `Stack(devMode: true)` usage
- `LocalBackend` constructor arg instead of handwritten `terraform.tf`
- All nested helper class renames applied
- `TfArg.variable` for the database password

---

## Quick reference: what changed and why

| Change | Why |
|---|---|
| `Stack.synth` concrete | Removes boilerplate that every example duplicated |
| `JsonEncoder` → `TfJsonEncoder` | Avoids shadowing `dart:convert.JsonEncoder` |
| `LocalBackend` typed | Consistent with `GcsBackend`; eliminates handwritten HCL |
| `Stack(devMode: true)` | Keeps `deletion_protection` out of dogfood teardown loops |
| `SensitiveLiteralError` | v0.x silent empty-string masking caused apply-time 400s |
| Nested helper prefixes | Eliminates cross-barrel name collisions (e.g. `Template`) |
| `.member` → `.iamMember` | Avoids confusion with Terraform's `member:` argument |
| Verbose enum names | `Comparison.gt` is cryptic; `greaterThan` is self-documenting |
