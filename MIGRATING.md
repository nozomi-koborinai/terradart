# Migrating terradart

## 0.29.x → next release

### `terradart_google` / `terradart_google_beta`: `hashicorp/google` 8.x

`terradart_google` and `terradart_google_beta` now target provider 8.x. The
stack's `required_providers` pin moves from `~> 7.0` to `~> 8.0` for both
`google` and `google-beta`. The provider's own
[v8 upgrade guide](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/version_8_upgrade)
applies in full; the steps below are the TerraDart side of it.

#### Upgrade steps

1. **Take removed resource types out of state first, on your current
   version.** Terraform on provider 8.x cannot read a resource whose type 8.0
   deleted ([list](#terradart_google-factories-hashicorpgoogle-80-removes)).
   Keep the cloud resource with `terraform state rm <address>`, or replace it
   with its successor and apply while you are still on 0.29.x.
2. **Raise the constraint by hand.** A caret constraint never crosses a
   minor below 1.0, so `terradart_google: ^0.29.0` does not pull 0.30.0 and
   `dart pub upgrade` alone changes nothing. Move every TerraDart package in
   `pubspec.yaml` to `^0.30.0` together (they release in lockstep), then run
   `dart pub upgrade`.
3. **Fix the compile errors.** Each maps to one row of
   [Dart API changes](#dart-api-changes); a removed factory is in the
   [removed list](#terradart_google-factories-hashicorpgoogle-80-removes).
4. **Synthesize, then upgrade the provider lock.** The new
   `required_providers` (`~> 8.0`) no longer matches the 7.x version in
   `.terraform.lock.hcl`, so a plain `terraform init` fails with *locked
   provider … does not match configured version constraint*. Run
   `terraform init -upgrade` once and commit the updated lock file. Every
   other module in the same root module has to accept provider 8.x too.
5. **Run `terraform plan` and read it before you apply.** 8.0 changes some
   defaults with no Dart signal (see
   [Behaviour changes](#behaviour-changes-the-compiler-cannot-show)); a
   routine plan that suddenly wants to update or replace a load balancer,
   an accelerator-backed instance or a dataset comes from those. Set the old
   value explicitly in the Stack when you want to keep it, and apply only
   once the plan shows what you expect.

#### Dart API changes

| Change | What to do |
|--------|------------|
| `GoogleSecretManagerSecretVersion` takes a required sealed `payload:` instead of `secretData` / `secretDataWo` / `secretDataWoVersion` (8.0 makes the version required with `secret_data_wo`, and a string) | `payload: SecretManagerSecretVersionWriteOnlyPayload(secretDataWo: ..., secretDataWoVersion: TfArg.literal('1'))`, or the deprecated `SecretManagerSecretVersionPlaintextPayload(secretData: ...)`. The version was `int`: `TfArg.literal(1)` → `TfArg.literal('1')`; `'0'` counts as unset. State migrates automatically. |
| `BigqueryDataTransferConfigSensitiveParams` takes a required sealed `secretAccessKey:` (8.0 makes `secret_access_key` / `secret_access_key_wo` exactly-one-of) | `BigqueryDataTransferConfigSensitiveParams(secretAccessKey: BigqueryDataTransferConfigWriteOnlySecretAccessKey(secretAccessKeyWo: ..., secretAccessKeyWoVersion: TfArg.literal('1')))`, or `BigqueryDataTransferConfigPlaintextSecretAccessKey(secretAccessKey: ...)`. The version is a string now (was `num`). |
| `MonitoringUptimeCheckConfigHttpAuthInfo` takes a required sealed `password:` (8.0 makes `password` / `password_wo` exactly-one-of) | `password: MonitoringUptimeCheckConfigHttpAuthWriteOnlyPassword(passwordWo: ..., passwordWoVersion: ...)`, or `MonitoringUptimeCheckConfigHttpAuthPlaintextPassword(password: ...)`. |
| `GoogleWorkflowsWorkflow.sourceContents` is required | Pass the workflow definition. |
| `GoogleIamWorkforcePoolProviderScimTenant.claimMapping` is required | Pass the SCIM attribute mapping, e.g. `{'google.subject': 'user.externalId', 'google.group': 'group.externalId'}`. |
| `GoogleCloudRunV2WorkerPool.customAudiences` and the `DataGoogleCloudRunV2WorkerPool.customAudiences` getter are removed | Drop them; the API no longer accepts custom audiences on worker pools. |
| `GoogleIntegrationsClient.runAsServiceAccount` is removed | Drop it. |
| `DataGoogleBackupDrBackupPlanAssociations.resourceType` and `DataGoogleBackupDrDataSourceReferences.resourceType` are removed | Drop them. |
| `GoogleComputeReservation.reservationBlockCount` (and the data source getter) is removed | Drop the reference. |
| `DataGoogleContainerCluster.skipNodePoolRefresh` getter is removed (8.4) | Drop the reference. |
| The 16 types of [Beta-only types now in `terradart_google`](#beta-only-types-now-in-terradart_google) are gone from `terradart_google_beta` | Import them from `terradart_google`. |

Blocks 8.0 turned from lists into sets
(`compute_service_attachment.nat_subnets` / `consumer_reject_lists`,
`container_cluster.*_config.enable_components`,
`cloud_security_compliance_framework.cloud_control_details`) keep their Dart
`List` type. A Terraform expression that indexes one (`...nat_subnets[0]`)
needs `tolist(...)` now.

#### Behaviour changes the compiler cannot show

- **`load_balancing_scheme` defaults to `EXTERNAL_MANAGED`** on
  `GoogleComputeBackendService` and `GoogleComputeGlobalForwardingRule`
  (was `EXTERNAL`). Leaving it unset now plans a change or a replacement of
  a classic load balancer; set `loadBalancingScheme: 'EXTERNAL'` to keep it.
- **`guest_accelerator` on `GoogleComputeInstance`** can now be updated to
  `count = 0` in place, which detaches the accelerators. Removing the block
  still detaches nothing (the field is computed); set `count = 0` explicitly.
- **`GoogleBigqueryDataset.defaultCollation`** is no longer computed: a
  dataset whose collation was set outside Terraform now shows a diff until
  the Stack sets it.
- **GKE node pool `name_prefix`** may now be up to 31 characters (was 14).
  A prefix longer than 14 characters gets a shorter, more collision-prone
  random suffix.
- **`GoogleComputeServiceAttachment.consumerAcceptLists`**: the
  `project_id_or_num`, `network_url` and `endpoint_url` fields default to
  `""` instead of null.
- **Nested fields 8.0 removed that TerraDart passes as raw maps** do not
  fail to compile; `terraform validate` rejects them. Drop
  `http_get.http_headers.port` from Cloud Run v2 worker pool probes (and set
  `http_headers.name`, now required), `actions.publish_findings_to_cloud_data_catalog`
  from `GoogleDataLossPreventionJobTrigger` (use
  `publish_findings_to_dataplex_catalog`), and
  `node_config.host_maintenance_policy` from `GoogleContainerCluster` /
  `GoogleContainerNodePool` (removed in 8.4). The
  `logical_structure[*].zones[*].attachment` output of
  `GoogleComputeInterconnectAttachmentGroup` is gone too.

#### Beta-only types now in `terradart_google`

Provider 8.2 and 8.3 promoted 16 beta-only types to GA, so their factories
move from `terradart_google_beta` to `terradart_google` (same fields; one
constructor change, noted after the list):

- `GoogleBiglakeHiveCatalog`, `GoogleBiglakeHiveDatabase`,
  `GoogleBiglakeHiveTable`, and their `*IamMember` / `*IamBinding` /
  `*IamPolicy` factories (`package:terradart_google/biglake.dart`)
- `GoogleObservabilityFolderSettings`,
  `GoogleObservabilityOrganizationSettings`,
  `GoogleObservabilityProjectSettings`
  (`package:terradart_google/observability.dart`)
- `GoogleComputeNetworkEdgeSecurityService`
  (`package:terradart_google/compute.dart`)

`package:terradart_google_beta/biglake.dart` and
`package:terradart_google_beta/observability.dart` are gone. Change the
import; the compiler finds every use. `GoogleBiglakeHiveTable` also takes
typed blocks now: `storageDescriptor` is a
`BiglakeHiveTableStorageDescriptor` (with
`BiglakeHiveTableStorageDescriptorColumns` entries) and `partitionKeys` a
`List<BiglakeHiveTablePartitionKeys>`, instead of `TfArg` maps. The synth
output is the same. The factories no longer pin
`provider = google-beta`, so the resources move to the `google` provider
(`GoogleProvider` must be in the Stack). The type and schema are identical
in both providers, so Terraform switches the provider in state without
replacing anything; confirm that `terraform plan` shows no replacement
before you apply. Pass `provider: 'google-beta'` to keep a resource on the
beta provider.

#### `terradart-migrate` users

Migrate HCL that already runs on provider 8.x. The migrator emits the
`terradart_google` pin (`~> 8.0`) and warns when the source pins something
else (*required_providers.google pins "~> 7.0"; the Stack emits the
terradart_google pin "~> 8.0"*); a resource of a type 8.0 removed has no
factory and stays in the sidecar. So upgrade the source first — the steps of
the provider's v8 upgrade guide, `terraform init -upgrade`, and a plan with
*No changes* — then migrate, and expect *No changes* again from the
migrated package. A package you migrated earlier follows the upgrade steps
above like any other Stack.

### `terradart_google`: factories `hashicorp/google` 8.0 removes

Provider 8.0 deletes these Terraform types, so their factories are gone from
`terradart_google` with no deprecation release (a factory for a type the
provider no longer has cannot synthesize a plan). The Dart compiler points at
every use:

| Removed factory (Terraform type) | Move to |
|----------------------------------|---------|
| `GoogleBeyondcorpAppConnection`, `GoogleBeyondcorpAppConnector`, `GoogleBeyondcorpAppGateway` (`google_beyondcorp_app_*`) and their `DataGoogleBeyondcorpApp*` data sources | `GoogleBeyondcorpSecurityGateway` / `GoogleBeyondcorpSecurityGatewayApplication` |
| `GoogleIapBrand`, `GoogleIapClient` (`google_iap_brand`, `google_iap_client`) and `DataGoogleIapClient` | manage the OAuth brand and clients in the Google Cloud console |
| `GoogleMlEngineModel` (`google_ml_engine_model`) | Vertex AI (`GoogleVertexAiEndpoint`) |
| `GoogleNotebooksEnvironment`, `GoogleNotebooksInstance`, `GoogleNotebooksRuntime` (`google_notebooks_*`), their `*IamMember` / `*IamBinding` / `*IamPolicy` factories and the `DataGoogleNotebooks*IamPolicy` data sources | `GoogleWorkbenchInstance` (+ `GoogleWorkbenchInstanceIam*`) |
| `GoogleVertexAiSchedule` (`google_vertex_ai_schedule`) | `GoogleColabSchedule` |

`package:terradart_google/notebooks.dart` is gone with them; drop the import.

**Before you upgrade**, take these resources out of Terraform state, or
Terraform on provider 8.x cannot read them:

- To keep the cloud resource and stop managing it:
  `terraform state rm <address>` for each of them.
- To replace it with the successor: create the successor first on your
  current version, move the workload, then delete the old resource from the
  Stack and apply — all before you upgrade.

### `terradart_cloudflare` follows `cloudflare/cloudflare` 5.26.0

**Breaking (`terradart_cloudflare`)** — the provider pin moves from `5.23.0`
to `5.26.0`, and the factories follow the provider's own schema changes
(upstream ships breaking changes in 5.24.0; see its
[CHANGELOG](https://github.com/cloudflare/terraform-provider-cloudflare/blob/v5.26.0/CHANGELOG.md)).
Synth output now pins `version = "5.26.0"`; run `terraform init -upgrade`.

| Before (5.23.0) | After (5.26.0) |
|-----------------|----------------|
| `DataCloudflareRateLimits` | removed upstream; read one rule with `DataCloudflareRateLimit` |
| `CloudflareRateLimit(...).id`, `.description`, `.disabled` (and the `bypass` block) | removed upstream; `rateLimitId:` names the rule |
| `CloudflareFlagshipFlag(flagKey: ...)` | removed; the flag is identified by `key:`, and `.id` is a computed getter |
| `CloudConnectorRulesRules(provider: ...)` | `CloudConnectorRulesRules(cloudConnectorRulesProvider: ...)` |
| `PipelineSinkSchema(format: PipelineSinkSchemaFormat(...))`, `PipelineStreamSchema(format: PipelineStreamSchemaFormat(...))` | the nested `format` is gone from `schema`; drop it |
| `AiSearchInstanceSourceParamsWebCrawler(storeOptions: ...)` and `CloudflareAiSearchInstance.vectorizeName` | removed; `discoverOptions:` (`AiSearchInstanceSourceParamsWebCrawlerDiscoverOptions`) is the new crawl setting |
| `CloudflareEmailRoutingDns.success`, `DataCloudflareEmailRoutingDns.success` | removed |
| `DataCloudflareHostnameTlsSetting(...)` returning `.hostname` / `.id` | `hostname:` is a required input; read `settingId` instead of `id` |
| `DataCloudflareZeroTrustResourceLibraryApplication(id: ...)`, `.intelId` | `id` is computed now, so look the application up with `filter:`; `.intelId` is removed |
| `DataCloudflareZeroTrustResourceLibraryCategory(id: TfArg<String>)` | `id: TfArg<num>` |
| optional `zoneId:` / `accountId:` on `DataCloudflareCloudConnectorRules`, `DataCloudflareEmailRoutingDns`, `DataCloudflareEmailSecurityBlockSender(s)`, `DataCloudflareMagicTransitConnector(s)`, `DataCloudflareRegistrarDomains` | required |

The 14 resources and 22 data sources that 5.24.0–5.26.0 add get factories
too (`CloudflareCtAlerting`, `CloudflareFieldExtractor`,
`CloudflareZeroTrustCasbPolicy`, `CloudflareZoneTracing`, ...), with new
`ct`, `field`, `nel` and `precursor` barrels.

### `terradart_cloudflare` inputs with a fixed value set are enums

**Breaking (`terradart_cloudflare`)** — every constructor slot and helper
field whose provider attribute takes one of a fixed set of values is now a
generated `TerraformEnum` instead of a `String`: 538 string slots and 41
list slots across resources, data sources and their nested helpers, with
579 new enums. The value sets come from the provider's own validators
(`stringvalidator.OneOf`) and its `Available values:` descriptions at the
pinned version. Synth output is unchanged: each member synthesizes its
Terraform value.

| Before | After |
|--------|-------|
| `CloudflareDnsRecord(type: TfArg.literal('CNAME'), ...)` | `CloudflareDnsRecord(type: TfArg.literal(DnsRecordType.cname), ...)` |
| `AccessRuleConfiguration(target: TfArg.literal('ip'), ...)` | `AccessRuleConfiguration(target: TfArg.literal(AccessRuleConfigurationTarget.ip), ...)` |
| `CloudflareHealthcheck(checkRegions: TfArg.literal(['WNAM']), ...)` | `CloudflareHealthcheck(checkRegions: [TfArg.literal(HealthcheckCheckRegions.wnam)], ...)` |
| `R2BucketCorsRulesAllowed(methods: TfArg.literal(['GET']), ...)` | `R2BucketCorsRulesAllowed(methods: [TfArg.literal(R2BucketCorsRulesAllowedMethods.get)], ...)` |

Replace each string with the enum member named after it; the analyzer
names the enum type at every call site. A list of values becomes a Dart
list of `TfArg` elements, so one element can still be a reference. A value
that is not a Dart identifier gets a spelled-out member name (`<` → `lt`,
`<=` → `lte`, `1.2` → `v1p2`). A slot still takes `TfArg.expression(...)`
or a reference to another resource's output.

`terradart-migrate` maps the values in existing Terraform onto the enums,
ignoring case: `type = "cname"` becomes `DnsRecordType.cname`, which
synthesizes `"CNAME"`, and the report warns about each value it
normalized, because `terraform plan` shows the new spelling as a change
wherever the provider compares the value case-sensitively.

### `terradart_appwrite` inputs with a fixed value set are enums

**Breaking (`terradart_appwrite`)** — 23 string slots across 17 resources
take a generated `TerraformEnum` instead of a `String`: the 21 the
provider's validators restrict (`stringvalidator.OneOf` at the pinned
`2.0.0-beta.1`), plus `AppwriteMessagingProvider.type` and
`AppwriteTablesdbColumn.type`, whose value sets the provider enforces when
it creates the resource. Synth output is unchanged.

| Before | After |
|--------|-------|
| `AppwriteMessagingProvider(type: TfArg.literal('smtp'), ...)` | `AppwriteMessagingProvider(type: TfArg.literal(MessagingProviderType.smtp), ...)` |
| `AppwriteTablesdbColumn(type: TfArg.literal('enum'), ...)` | `AppwriteTablesdbColumn(type: TfArg.literal(TablesdbColumnType.enumCase), ...)` |
| `AppwriteStorageBucket(compression: TfArg.literal('gzip'), ...)` | `AppwriteStorageBucket(compression: TfArg.literal(StorageBucketCompression.gzip), ...)` |
| `AppwritePostgresqlDatabase(syncMode: TfArg.literal('quorum'), ...)` | `AppwritePostgresqlDatabase(syncMode: TfArg.literal(PostgresqlDatabaseSyncMode.quorum), ...)` |
| `AppwriteMysqlBackupStorage(storageProvider: TfArg.literal('s3'), ...)` | `AppwriteMysqlBackupStorage(storageProvider: TfArg.literal(MysqlBackupStorageStorageProvider.s3), ...)` |

The other typed slots: `status` / `maintenanceWindowDay` on the three
`Appwrite*Database` resources, `type` on the `Appwrite*BackupPolicy`
resources, `mode` on `Appwrite*Pooler`, `sourceType` on
`AppwriteFunctionDeployment` / `AppwriteSiteDeployment`, and
`AppwriteProxyRule.type`. The analyzer names the enum at every call site.
`terradart-migrate` maps existing values onto the members, as for
Cloudflare.

### `terradart-coverage` retired

**`terradart-coverage` is retired** — the `terradart_coverage` package, its
release binaries and its Homebrew formula are gone. The Dart packages you
depend on are unchanged. If you installed it:

```sh
brew uninstall terradart-coverage
```

`terradart-migrate --report` replaces it. It reads the same `.tf` / `.tf.json`
source with no `terraform` run, and writes nothing:

| `terradart-coverage` | `terradart-migrate` |
|----------------------|---------------------|
| `terradart-coverage` / `--dir <dir>` | `terradart-migrate --report` / `--report --dir <dir>` |
| `--json` | `--report --json` |
| "Supported" / "Not in catalog" per type | per type: blocks that translate, blocks kept in Terraform (each with its reason), `not in any catalog` |
| "Not analyzed" (remote module) | "Not scanned" |
| `terraform show -json` piped in | not supported: the report reads source. A `count` / `for_each` that is not a literal counts once |
| `package:terradart_coverage` (`scanConfigDir`, `buildCoverageReport`) | `package:terradart_migrate` (`scanModuleTree`, `migrateTree`, `MigrationCoverage.of`) |

A file that does not parse now stops the report with its error (exit 65),
where `terradart-coverage` skipped it.

### `terradart-migrate` flags removed

`--update`, `--in-place`, `--allow-todo` and `--inline-locals` are gone; each
now exits 64. Every migration writes what stays in Terraform to the sidecar,
and finishing it is an edit to the Stack, checked by `terraform plan`:

| Removed flag | Instead |
|--------------|---------|
| `--update <package>` | port the sidecar block into the Stack by hand (`terradart-migrate --report` over the sidecar files shows what translates today), delete it from the sidecar, synthesize, plan |
| `--in-place` | delete the migrated blocks from your source tree yourself, or retire it once the package plans with *No changes* |
| `--allow-todo` | the sidecar: every kept block is listed in `MIGRATION.md` with its reason |
| `--inline-locals` | declare the literal `locals` as Dart `final`s in the Stack and drop them from `locals.tf` |

On the library side `migrateModule` / `migrateTree` lose `allowTodo` and
`inlineLocals`, `MigrationResult.sidecar` and `MigratedModule.sidecar` are
never null, and `rerunProject`, `writeRerun`, `rewriteInPlace` and their
types are removed. The report JSON drops `allowTodo`, `planDiffers` and
`todos`.

### `terradart-migrate` moves from Homebrew to pub.dev

The release binaries and the `nozomi-koborinai/tap/terradart-migrate` formula
are gone; `terradart-migrate` is a pub.dev package now. Switch with:

```sh
brew uninstall terradart-migrate
dart pub global activate terradart_migrate
```

The executable keeps its name and flags. It needs a Dart SDK on the machine,
and `~/.pub-cache/bin` on your `PATH`.

## 0.28.x → 0.29.0

Two breaking changes, neither of which changes synthesized JSON: an import
move for `TimeProvider` / `TimeSleep`, and the retirement of the optional
`terradart-mcp` binary. Everything else in 0.29.0 is additive (the new
`terradart_aws` package among it).

### `terradart-mcp` retired

**`terradart-mcp` is retired.** The `terradart_agent` package, the `terradart-mcp` binary and its Homebrew formula are gone; the Dart packages you depend on are unchanged. If you installed it:

```sh
brew uninstall terradart-mcp
```

and remove the `terradart` entry (`"command": "terradart-mcp"`) from your MCP client configuration (`.mcp.json`, `.cursor/mcp.json`, `claude mcp remove terradart`, ...).

Give your coding agent the [TerraDart Agent Skill](skills/terradart/SKILL.md) instead (`npx skills add nozomi-koborinai/terradart --skill terradart`). It points the agent at what the MCP tools used to return, for every provider package rather than only `terradart_google`:

| `terradart-mcp` tool | Replacement |
|----------------------|-------------|
| `list_resources`, `list_barrels`, `get_resource_schema` | the package's generated `lib/src/_catalog.g.dart` and wrapper sources, or the [coverage page](https://terradart.dev/docs/coverage/) |
| `get_quickstart` | the CI-validated [`examples/`](examples/) |
| `check_coverage` | the `terradart-coverage` CLI |
| `migrate_module` | the `terradart-migrate` CLI |

### `TimeProvider` / `TimeSleep` moved to `terradart_time`

They are no longer part of `terradart_google`, so a stack on any provider
package can use them. Add the package, at the same caret as your
`terradart_google` dependency (the workspace releases in lockstep), and
change the import:

```yaml
dependencies:
  terradart_google: ^0.29.0
  terradart_time: ^0.29.0
```

```dart
// Before
import 'package:terradart_google/time.dart';

// After
import 'package:terradart_time/terradart_time.dart';
```

The classes, their parameters and the synthesized JSON are unchanged.
`Apis.enable` still inserts the propagation `TimeSleep` and still throws
`StateError` unless `const TimeProvider()` is in `Stack.providers`.

A package generated by an earlier `terradart-migrate` imports
`package:terradart_google/time.dart` wherever the source had a `time_sleep`;
apply the same two edits to it. Migrations run with 0.29.0 emit the new
import and dependency themselves, so an AWS or Cloudflare stack no longer
pulls in `terradart_google` just for the wait.

## 0.27.0 → 0.28.0

**`terradart_core`** — `TfArg` gains a fourth variant, `TfArgExpression`
(`TfArg.expression(...)`): a raw Terraform expression, emitted verbatim.
`TfArg` is sealed, so an exhaustive `switch` over its subtypes needs one
more case:

```dart
// Before
switch (arg) {
  case TfArgLiteral(:final value): ...
  case TfArgRef(:final ref): ...
  case TfArgVariable(:final name): ...
}

// After
switch (arg) {
  case TfArgLiteral(:final value): ...
  case TfArgRef(:final ref): ...
  case TfArgVariable(:final name): ...
  case TfArgExpression(:final template): ...
}
```

Nothing changes for code that only constructs arguments. Two synth
behaviours are new, both additive:

- the `var.<name>` references inside a `TfArg.expression` template are
  checked against the Stack's declarations, as `TfArg.variable` is —
  declare them with `addVariable` or `addExternalVariable`;
- a nested sensitive field accepts any Terraform template (a string holding
  an unescaped `${ ... }` or `%{ ... }` anywhere), where it used to accept
  only a string *starting* with `${`.

Where you wrote `TfArg.literal(r'${...}')` to smuggle an expression through
a string argument, write `TfArg.expression(r'${...}')`; the literal form
still works on non-sensitive string arguments.

**`terradart_core`** — `StackProvider` gains `String? get alias`. Every
provider class in the workspace implements it; a hand-written
`StackProvider` implementation needs the getter (`null` for the default
configuration):

```dart
final class MyProvider implements StackProvider {
  const MyProvider({this.alias});

  @override
  final String? alias;
  // providerName, source, versionConstraint, configArgs as before
}
```

That is the whole breaking surface. Provider aliases are now end-to-end
(#666): register a second configuration with `alias:` and select it on a
resource with the `provider:` parameter every curated factory and data
source now takes:

```dart
final class MultiRegionStack extends Stack {
  MultiRegionStack({required String projectId})
      : super(providers: [
          GoogleProvider(project: projectId, region: 'asia-northeast1'),
          GoogleProvider(alias: 'eu', project: projectId, region: 'europe-west1'),
          GoogleBetaProvider(project: projectId),
        ]) {
    add(GoogleStorageBucket(
      localName: 'assets_eu',
      name: TfArg.literal('my-app-assets-eu'),
      location: TfArg.literal('EUROPE-WEST1'),
      provider: 'google.eu', // provider = google.eu
    ));
    add(GooglePubsubTopic(
      localName: 'preview',
      name: TfArg.literal('preview'),
      provider: 'google-beta', // a GA type on the registered beta provider
    ));
  }
}
```

Synth changes, additive for a Stack that registers each provider once:

- the `provider` block is emitted as a list when a name has more than one
  configuration — Terraform's JSON form for aliases:
  `"google": [{"project": "p"}, {"alias": "eu", "project": "p", "region": "europe-west1"}]`.
  A single default configuration keeps the object form it had;
- synth rejects a `provider:` with no matching registration, the same
  provider registered twice without an alias (or with the same alias
  twice), and an alias that is not a Terraform identifier.

**`terradart_core`** — `Stack.addMoved(from, to)` records a
`moved { from = ... to = ... }` block (additive, #663): synth emits the
entries under the top-level `moved` key, so a renamed resource — or a
`count` / `for_each` instance unrolled into its own resource — keeps its
state instead of being destroyed and re-created. `to` must name a resource
of the Stack (or lie inside a `module.` call); synth checks it, as Terraform
would.

```dart
add(GooglePubsubTopic(localName: 'orders_0', name: TfArg.literal('orders-0')));
addMoved('google_pubsub_topic.orders[0]', 'google_pubsub_topic.orders_0');
```

**`terradart_core`** — three additions that turn migrator blockers into
translations (#671), all additive:

- **`timeouts:`** on every curated factory and data source, mirroring
  `lifecycle`. `TfTimeouts` carries the Go duration strings Terraform
  writes; which operations a type declares is `terraform validate`'s
  business, not synth's:

  ```dart
  add(GoogleStorageBucket(
    localName: 'assets',
    name: TfArg.literal('my-app-assets'),
    location: TfArg.literal('ASIA-NORTHEAST1'),
    timeouts: const TfTimeouts(create: '10m', read: '5m', update: '10m'),
  ));
  ```

  `TfTimeouts.of(create: Duration(minutes: 10))` builds one from
  `Duration`s (rendered as whole seconds). A hand-written `Resource`
  subclass gains the parameter for free; a hand-written *factory* that
  wants to expose it forwards `super.timeouts` like `super.lifecycle`.

- **`TfArg.workspace()`** — `${terraform.workspace}` under a name.
  Sugar over `TfArg.expression`; use `TfArg.expression` to interpolate the
  workspace into a larger string.

- **Partial backend configuration**: every field of `GcsBackend` and
  `S3Backend` is optional now, so a block whose values arrive at
  `terraform init -backend-config` time is expressible —
  `const GcsBackend()` emits `backend "gcs" {}`. Passing them still works
  exactly as before.

**`terradart_core`** — `Stack.addModule(...)` registers a `ModuleCall`
(additive, #665): a `module "<name>" { ... }` block as a Dart value. Synth
emits the calls under the top-level `module` key, and reads a module's
outputs back as `TfRef`s, so they flow into any `TfArg` slot like a
resource attribute.

```dart
final naming = addModule(ModuleCall(
  localName: 'naming',
  source: '../modules/naming',
  inputs: {'env': TfArg.literal('prod')},
));
add(GooglePubsubTopic(
  localName: 'orders',
  name: TfArg.ref(naming.output<String>('topic_name')),
));
```

A root that *only* calls modules needs no provider of its own —
`Stack(providers: [])` now synthesizes when the stack registers a
`ModuleCall` and no resource or data source, and the `terraform` block
omits `required_providers` instead of emitting an empty one; the child
modules pin what they use. A stack with a resource still needs its
provider registered, as before.

`source` is copied verbatim and Terraform resolves it relative to the
directory the Stack synthesizes into (`tf-out/`), so a local module lives
beside that directory, not beside the Dart. `version`, `providers`,
`dependsOn`, `count` and `forEach` cover the rest of the `module` block;
an input named like one of those meta-arguments is rejected at construction,
and synth checks that every `providers` value names a registered provider
configuration.

`terradart-migrate` now translates `module` blocks instead of leaving them
in the sidecar, and generates a typed wrapper per local module directory
from its `variable` and `output` blocks
(`ServiceAccountModule(localName: 'sa_bff', source: '../modules/service_account', accountId: ...)`,
`sa.member`). Re-running the migrator on a tree migrated with 0.27.0 moves
those calls out of `terradart_leftover.tf` and into the Stack; the plan is
unchanged either way, since the address keeps its `module.<name>.` prefix.

## 0.26.0 → 0.27.0

**Breaking (`terradart_core`)** — synth now refuses to emit a config whose
`TfArg.variable('<name>')` references have no matching declaration. Before,
such a config synthesised cleanly and failed later at `terraform plan` with
*Reference to undeclared input variable*.

Declare the variable on the Stack:

```dart
// Before — the declaration lived in a hand-written file, or nowhere.
password: TfArg.variable('db_password'),

// After — declare it alongside the reference.
addVariable(
  'db_password',
  const TfVariable(type: 'string', sensitive: true),
);
password: TfArg.variable('db_password'),
```

Synth emits the collected declarations under the top-level `variable` key of
`main.tf.json`, and omits the key when a stack declares none (Terraform
rejects an empty `variable` block).

**If your `variable` blocks live in a hand-written file** beside the
generated `main.tf.json` — a legitimate setup, since Terraform merges every
`.tf` / `.tf.json` in the module directory, and the only way to express what
`TfVariable` does not model such as `validation { ... }` blocks — register
the name instead of moving the block. Synth then accepts the reference and
emits nothing for it, so there is no duplicate declaration:

```dart
addExternalVariable('db_password');
```

The reference check still catches typos in every other name.

**Delete any `variables.tf.json` you were writing by hand.** If you followed
the previous pattern — writing a second JSON file next to the generated
`main.tf.json` after `writeTo()` — that file is still on disk, and synth does
not remove it. Once the same names are declared through `addVariable`,
Terraform sees both files and fails:

```
Error: Duplicate variable declaration

  on variables.tf.json line 3, in variable:
A variable named "ops_folder_id" was already declared at main.tf.json.
```

Remove the stale file once (`rm tf-out/variables.tf.json`); nothing
regenerates it.

---

## 0.25.3 → 0.26.0

**Breaking (`terradart_cloudflare`)** — `CloudflareZone.account` is a typed
`ZoneAccount` helper instead of `TfArg<Map<String, dynamic>>`. Nested
plugin-framework objects across the filled `5.23.0` catalog are typed helper
classes, not `TfArg<Map<...>>`.

```dart
// Before
CloudflareZone(
  localName: 'main',
  name: TfArg.literal('example.com'),
  account: TfArg.literal({'id': accountId}),
);

// After
CloudflareZone(
  localName: 'main',
  name: TfArg.literal('example.com'),
  account: ZoneAccount(id: TfArg.literal(accountId)),
);
```

`CloudflareDnsRecord` now exposes typed `data` (`DnsRecordData`), `settings`
(`DnsRecordSettings`), and `private_routing` slots that were previously
omitted from the curated constructor.

`^0.25.x` patches on pub.dev stay compatible with the previous
`TfArg<Map>` zone account.

---

## 0.23.0 → 0.24.0

**Breaking** — 19 resources that previously took an opaque, hand-shaped
`TfArg<Map<String, dynamic>>?` (or `TfArg<List<Map<String, dynamic>>>?` for a
repeated block) for a top-level nested block now take a typed helper class
(or `List<...>` of one) instead. The serialized Terraform JSON is
**semantically unchanged**: the typed `encode()` writes fields in a fixed
alphabetical order, so the JSON object *key order* may differ from what your
hand-written map produced — key order carries no meaning in Terraform. Only
the Dart-side authoring API narrows, from an untyped map literal to a
generated `@immutable` class with named fields, `TerraformEnum` members
where the schema documents finite values, and its own `encode()`.

One value-representation note: attributes whose schema type is `map(string)`
now require string values at compile time. If you previously passed a number
in such a map (e.g. `GoogleAppEngineServiceSplitTraffic`'s
`split.allocations: {'v1': 1.0}`), it becomes `{'v1': '1.0'}` — Terraform
treats a JSON number and a JSON string identically for a string-typed
attribute, so the plan/apply behavior does not change.

New type names follow `<FactoryNameWithoutGoogle><BlockPathInPascalCase>`
(e.g. `google_app_engine_domain_mapping`'s `ssl_settings` block →
`AppEngineDomainMappingSslSettings`); let your IDE's autocomplete on the
constructor parameter's expected type find the exact name rather than
guessing it.

### Before / after: `google_app_engine_domain_mapping.ssl_settings`

```dart
// Before
GoogleAppEngineDomainMapping(
  localName: 'demo',
  domainName: TfArg.literal('example.com'),
  sslSettings: TfArg.literal({'ssl_management_type': 'AUTOMATIC'}),
);

// After
GoogleAppEngineDomainMapping(
  localName: 'demo',
  domainName: TfArg.literal('example.com'),
  sslSettings: AppEngineDomainMappingSslSettings(
    sslManagementType: TfArg.literal(
      AppEngineDomainMappingSslSettingsSslManagementType.automatic,
    ),
  ),
);
```

### Retyped top-level parameters

| Factory | Retyped params |
| --- | --- |
| `GoogleAccessContextManagerAccessLevel` | `basic`, `custom` |
| `GoogleAccessContextManagerServicePerimeter` | `spec`, `status` |
| `GoogleAppEngineDomainMapping` | `sslSettings` |
| `GoogleAppEngineFlexibleAppVersion` | `livenessCheck`, `readinessCheck`, `vpcAccessConnector` |
| `GoogleAppEngineServiceNetworkSettings` | `networkSettings` |
| `GoogleAppEngineServiceSplitTraffic` | `split` |
| `GoogleAppEngineStandardAppVersion` | `handlers`, `deployment`, `entrypoint`, `automaticScaling`, `manualScaling`, `vpcAccessConnector` |
| `GoogleBinaryAuthorizationPolicy` | `admissionWhitelistPatterns`, `clusterAdmissionRules`, `defaultAdmissionRule` |
| `GoogleDataplexAsset` | `discoverySpec`, `resourceSpec` |
| `GoogleDataplexDatascan` | `data`, `executionSpec`, `executionIdentity` |
| `GoogleDataplexEntryLink` | `entryReferences`, `aspects` |
| `GoogleDataplexTask` | `triggerSpec`, `executionSpec` |
| `GoogleDataplexZone` | `discoverySpec`, `resourceSpec` |
| `GoogleNetworkManagementConnectivityTest` | `source`, `destination` |
| `GoogleOsConfigOsPolicyAssignment` | `osPolicies`, `instanceFilter`, `rollout` |
| `GoogleOsConfigPatchDeployment` | `instanceFilter`, `patchConfig`, `rollout` |
| `GoogleRecaptchaEnterpriseKey` | `webSettings`, `androidSettings`, `iosSettings`, `wafSettings`, `testingOptions` |

`GoogleComputeRouterNat` and `GoogleComputeRouterPeer` are in this same
migration wave (their schemas gained the same treatment) but expose no
constructor change: the nested blocks the schema newly types on these two
(`rules`, `subnetwork`, `nat64_subnetwork`, `advertised_ip_ranges`) were
never in the curated `paramOrder` to begin with, so nothing user-facing moves.

`google_dataplex_task`'s `workload`, `google_dataplex_datascan`'s `scanSpec`,
`google_app_engine_flexible_app_version`'s `scaling`, and
`google_os_config_patch_deployment`'s `schedule` are pre-existing
hand-curated sealed types (`DataplexTaskWorkload`,
`DataplexDatascanSpec`, `AppEngineFlexibleAppVersionScaling`,
`OsConfigPatchDeploymentSchedule`) — unrelated to this wave, not listed above.

### Some subtrees stay `Map`-shaped on purpose

A handful of deeply-nested or already-hand-curated subtrees were
deliberately excluded from typing (`nestedTypeExcludes` on the override) to
avoid either a runaway class count on a single resource or a name collision
with a pre-existing hand-written type. These keep taking a literal map (or
list-of-map) exactly as before:

- `GoogleOsConfigOsPolicyAssignment`'s `osPolicies[].resourceGroups[].resources`
  stays `TfArg<List<Map<String, dynamic>>>` — the `exec` / `file` / `pkg` /
  `repository` resource-spec shapes underneath it are not typed.
- `GoogleDataplexDatascan`'s four `scan_spec` variants (`data_profile_spec`,
  `data_quality_spec`, `data_discovery_spec`, `data_documentation_spec`) are
  untouched by this wave — they're already the hand-written
  `DataplexDatascanDataProfileSpec` / `...DataQualitySpec` /
  `...DataDiscoverySpec` / `...DataDocumentationSpec` classes (accessed via
  `scanSpec`), which predate `deriveNestedTypes` and would otherwise collide
  with a freshly-derived class of the same name.

## 0.22.x → 0.23.0

### `StackProvider.toTfJson()` removed

The backwards-compat shim (it just returned `configArgs`) is gone. Read
`configArgs` directly:

```dart
// before
final map = provider.toTfJson();
// after
final map = provider.configArgs;
```

`Backend.toTfJson()` and `TfArg.toTfJson()` are unrelated real APIs and are
unchanged.

### Six string fields became typed enums

The serialized Terraform JSON is unchanged; only the Dart type narrows.

| Factory | Field | New type |
| --- | --- | --- |
| `GoogleAccessContextManagerServicePerimeter` | `perimeterType` | `AccessContextManagerServicePerimeterPerimeterType` |
| `GoogleComputeHaVpnGateway` | `gatewayIpVersion` | `ComputeHaVpnGatewayGatewayIpVersion` |
| `GoogleComputeHaVpnGateway` | `stackType` | `ComputeHaVpnGatewayStackType` |
| `GoogleComputeNetworkPeering` | `stackType` | `ComputeNetworkPeeringStackType` |
| `GoogleComputeNetworkPeering` | `updateStrategy` | `ComputeNetworkPeeringUpdateStrategy` |
| `GoogleComputeRouterPeer` | `advertiseMode` | `ComputeRouterPeerAdvertiseMode` |

Replace the string literal with the enum member:

```dart
// before
stackType: TfArg.literal('IPV4_IPV6'),
// after
stackType: TfArg.literal(ComputeHaVpnGatewayStackType.ipv4Ipv6),
```

## 0.13.0 → 0.14.0

**Breaking** — one curated nested block became typed.

### `connection_tracking_policy` on `google_compute_region_backend_service`

Previously this nested block fell through untyped (`TfArg<Map>`); it is now a
typed helper class with two enums.

```dart
// Before
connectionTrackingPolicy: TfArg.literal({
  'tracking_mode': 'PER_SESSION',
  'connection_persistence_on_unhealthy_backends': 'NEVER_PERSIST',
}),

// After
connectionTrackingPolicy:
    const ComputeRegionBackendServiceRegionBackendServiceConnectionTrackingPolicy(
  trackingMode: RegionBackendServiceTrackingMode.perSession,
  connectionPersistenceOnUnhealthyBackends:
      RegionBackendServiceConnectionPersistence.neverPersist,
),
```

If you did not set `connection_tracking_policy`, no change is needed.

## 0.12.20 → 0.13.0

**Breaking changes** — API-enablement collapse, time-wrapper relocation, and
removal of the unimplemented provider-aliasing surface.

### `Apis.enable` replaces `ApisEnablement` / `ApiEnablement`

The two-layer bundle API is gone; one static call registers the services plus
the propagation `TimeSleep` and returns the dependency list:

```dart
// Before
final apiDeps = ApisEnablement.enable(
  barrels: [Barrels.cloudRun, Barrels.redis],
).registerOn(this);

// After
final apiDeps = Apis.enable(
  this,
  barrels: [Barrels.cloudRun, Barrels.redis],
);
```

Defaults are unchanged (60s propagation, `api` prefix). Callers that built
`ApiEnablement(services: ...)` directly should register the `Apis.required`
list themselves and wire `ResourceDependency` manually.

### `TimeProvider` / `TimeSleep` moved to `terradart_google`

`terradart_core` is provider-neutral again. Import the `time` barrel instead:

```dart
// Before: exported by package:terradart_core/terradart_core.dart
// After:
import 'package:terradart_google/time.dart';
```

### Provider-aliasing surface removed

`GoogleProvider.providerAlias`, `StackProvider.providerAlias`,
`ProviderBinding`, and `Resource.provider` are removed. None of them ever
reached the synthesized Terraform JSON — synth ignored the alias and never
emitted a `provider` meta-argument — so any code passing them was a silent
no-op. Aliasing returns as an end-to-end feature when multi-provider stacks
land.

### Synth validates provider coverage

`Stack.synth()` now throws `StateError` when a registered resource or data
source has no matching provider in `Stack.providers` (matched by the type's
prefix before the first `_`, e.g. `time_sleep` → `time`). Previously Terraform
silently fell back to an unpinned implied provider. Fix: add the missing
provider (e.g. `const TimeProvider()`).

### `GoogleCertificateManagerCertificateMapEntry` — sealed `match`

The provider requires exactly one of `hostname` / `matcher`; both optional
params are replaced by one required sealed `match`:

```dart
// Before
GoogleCertificateManagerCertificateMapEntry(
  // ...
  hostname: TfArg.literal('app.example.com'),
);

// After
GoogleCertificateManagerCertificateMapEntry(
  // ...
  match: CertificateManagerCertificateMapEntryMatch.hostname(
    TfArg.literal('app.example.com'),
  ),
);
// or .matcher(TfArg.literal('PRIMARY'))
```

### `LoggingSavedQueryVisibility.privateVisibility` → `.private`

The enum is now derived from Magic Modules; the value's Dart name matches the
upstream constant directly. Rename `LoggingSavedQueryVisibility.privateVisibility`
to `LoggingSavedQueryVisibility.private` (`.shared` is unchanged).

## 0.12.11 → 0.12.12

**Breaking changes** in `terradart_google` — several curated factories now enforce
GCP / Terraform `exactly_one_of` constraints at compile time via sealed virtual
slots (closes #107 exactly-one debt):

| Factory | Before | After |
|---------|--------|-------|
| `GoogleComputeFirewall` | optional `allow:` / `deny:` | required `rulePolicy:` (`ComputeFirewallAllowPolicy` / `ComputeFirewallDenyPolicy`) |
| `GoogleComputeHealthCheck` | optional `httpHealthCheck:` / `httpsHealthCheck:` / … | required `protocol:` (`ComputeHealthCheckProtocol` variant) |
| `GoogleComputeRegionHealthCheck` | optional per-protocol params | required `protocol:` (`ComputeRegionHealthCheckProtocol` variant) |
| `GoogleMonitoringUptimeCheckConfig` | optional `monitoredResource:` / `resourceGroup:` / `syntheticMonitor:` | required `target:` (`MonitoringUptimeCheckConfigTarget` variant) |
| `GoogleBigqueryJob` | optional `query:` / `load:` / `extract:` / `copy:` | required `jobConfiguration:` (`BigqueryJobConfiguration` variant) |
| `GoogleBigqueryConnection` | optional `cloudSql:` / `aws:` / … | required `backend:` (`BigqueryConnectionBackend` variant) |
| `GoogleCloudbuildTrigger` | optional `filename:` / `build:` / `gitFileSource:` | required `buildSpec:` (`CloudbuildTriggerBuildSpec` variant) |

Example (`GoogleComputeHealthCheck`):

```dart
// Before
GoogleComputeHealthCheck(
  localName: 'api_hc',
  name: TfArg.literal('api-hc'),
  httpsHealthCheck: ComputeHealthCheckHttpsHealthCheckConfig(
    port: TfArg.literal(443),
    requestPath: TfArg.literal('/healthz'),
  ),
);

// After
GoogleComputeHealthCheck(
  localName: 'api_hc',
  name: TfArg.literal('api-hc'),
  protocol: ComputeHealthCheckHttpsHealthCheckConfig(
    port: TfArg.literal(443),
    requestPath: TfArg.literal('/healthz'),
  ),
);
```

Example (`GoogleCloudbuildTrigger` filename path):

```dart
// Before
GoogleCloudbuildTrigger(
  localName: 'main_push',
  name: TfArg.literal('main-push'),
  filename: TfArg.literal('cloudbuild.yaml'),
);

// After
GoogleCloudbuildTrigger(
  localName: 'main_push',
  name: TfArg.literal('main-push'),
  buildSpec: CloudbuildTriggerFilenameSpec(
    filename: TfArg.literal('cloudbuild.yaml'),
  ),
);
```

## 0.12.9 → 0.12.10

**Breaking changes** in `terradart_google` — finite schema fields now use typed
enums instead of `TfArg<String>`:

| Factory | Field | Enum |
|---------|-------|------|
| `GoogleBigqueryDatapolicyDataPolicy` | `dataPolicyType` | `BigqueryDatapolicyDataPolicyType` |
| `GoogleBigqueryReservationAssignment` | `jobType` | `BigqueryReservationAssignmentJobType` |
| `GoogleComputeServiceAttachment` | `connectionPreference` | `ServiceAttachmentConnectionPreference` |
| `GoogleComputeRegionSecurityPolicy` | `type` | `RegionSecurityPolicyType` |
| `GoogleComputeRegionSslPolicy` | `profile` / `minTlsVersion` | `RegionSslPolicyProfile` / `RegionSslPolicyMinTlsVersion` |
| `GoogleComputeTargetTcpProxy` | `proxyHeader` | `TargetTcpProxyProxyHeader` |
| `GoogleComputeTargetSslProxy` | `proxyHeader` | `TargetSslProxyProxyHeader` |
| `GoogleComputeRegionTargetTcpProxy` | `proxyHeader` | `RegionTargetTcpProxyProxyHeader` |
| `GoogleCloudTasksQueue` | `desiredState` | `CloudTasksQueueDesiredState` |
| `GoogleLoggingSavedQuery` | `visibility` | `LoggingSavedQueryVisibility` |
| `GoogleMonitoringSlo` | `calendarPeriod` | `MonitoringSloCalendarPeriod` |
| `GoogleStorageHmacKey` | `state` | `StorageHmacKeyState` |
| `GoogleKmsCryptoKeyVersion` | `state` | `KmsCryptoKeyVersionState` |
| `GoogleSecretManagerSecretVersion` | `deletionPolicy` | `SecretManagerSecretVersionDeletionPolicy` |
| `GoogleComputeInstanceGroupManager` | `listManagedInstancesResults` | `InstanceGroupManagerListManagedInstancesResults` |
| `GoogleComputeRegionInstanceGroupManager` | `listManagedInstancesResults` | `RegionInstanceGroupManagerListManagedInstancesResults` |
| `GoogleSqlUser` | `deletionPolicy` | `SqlUserDeletionPolicy` |

Optional Analytics Hub `discoveryType` fields use
`BigqueryAnalyticsHubDataExchangeDiscoveryType` /
`BigqueryAnalyticsHubListingDiscoveryType`.

`GoogleDnsRecordSet.type` and `GoogleCloudRunV2WorkerPool.launchStage` ship as
enums in `0.12.10` (new factories); no prior `String` API.

Nested blocks that previously accepted `TfArg<Map<String, dynamic>>?` now use
typed helpers:

| Factory | Slot | Helper / enum |
|---------|------|----------------|
| `GoogleComputeRouter` | `bgp` | `ComputeRouterBgp` / `ComputeRouterBgpAdvertiseMode` |
| `GoogleComputeSecurityPolicyRule` | `match` | `ComputeSecurityPolicyRuleMatch` (reuses `SecurityPolicyRuleMatchVersionedExpr`) |
| `GoogleComputeSecurityPolicyRule` | `rateLimitOptions` | `ComputeSecurityPolicyRuleRateLimitOptions` / `ComputeSecurityPolicyRuleRateLimitEnforceOnKey` |
| `GoogleComputeRegionSecurityPolicyRule` | `match` / `rateLimitOptions` | `ComputeRegionSecurityPolicyRule*` types |
| `GoogleEventarcMessageBus` / `GoogleEventarcGoogleApiSource` / `GoogleEventarcPipeline` | `loggingConfig` | `EventarcMessageBusLoggingConfig` / `EventarcMessageBusLogSeverity` |
| `GoogleComputeInstance` | `networkPerformanceConfig.totalEgressBandwidthTier` | `ComputeInstanceNetworkPerformanceConfigTotalEgressBandwidthTier` |
| `GoogleComputeInstanceTemplate` | `networkPerformanceConfig.totalEgressBandwidthTier` | same enum (imported from instance wrapper) |
| `GoogleComputeBackendService` | `localityLbPolicies[].policy.name` | `LocalityLbPolicy` (nested builtin policy) |
| `GoogleComputeSecurityPolicyRule` / `GoogleComputeRegionSecurityPolicyRule` | `preconfiguredWafConfig` / `rateLimitOptions` | WAF exclusion + enforce-on-key helpers / `SecurityPolicyWafExclusionOperator` |
| `GoogleComputeRegionSecurityPolicy` | `rules` / `advancedOptionsConfig` / `ddosProtectionConfig` / `userDefinedFields` | `ComputeRegionSecurityPolicyRegionSecurityPolicy*` helpers |
| `GoogleComputeUrlMap` / `GoogleComputeRegionUrlMap` | `defaultRouteAction` / `routeAction.cachePolicy` / `metadataFilters` | `*UrlMapRouteAction` / `*UrlMapCacheMode` / `*UrlMapMetadataFilterMatchCriteria` |
| `GoogleDnsPolicy` | `alternativeNameServerConfig` | `DnsPolicyAlternativeNameServerConfig` (reuses `ForwardingPath`) |
| `GoogleDnsRecordSet` | `routingPolicy` | `DnsRecordSetRoutingPolicy*` / ILB enums |
| `GoogleDnsResponsePolicyRule` | `localData` | `DnsResponsePolicyRuleLocalData` / `DnsResponsePolicyRuleRecordType` |
| `GooglePubsubTopic` | `schemaSettings` / `ingestionDataSourceSettings` | `PubsubTopicSchemaSettings` / `PubsubTopicIngestionDataSourceSettings` |
| `GoogleGkeHubFleet` | `defaultClusterConfig` | `GkeHubFleetDefaultClusterConfig` + posture / binary-auth enums |
| `GoogleGkeBackupBackupPlan` | `backupSchedule` | `GkeBackupBackupPlanBackupSchedule` / `GkeBackupBackupPlanDayOfWeek` |
| `GoogleGkeBackupRestorePlan` | `restoreConfig` | `GkeBackupRestorePlanRestoreConfig` + conflict / restore-mode enums |
| `GoogleCloudRunV2WorkerPool` | `instanceSplits` / `scaling` / `template` | `CloudRunV2WorkerPool*` helpers (reuses `EmptyDirMedium` / `ScalingMode`) |
| `GoogleBigqueryDatapolicyDataPolicy` | `dataMaskingPolicy` | `BigqueryDatapolicyDataPolicyDataMaskingPolicy` / `BigqueryDatapolicyDataPolicyPredefinedExpression` |
| `GoogleArtifactRegistryRepository` | `remoteRepositoryConfig.aptRepository` / `yumRepository` | `ArtifactRegistryAptRepositoryBase` / `ArtifactRegistryYumRepositoryBase` |

```dart
// 0.12.9
dataPolicyType: TfArg.literal('DATA_MASKING_POLICY'),
connectionPreference: TfArg.literal('ACCEPT_AUTOMATIC'),

// 0.12.10
dataPolicyType: TfArg.literal(BigqueryDatapolicyDataPolicyType.dataMaskingPolicy),
connectionPreference:
    TfArg.literal(ServiceAttachmentConnectionPreference.acceptAutomatic),
```

## 0.12.2 → 0.12.3

**Breaking change** in `terradart_google` for users of
`GoogleIamWorkloadIdentityPoolProvider` (shipped in 0.12.2).

The trust-binding oneof (`oidc` / `aws` / `saml` / `x509`) is now a **sealed**
`IamWorkloadIdentityPoolProviderTrustSource` passed as required `trustSource`,
matching the convention used by `GoogleCloudSchedulerJob` and
`GoogleFirestoreBackupSchedule`.

```dart
// 0.12.2
GoogleIamWorkloadIdentityPoolProvider(
  // ...
  oidc: IamWorkloadIdentityPoolProviderOidc(
    issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
  ),
);

// 0.12.3
GoogleIamWorkloadIdentityPoolProvider(
  // ...
  trustSource: IamWorkloadIdentityPoolProviderOidcTrust(
    issuerUri: TfArg.literal('https://token.actions.githubusercontent.com'),
  ),
);
```

Renamed helper types: `…Oidc` → `…OidcTrust`, `…Aws` → `…AwsTrust`,
`…Saml` → `…SamlTrust`, `…X509` → `…X509Trust`. Import from
`package:terradart_google/iam.dart`.

Bump lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.3
  terradart_google: ^0.12.3
```

---

## Unreleased — `terradart codegen` removed

The `terradart codegen` CLI subcommand and `runCodegen` library export are **removed**.
Maintainer generation is **`terradart wrap` only** (`wrap-init`, `wrap-promote` unchanged).

**If you only consumed `terradart_google`:** no Stack changes required.

**If you ran `terradart codegen` locally:** stop using it. Import curated factories from
`terradart_google`, or open a feature issue to request a new curated resource.

`dart pub global activate terradart_codegen` remains valid for **maintainers** running
`terradart wrap` against the repo fixtures.

---

## 0.11.x → 0.12.x

There are **no breaking changes** to the `terradart_core` or `terradart_google`
public APIs compared with `0.11.0`. Bump all three pub packages in lockstep:

```yaml
dependencies:
  terradart_core: ^0.12.0
  terradart_google: ^0.12.0
```

```bash
dart pub global activate terradart_codegen ^0.12.0
```

(`0.12.1` / `0.12.2` are lockstep patches — same caret bump steps.)

### Additive in 0.12.2

- **`terradart_google`** — two new curated factories:
  `google_iam_workload_identity_pool_provider`,
  `google_iap_web_backend_service_iam_binding`, plus `package:terradart_google/iap.dart`.
  Catalog grows to **121 curated resource factories + 1 data source** (122 entries).
  No changes to existing factory signatures.

### Additive in 0.12.0

- **`terradart_google`** — static `terradartCatalog` in
  `package:terradart_google/catalog.dart` (metadata only; factory APIs unchanged).
  **118** curated resource factories + 1 data source at initial `0.12.0` ship
  (grew to **121** + 1 in `0.12.2`).
- **`terradart-mcp`** (optional) — MCP catalog server binary; not on pub.dev.
  See [Agent install](https://terradart.dev/docs/agent/install/).

### 0.12.1

- MCP `list_resources` / `list_barrels` return JSON objects, not bare arrays
  (strict MCP `structuredContent` clients).

No Stack source edits are required when upgrading from `0.11.0`.

---

# Migrating from terradart 0.10.0 to 0.11.0

This guide covers every breaking change introduced between `0.10.0` and
`0.11.0`. Two coordinated themes: the Stack API surface (§1, ADR-0017) and
the codegen identifier rename (§2, ADR-0016). All changes are mechanical;
none require an architectural rethink at the consumer.

`0.9.0` → `0.10.0` was additive (Firestore document curation) and required
no migration. The 0.9.0 migration guide is preserved below for archival
reference.

---

## Before you start

All three packages — `terradart_core`, `terradart_codegen`, and
`terradart_google` — must be bumped in lockstep:

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.11.0
  terradart_google: ^0.11.0
```

If you run codegen locally:

```bash
dart pub global activate terradart_codegen ^0.11.0
```

---

## 1. Stack API surface changes (ADR-0017)

### 1.1 `Stack.synth({required outDir})` split into `synth()` + `writeTo(outDir)`

`Stack.synth` no longer performs file IO. It is now a pure in-memory step
that returns a `SynthResult` carrying the encoded `tfJson` plus the optional
`dartConstants` source for AppExports. The new `Stack.writeTo(outDir)`
method is the file-IO wrapper that writes `main.tf.json` (and, when
`setAppExportsOutputPath` was called, the generated Dart constants file).

```dart
// BEFORE (0.10.0):
await stack.synth(outDir: 'tf-out');

// AFTER (0.11.0) — same end-to-end behaviour:
await stack.writeTo('tf-out');

// AFTER (0.11.0) — in-memory only, no disk write:
final result = stack.synth();
// result.tfJson, result.dartConstants
```

`writeTo` throws `StateError` atomically — **before any disk write** — when
`addExport` was called without `setAppExportsOutputPath`. v0.10.x silently
dropped the exports in that case; v0.11.x makes the misconfiguration fail
loudly at synth time.

### 1.2 `StackSynth` removed from the `terradart_core` public barrel

`StackSynth` is annotated `@internal` and is no longer re-exported from
`package:terradart_core/terradart_core.dart`. Call the public method on
your `Stack` instance instead.

```dart
// BEFORE (0.10.0):
import 'package:terradart_core/terradart_core.dart';
final result = StackSynth.synth(stack);

// AFTER (0.11.0):
final result = stack.synth();
```

If you really need the internal synth function (advanced cases — custom
tooling that drives synth without a `Stack` instance), import it via the
deep path; expect no semver protection on that surface:

```dart
// AFTER (0.11.0) — escape hatch, not recommended:
import 'package:terradart_core/src/synth/stack_synth.dart';
```

### 1.3 `Stack`, `Resource`, `Data` promoted to `abstract base class`

The three foundational classes are now `abstract base class` (Dart 3
class-modifier feature). Their state — dedup maps, lifecycle wiring — is
owned by the base class and must not be bypassed via `implements`.

```dart
// BEFORE (0.10.0):
class OrdersStack extends Stack { ... }

// AFTER (0.11.0):
final class OrdersStack extends Stack { ... }
// (or `base class` / `sealed class` if you have a subclass tree)
```

`implements Stack` / `implements Resource` / `implements Data` are now
compile errors. This was already a foot-gun in v0.10 — a class that
satisfied the interface without inheriting the state would silently break
synth — so the new constraint replaces a runtime hazard with a static
check.

---

## 2. Codegen identifier rename (ADR-0016)

The dollar-prefixed identifiers on `Resource` subclasses are renamed to
their canonical Dart names. External code that read them by `$`-prefixed
name must drop the prefix. The two getters are now annotated `@protected`
(from `package:meta`).

### 2.1 `$tfType` → `tfType`, `$sensitiveFields` → `sensitiveFields`, `$supportsDeletionProtection` → `supportsDeletionProtection`

```dart
// BEFORE (0.10.0):
final String type = MyResource.$tfType;
final Set<String> sensitive = myResource.$sensitiveFields;
final bool gated = myResource.$supportsDeletionProtection;

// AFTER (0.11.0):
final String type = MyResource.tfType;
// ignore: invalid_use_of_protected_member  // documenting the access pattern
final Set<String> sensitive = myResource.sensitiveFields;
// ignore: invalid_use_of_protected_member  // documenting the access pattern
final bool gated = myResource.supportsDeletionProtection;
```

The `@protected` annotation means that reads from outside the subclass
hierarchy trigger an analyzer warning. The synth-time path (`TfJsonEncoder`)
is the privileged in-library consumer the protected contract permits. If
you have a legitimate need to read these from outside (introspection,
custom diagnostics), add an `// ignore: invalid_use_of_protected_member`
directive **with a justification comment** at the read site.

Mechanical sed recipe for the rename (safe — it only matches the
`$`-prefixed forms):

```bash
find . -name '*.dart' \
  -exec sed -i.bak \
    -e 's/\$tfType\b/tfType/g' \
    -e 's/\$sensitiveFields\b/sensitiveFields/g' \
    -e 's/\$supportsDeletionProtection\b/supportsDeletionProtection/g' \
    {} \;
```

Then review each call site and either keep the bare read (if you're inside
a subclass) or add the `// ignore: invalid_use_of_protected_member`
directive (if you're outside).

### 2.2 `TerraformEnum` interface

`terradart_core` 0.11.0 introduces `abstract interface class TerraformEnum`
with a single `String get terraformValue` contract. `TfArgLiteral.toTfJson`
now routes enum dispatch through `if (v is TerraformEnum)` rather than the
previous duck-typed `dynamic.terraformValue` cast.

Codegen-emitted enums (everything in `terradart_google`) implement
`TerraformEnum` automatically — no consumer action needed.

If you hand-rolled a Terraform-mapped enum to pass to
`TfArg<MyEnum>.literal(...)`, add the `implements` clause and the
`@override` keyword:

```dart
// BEFORE (0.10.0):
enum CustomMode {
  fooBar('FOO_BAR'),
  bazQux('BAZ_QUX');

  const CustomMode(this.terraformValue);
  final String terraformValue;
}

// AFTER (0.11.0):
enum CustomMode implements TerraformEnum {
  fooBar('FOO_BAR'),
  bazQux('BAZ_QUX');

  const CustomMode(this.terraformValue);
  @override
  final String terraformValue;
}
```

Without the `implements TerraformEnum` clause, the `is TerraformEnum`
check at synth time will not recognise your enum and the value will fall
through to the generic `Object.toString()` path — almost certainly not
what you want.

---

## 3. Cookbook example

The [`terradart-cookbook`](https://github.com/nozomi-koborinai/terradart-cookbook)
repo's recipes will be regenerated against v0.11.0. If you cloned a recipe
before that update, apply the §1 + §2 changes above to the recipe's stack
file.

---

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
