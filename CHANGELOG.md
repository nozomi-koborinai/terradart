# Changelog

All notable changes to terradart are documented here. The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

Per-package changelogs live alongside each package and are the system of record for `terradart_core`, `terradart_codegen`, `terradart_google`, and `terradart_migrate` — this top-level file summarises cross-cutting milestones.

## Unreleased

**Breaking** for the Dart API; read [MIGRATING.md](MIGRATING.md#031x--0320).

### Added

- **Outputs in client apps** (`terradart_core`, `terradart_migrate`) —
  `Stack.addDartDefineOutput()` declares an output, `dart_defines`, whose
  value is the `--dart-define-from-file` JSON of the Stack's non-sensitive
  outputs (the variables `outputEnvironment()` passes, `only:` and `name:`
  for one file per client). A Flutter, Dart web or CLI client is built
  with `terraform output -json dart_defines` and reads each value with its
  type through `const <Stack>Outputs.fromDartDefine()`, on every provider
  package; the reader's constructors are all `const`. The migrator turns
  such an output back into `addDartDefineOutput`. Guide:
  [Outputs in client apps](https://terradart.dev/docs/client-outputs/).

### Changed

- **Stack settings and timeouts** (`terradart_core`, `terradart_google`,
  `terradart_codegen`, `terradart_migrate`) — `backend` and
  `requiredVersion` are Stack constructor arguments (`setBackend` /
  `setRequiredVersion` are removed) and `writeTo()` defaults to `tf-out`.
  `TfTimeouts` fields are `Duration`s, `outputEnvironment()` returns an
  `OutputEnvironment` of `(name:, value:)` records whose `variables` is a
  map argument (`environment: .new(variables: outputEnvironment().variables)`
  on a Lambda), and `TfArg.literal` is a `const` factory.
  google's `Apis.enable(this, barrels: [...])` is `enableApis([...])`. A
  variant of a block with no fields takes no argument (`.avroFormat()`),
  and google's hand-written one-field variants take it positionally
  (`.gateway(.literal(...))`).
- **Fewer imports** (every provider package, `terradart_core`,
  `terradart_codegen`, `terradart_migrate`) — every barrel re-exports
  `terradart_core`, and a data source is also exported from the service
  barrel that matches its name. The GA `google_project` data source is
  `DataGoogleProject`. `TfJsonEncoder`, `hasTemplateSequence` and
  `templateVariableNames` move to `package:terradart_core/internal.dart`,
  and helper `encode()` / `blockKey` are `@internal`.
- **Enums are arguments** (every provider package, `terradart_core`,
  `terradart_codegen`, `terradart_migrate`) — a generated enum is an
  extension type implementing `TfArg<String>`, so an enum slot takes a
  member bare (`routingMode: .regional`, `actions: [.getcertificate]`) and
  `.variable(...)` / `.expression(...)` / `.arg(...)` cover the rest.
  `TerraformEnum` and `terraformValue` are removed.
- **Providers are instances** (`terradart_core`, `terradart_codegen`,
  every provider package, `terradart_migrate`) — `provider:` takes the
  registered `StackProvider` (`provider: eu`, from `final eu =
  addProvider(GoogleProvider(alias: 'eu'))`) instead of `'google.eu'`, and
  `ModuleCall.providers` maps to instances. Beta wrappers override
  `Resource.defaultProvider`.
- **Typed lifecycle** (`terradart_core`, `terradart_migrate`) —
  `ignoreChanges: .all` / `.of(['target_size'])`, `replaceTriggeredBy:
  [template, template.id]` (any `ReplaceTrigger`: a resource or an
  attribute getter), and `conditions: [.pre(...), .post(...)]` for
  `precondition` / `postcondition`. An explicit `createBeforeDestroy:
  false` is written.
- **Sensitive arguments take no literal** (every provider package,
  `terradart_core`, `terradart_codegen`) — an argument the provider schema
  marks sensitive is `Sensitive<T>`, which has `.variable` and
  `.expression` but no `.literal`, so a secret in `main.tf.json` is a
  compile error instead of a synth error.
- **Variables are typed handles** (`terradart_core`, `terradart_migrate`,
  every example) — `final region = variable<String>('region')` declares the
  variable, derives its Terraform `type` from `T` and returns the handle an
  argument takes (`location: region`). `addVariable` is removed,
  `addExternalVariable` is `externalVariable<T>`, and `TfVariable.type` is
  a `TfType` (`.list(.string)`, `.object({...})`).
- **The local name is the first argument** (every provider package,
  `terradart_core`, `terradart_time`, `terradart_codegen`,
  `terradart_migrate`) — `GooglePubsubTopic('orders', name: ...)`,
  `AwsIamRole('hello', ...)`, `ModuleCall('network', source: ...)`.
- **`add` registers data sources** (`terradart_core`, `terradart_migrate`)
  — `add(DataGoogleProject(...))`; `addData` is removed.
- **`dependsOn` takes the blocks** (`terradart_core`, `terradart_google`,
  `terradart_migrate`) — `dependsOn: [schema, api, ...apiDeps]` instead of
  `ResourceDependency(...)` around each entry. `DependencyTarget`,
  `ResourceDependency` and `RefDependency` are removed, and `Apis.enable`
  returns `List<TfAddressed>`.
- **More arguments that name another resource take `RefTo<R>`**
  (`terradart_codegen`, `terradart_google`, `terradart_google_beta`,
  `terradart_aws`, `terradart_migrate`) — every Magic Modules `ResourceRef`
  input of a curated Google resource is now typed from the MM YAML
  (`- mm: resource-refs` in `tool/reference_targets.yaml`), and the ledger
  gained rules for the hand-written parents MM does not describe (Cloud
  SQL, Bigtable, Firestore, KMS key rings, DNS zones, Data Catalog,
  Dataplex, Private CA, Oracle Database, Tags, ...) and for CloudFront
  origin access controls and cache policies, ACM certificates, ECR
  repositories, ECS clusters and Route 53 zones on AWS. Typed reference
  slots: google 522 → 851, google-beta 22 → 29, aws 1084 → 1108. A call
  site writes `instance: primary.ref` instead of
  `instance: .ref(primary.nameRef)`, and a literal is `.literal('name')`.
  Synth output changes where the typed reference emits the attribute the
  provider expects instead of the one an example passed: Private CA
  `pool`, Filestore snapshot `instance`, Workload Identity provider
  `workload_identity_pool_id`, the Logging bucket inputs (the bucket's
  `id`), and the MM-imported attribute on a few compute, AlloyDB, Secret
  Manager and Healthcare inputs.
- **Appwrite `permissions` take `AppwritePermission`** (`terradart_codegen`,
  `terradart_appwrite`, `terradart_migrate`) — the `permissions` of
  storage buckets, files, TablesDB tables and rows are
  `TfArg<List<AppwritePermission>>` (`- principals: AppwritePermission` in
  `tool/reference_targets.yaml`): an extension type over `TfArg<String>`
  built from an action (`.read`, `.create`, `.update`, `.delete`,
  `.write`) and an `AppwriteRole` (`.any`, `.guests`,
  `.users(verified: ...)`, `.user(user.ref)`, `.team(team.ref, role: ...)`,
  `.member(id)`, `.label(name)`), plus `.literal` / `.arg`. Both live in
  `package:terradart_appwrite/auth.dart`. `AppwriteStorageBucket` gains its
  `permissions` argument. The migrator writes `.read(.any)` for a literal.
  Synth output is unchanged.
- **AWS IAM policy attachments and Cloudflare user groups take `RefTo<R>`**
  (`terradart_aws`, `terradart_cloudflare`, `terradart_migrate`) — the
  `policy_arn` / `policy_arns` / `managed_policy_arns` /
  `permissions_boundary` of the `aws_iam_*` attachments, roles and users
  (plus Budgets IAM actions, Roles Anywhere profiles and QuickSight policy
  assignments) take `RefTo<AwsIamPolicy>` and emit its `arn`; an AWS
  managed policy is `.literal('arn:aws:iam::aws:policy/...')`.
  `cloudflare_user_group_members` takes its `user_group_id` as
  `RefTo<CloudflareUserGroup>` and each member `id` as
  `RefTo<CloudflareAccountMember>`. Synth output is unchanged for a
  literal.
- **IAM adjuncts take their parent as one `RefTo<R>`**
  (`terradart_codegen`, `terradart_google`, `terradart_google_beta`,
  `terradart_core`, `terradart_migrate`) — every
  `*_iam_member` / `*_iam_binding` / `*_iam_policy` factory names its
  parent with one argument called after the parent
  (`GoogleCloudRunV2ServiceIamMember(service: api.ref, ...)`) instead of
  `name:` plus `location:` / `project:` copied from the parent
  (`- parents: iam-adjuncts` in `tool/reference_targets.yaml`). The
  positional keys the parent also exports stay optional overrides and
  default to the parent's attribute through the new
  `RefTo.alsoAs(attribute)`, so synth output now carries the parent's
  `project` (and `location` / `region` / `zone`) instead of falling back
  to the provider default. CES resources absorb `location` and `project`
  the same way (`with:` on a ledger rule). The migrator leaves those keys
  out when the HCL reads them off the same parent block.
- **Synth reports every problem at once, as one sealed `SynthIssue` type.** `Stack.synth()` / `writeTo()` check the whole Stack first and throw one `SynthException` listing every issue — `NoProviders`, `MissingProvider`, `ProviderConflict`, `UndeclaredVariable`, `UnregisteredReference`, `SensitiveLiteral`, `InvalidTimeout`, `InvalidMoveTarget`, `UnresolvableConstant` — each with the address of the block that holds it and a fix. `Stack.validate()` returns them without throwing. Replaces the `StateError` / `SensitiveLiteralError` / `ArgumentError` synth used to throw at the first problem.
- **Synth refuses a reference to a block the Stack does not hold** (`UnregisteredReference`): a resource read or `depends_on`'d but never passed to `add(...)` used to synthesize and fail at `terraform plan`. `Stack.addExternalBlock('<address>')` declares a block a hand-written file beside `main.tf.json` holds; `terradart-migrate` writes one for every block it keeps in the sidecar that the Stack still reads.
- **Names are checked where they are registered.** `add`, `addData`, `addModule`, `addVariable` and `addExternalVariable` throw `ArgumentError` for a `localName` or variable name that is not a Terraform identifier, as `addOutput` already did.
- **IAM grants take an `IamPrincipal`** (`terradart_codegen`,
  `terradart_google`, `terradart_google_beta`, `terradart_migrate`) — the
  `member` of every `*IamMember`, the `members` of every `*IamBinding`,
  audit-config `exempted_members`, `data.google_iam_policy` bindings and
  Privileged Access Manager `principals` are typed `IamPrincipal`
  (`- principals: IamPrincipal` in `tool/reference_targets.yaml`): an
  extension type over `TfArg<String>` with dot shorthands
  `.user(email)`, `.group(email)`, `.serviceAccount(email)`,
  `.domain(domain)`, `.allUsers`, `.allAuthenticatedUsers`,
  `.principalSet(pool, attribute)`, `.principal(pool, subject)`,
  `.literal(value)` and `.arg(arg)`. Every block with a computed `member`
  (service accounts, service agents, default service account data
  sources) has an `IamPrincipal get principal`, which replaces
  `GoogleServiceAccount.iamMember`. The migration manifest records these
  slots as `MigrateSlotKind.principal`, and the migrator writes
  `member: sa.principal` / `.user('a@example.com')`. Synth output is
  unchanged.
- **A `TfRef` is a `TfArg`, and attribute getters drop the `Ref` suffix**
  (`terradart_core`, `terradart_codegen`, every provider package,
  `terradart_migrate`) — `TfRef<T>` is now a sealed subtype of `TfArg<T>`,
  so an attribute passes straight into an argument of its type
  (`labels: other.labels`, `addOutput('id', topic.id)`)
  and `TfArg.ref` / `TfArgRef` are removed. Every generated attribute
  getter is the attribute's camelCase name (`name`, `email`, `secretId`,
  where 0.31 had `nameRef`, `email`, `secretIdRef`); a name that is a Dart
  reserved word or a `Resource` / `Data` member takes an `Attr` suffix
  (`kindAttr`, `defaultAttr`, `refAttr`, `localNameAttr`, `overrideAttr`,
  `runtimeTypeAttr`). `IamPrincipal.arg(...)` takes a `TfRef` directly. `AppConstant.ref(...)` stays, as one of its three
  sealed choices. The migrator writes the plain form. Synth output is
  unchanged.
- **Nested blocks use `.new(...)`** — the examples, cookbook, README,
  website, generated doc comments, the aws / cloudflare leftover-example
  generators and `terradart-migrate` output build a block that sits inside
  another block or inside a sealed choice with the Dart 3.10 `.new(...)`
  shorthand (`template: CloudRunV2ServiceTemplate(containers: [.new(...)])`);
  a resource's own arguments keep their class name. A few doc examples that
  named a sealed variant class now call its factory (`spec: .order(.ascending)`).
  No API or synth output changes.

### Fixed

- **Every Dart example in a doc comment or a package README compiles**
  — `tool/doc_snippets.dart` now also checks the `///` doc comments of the
  published packages and the package and cookbook READMEs, and the
  examples it caught are fixed: `GoogleSqlUser` passes its password as a
  sensitive variable instead of a literal synth rejects,
  `GoogleServiceAccount` reads `iamMember`, the `terradart_aws` README
  builds its Lambda with `code: .filename(...)` and a runtime enum, and the
  `terradart_core` examples (`TfTimeouts`, `TfMoved`, `ModuleCall`,
  `outputEnvironment`, `S3Backend.r2`, …) name every required argument.
  ASCII diagrams in the Compute and Cloud SQL docs are ```` ```text ````
  fences, so dartdoc no longer highlights them as Dart.

## [0.31.0] - 2026-10-01

Lockstep release across the workspace. **Breaking** for the Dart API of every package, not for Terraform: no provider pin moves, and synth output changes only where a typed reference now emits a different attribute. Every exactly-one and at-most-one input group is a sealed type named by concept and built with a Dart 3.10 dot shorthand (`code: .filename(...)`); arguments that name another resource take `RefTo<R>` (`network: vpc.ref`); `addOutput` / `addConstant` replace `addExport`, with a typed `<Stack>Outputs` reader and `outputEnvironment()`; Google blocks take derived helper classes (no `TfArg<Map>` block is left); generated type names are short; and every package requires Dart 3.10. Read the upgrade guide in [MIGRATING.md](MIGRATING.md) before bumping. The `terradart_google` catalog is **1366 curated resource factories + 468 data sources** (1834 entries).

### Added

- **The last hidden Google inputs are constructor parameters**
  (`terradart_google`) — 24 inputs on 17 factories that no constructor
  took, because their `paramOrder` left them out: `deletionPolicy` on 10
  factories (`GoogleServiceAccount`, `GoogleServiceAccountKey`,
  `GoogleProjectIamCustomRole`, `GoogleIamWorkloadIdentityPool`, the
  Firebase App Check and App Hosting factories,
  `GoogleComputeZoneVmExtensionPolicy`), `priority` on
  `GoogleComputeZoneVmExtensionPolicy`, and 13 blocks that take derived
  helpers: `GoogleComputeImage` `guestOsFeatures` / `params` /
  `shieldedInstanceInitialState` and a `.rawDisk(...)` `source` variant
  for a Cloud Storage tarball, `GoogleGkeHubFeature` `spec` /
  `fleetDefaultMemberConfig`, `GoogleIdentityPlatformTenant.client`,
  `GoogleMigrationCenterPreferenceSet.virtualMachinePreferences`,
  `GoogleDialogflowGenerator.inferenceParameter`, and the Contact Center
  AI Insights analysis rule `annotatorSelector` and QA question
  `predefinedQuestionConfig` / `qaQuestionDataOptions` /
  `tuningMetadata`. Every new parameter is optional; synth output is
  unchanged.
- **A reference getter for every input** (`terradart_codegen`,
  `terradart_google`, `terradart_google_beta`, `terradart_aws`,
  `terradart_cloudflare`, `terradart_appwrite`, `terradart_migrate`) — each
  argument a wrapper takes has a `<name>Ref` getter of its schema type
  (`scope.scopeIdRef`, `TfRef<String>`), beside the existing `nameRef` and
  computed getters: 9,164 google, 586 google-beta, 11,760 aws, 2,595
  cloudflare and 377 appwrite. Another resource, an `addOutput` or an
  `addConstant` reads what the argument is set to without repeating it, and
  `addConstant('fleetScopeId', .ref(scope.scopeIdRef))` still resolves a
  literal argument to a Dart constant at synth. A write-only argument has
  none (Terraform cannot reference it), and a name an existing getter holds
  keeps it. `terradart-migrate` uses the getters for references it used to
  write as `TfRef.attribute<Object?>(...)`; the seven examples that repeated
  a literal through a local `const` read it with `.ref(...)`.

- **Typed outputs reader** (`terradart_core`) — the `appExports` file also
  holds `<Stack>Outputs`: one getter per non-sensitive `addOutput`, typed
  like its value and named in lowerCamelCase, built from `terraform output
  -json` (`fromTerraformJson`) or the app's environment (`fromEnvironment`,
  one SCREAMING_SNAKE_CASE variable per output, JSON for non-`String`
  values). Getters read lazily and throw a `StateError` naming the output
  and variable when a value is missing or mistyped. With `appExports` set,
  `addOutput` rejects a name whose getter is not a usable identifier or
  whose getter or variable another output has.
- **`Stack.outputEnvironment()`** (`terradart_core`, cookbook) — the
  variables that reader's `fromEnvironment` reads, as a
  `Map<String, TfArg<String>>` of the non-sensitive outputs registered so far
  (`only:` picks some): a `String` output as is, any other as
  `jsonencode(...)`. Pass it to a Cloud Run service's `env` and the app reads
  the outputs without a variable name written twice; the `single-project-app`
  recipe passes its Cloud SQL outputs this way.
- **Typed resource references, part 2** (`terradart_codegen`,
  `terradart_migrate`, `tool/`) — `tool/reference_targets.yaml` lists which
  string inputs name another resource: name patterns per referenced type
  (7 google, 9 aws, 2 cloudflare), with the attribute each input emits and
  reviewed exceptions. `terradart wrap --reference-targets` validates it
  against the lane's schema on every run (E406 on a stale entry), so the
  weekly bump keeps it current; `--typed-references` types what it
  matches. The migration manifest gains a `reference` slot kind, and the
  migrator writes `x.ref`, `x.ref.pinned('id')`, `.literal(...)` or
  `.variable(...)` for it.
- **Typed resource references, part 1** (`terradart_core`, `terradart_codegen`,
  every provider package) — `RefTo<R>`, a compile-time-only reference to a
  resource of type `R`. Every generated resource has a `ref` getter
  (`vpc.ref` is a `RefTo<GoogleComputeNetwork>`), and so does every data
  source that reads a resource of the same package.
- **At-most-one sealed arguments** (`terradart_codegen`,
  `terradart_migrate`) — the shape for mutually exclusive inputs the
  provider also accepts none of: `deriveExactlyOne` seals a hints file's
  `at_most_one_of_groups` into one nullable sealed-type argument (or helper
  field) whose variants each set one member, beside the required sealed
  arguments of exactly-one groups. The migration manifest and the migrator
  carry them as optional sealed slots.
- **Google GA lane reads Magic Modules groups** (`terradart_codegen`) —
  `wrap --mm-groups` (`mmGroups: true` on the google lane) feeds
  `deriveExactlyOne` from the MM `exactly_one_of` / `conflicts` /
  `at_least_one_of` groups the weekly bump already re-syncs, without the
  `--mm-hints` enum retyping GA does not use. The derivation adopts a
  hand-written helper slot as a sealed variant. Generated output is
  unchanged until GA overrides opt in.
- **Hand-written `terradart_google` sealed types take dot shorthands** —
  the 58 sealed types GA overrides write by hand (`payload`, `source`,
  `trust`, health-check `protocol`, …) declare one `const factory` per
  variant, named after its member, so they read like the derived ones:
  `payload: .writeOnly(secretDataWo: ...)`, `source: .secret(...)`,
  `protocol: .http(port: ...)`. The variant classes keep working, and
  `terradart-migrate` emits the shorthand.

### Changed

- **Generated type names are short** (**breaking**; `terradart_codegen`,
  `terradart_google`, `terradart_google_beta`, `terradart_aws`,
  `terradart_cloudflare`, `terradart_appwrite`) — a derived helper, enum or nested sealed type is
  named after its resource and its own block or attribute
  (`CloudRunV2ServiceSecretKeyRef`, `QuicksightDashboardThousandsSeparator`)
  instead of the whole block path
  (`CloudRunV2ServiceTemplateContainersEnvValueSourceSecretKeyRef`). A name
  two blocks of a resource would share takes the nearest parent that tells
  them apart; blocks of the same name and shape share one helper, and enum
  inputs of the same name and values one enum; a nested sealed type takes
  its concept name (`CloudSecurityComplianceFrameworkDeploymentTargetResourceCreationConfig`).
  No name repeats the words its resource stem ends with
  (`ComputeSnapshotType`, not `ComputeSnapshotSnapshotType`) unless the
  shorter name is reserved for another input, and the hand-written override
  classes that said their resource twice drop the repeat
  (`ComputeSecurityPolicySecurityPolicyRule<Block>` →
  `ComputeSecurityPolicyRules<Block>`, `ComputeSecurityPolicySecurityPolicy<Block>`
  → `ComputeSecurityPolicy<Block>`, and the Compute instance group manager,
  autoscaler, backend bucket, forwarding rule, Firestore index, BigQuery
  dataset and Firebase App Hosting / Remote Config families); 320 doubled
  names → 13. The new `tool/type_name_stutter_test.dart` gate fails on a
  doubled name, prelude included, unless the shorter name is declared or
  `tool/type_name_stutter_debt.yaml` gives a reason (4 today).
  5,364 google, 170 google-beta, 8,671 aws, 975 cloudflare and 3 appwrite
  types are renamed, and 3,538 fewer are declared (27,684 → 24,146).
  Longest name 217 → 107 characters, p95 119 → 55, names over 80 characters 4,592 → 32. The
  new `tool/type_name_length_test.dart` gate fails on a name over 80
  characters that is more than one Terraform segment past the type it is
  named after (the resource stem, or for a sealed type its owner), unless
  `tool/type_name_length_debt.yaml` gives a reason (6 today). Synth
  output is unchanged. See `MIGRATING.md`.

- **Value lists inside helper classes take their element type**
  (**breaking**; `terradart_codegen`, `terradart_google`,
  `terradart_google_beta`, `terradart_aws`, `terradart_cloudflare`) — a list
  or set of strings, numbers or booleans in a generated helper class is a
  `TfArg<List<String>>` / `List<num>` / `List<bool>`, as at the top level,
  instead of `TfArg<List<Object?>>` (1,047 google, 39 google-beta, 1,142
  aws and 200 cloudflare fields; `GoogleStorageFtpServer`
  `allowedCidrBlocks` is a string list again). Five AWS QuickSight helpers
  split where the element type tells two block shapes apart. Synth output
  is unchanged. See `MIGRATING.md`.

- **`addOutput` and `addConstant` replace `addExport`** (`terradart_core`,
  `terradart_migrate`, examples, cookbook) — **Breaking.** A Terraform
  output and a Dart constant are two methods now, both written with dot
  shorthands: `addOutput('orders_topic_id', .ref(topic.id), description:
  ..., sensitive: ...)` takes any `TfArg`, and `addConstant('ordersTopicName',
  .ref(topic.nameRef))` takes a sealed `AppConstant<T>` — `.ref` (the literal
  an attribute is set to), `.value` (any `String` / `int` / `double` / `num` /
  `bool` / `Object` value, or a `List` / `String`-keyed `Map` of them) or
  `.fromEnvironment` (`String.fromEnvironment`). The constants file moves to
  the constructor (`appExports: AppExports('lib/generated/<stack>.app.dart')`)
  and its class is `<Stack>Constants`. Both methods validate at registration
  (identifier, duplicate, type, a sensitive field read by a non-sensitive
  output), and synth fails with a `StateError` saying what a `.ref`
  constant's attribute is set by when it is not a literal, instead of
  silently dropping the constant. The file is rewritten on every synth.
  `terradart-migrate` writes `addOutput` for a translated `output` block.
  `AppExport`, `ResourceIdExport`, `ResourceAttributeExport`, `StringExport`, `EnvBackedExport`,
  `setAppExportsOutputPath`, and the synth internals the barrel exported
  (`DartConstantsEmitter`, `LiteralResolver`, `OutputEmitter`) are removed;
  see [MIGRATING.md](MIGRATING.md).

- **Gemini setting bindings and the Observability link take `RefTo<R>`**
  (**breaking**; `terradart_google`) — `tool/reference_targets.yaml` gains
  rules for the parent setting id of the seven Gemini setting bindings, the
  Code Repository Index and Repository Group ids of `google_gemini_repository_group`
  and its IAM adjuncts, and the `bucket` of `google_observability_link`
  (an Observability bucket's `bucket_id`): 17 more typed inputs. Pass
  `setting.ref`; `.literal('id')` still compiles. Synth output changes only
  where an example now wires the parent: `gemini_quickstart` and
  `deferred_leftover_quickstart` emit the parent's id attribute instead of
  the same literal. See `MIGRATING.md`.
- **`terradart-migrate` writes dot shorthands** (`terradart_migrate`) —
  wherever the argument has a static type, a migrated Stack reads like the
  examples: `name: .literal('orders')`, `instance: .ref(db.nameRef)`,
  `databaseVersion: .literal(.postgres15)`, `network: .variable('network')`,
  `name: .workspace()`, and `.member` for an `Env` field typed as an enum.
  A bare `ModuleCall`'s `inputs` map is `Object?`-valued, so its values keep
  `TfArg.literal(...)`. Synth output is unchanged.

- **Arguments that name another resource take `RefTo<R>`** (**breaking**;
  `terradart_google`, `terradart_aws`, `terradart_cloudflare`) — the google,
  aws and cloudflare lanes type every input `tool/reference_targets.yaml`
  matches (318 google, 1,140 aws, 292 cloudflare): pass `vpc.ref`, or
  `.literal(...)` / `.variable(...)` / `.expression(...)` / `.arg(...)` for a
  value outside the Stack. Synth output changes where an example passed
  another attribute than the argument emits (`self_link` → `id` on google
  networks, `name` → `id` on Pub/Sub topic IAM, ...); `.pinned('attr')` keeps
  the old one. See `MIGRATING.md`. A type a later provider pin adds is typed
  by the weekly bump when its inputs match the ledger.
- **Sealed variants take `RefTo<R>`** (**breaking**; `terradart_aws`,
  `terradart_cloudflare`, `terradart_google`) — a member of a sealed group
  that the reference ledger matches is typed too, top-level or inside a
  nested helper: `scope: .zoneId(zone.ref)` on `cloudflare_ruleset`,
  `code: .s3Bucket(bucket.ref)` on `aws_lambda_function`, `subnet:
  .subnets(.literal([a.ref, b.ref]))` on `aws_lb`. Typed inputs go to 322
  google, 1,155 aws and 294 cloudflare. `terradart wrap` now lists every
  input the ledger matches but that stays a string (`reference input not
  typed:`). Synth output is unchanged. See `MIGRATING.md`.
- **Data-source arguments take `RefTo<R>`** (**breaking**;
  `terradart_aws`, `terradart_cloudflare`, `terradart_google`) — the
  reference ledger now matches data-source inputs too:
  `DataAwsNatGateway(vpcId: vpc.ref)`,
  `DataGoogleStorageBucketObjectContents(bucket: bucket.ref, ...)`,
  `DataCloudflareZoneLockdowns(zoneId: zone.ref)`. A data source inherits its
  resource twin's ledger `attributes` / `exclude` entries; a
  `data.<type>.<path>` key applies to the data source alone. Typed inputs go
  to 346 google, 1,197 aws and 782 cloudflare. Synth output is unchanged. See
  `MIGRATING.md`.
- **Appwrite arguments take `RefTo<R>`** (**breaking**; `terradart_appwrite`)
  — the appwrite lane now types references too: `project_id` →
  `AppwriteProject`, `database_id` → the database of the same family
  (`AppwriteTablesdb`, `AppwriteMongoDatabase`, `AppwriteMysqlDatabase`,
  `AppwritePostgresqlDatabase`), `table_id` / `related_table_id` →
  `AppwriteTablesdbTable`, `bucket_id`, `topic_id`, `function_id` and
  `site_id`, all emitting `id` (93 inputs, resources and data sources). A
  ledger rule takes an optional `types:` regex for a path that names a
  different target per product family. Synth output is unchanged. See
  `MIGRATING.md`.
- **google-beta arguments take GA `RefTo<R>`** (**breaking**;
  `terradart_google_beta`, `terradart_codegen`) — a beta-only resource input
  that names a GA resource takes the `terradart_google` type:
  `GoogleDataflowFlexTemplateJob(network: vpc.ref, subnetwork: subnet.ref)`,
  plus KMS keys, service accounts, buckets and a BigQuery dataset (22
  inputs).
  `terradart_google_beta` now depends on `terradart_google`. The ledger's
  `- inherit: hashicorp/google` entry reuses the GA rules, and
  `referencesFrom: google` in `tool/providers.yaml` points `wrap
  --reference-lane` at the GA schema and package. Synth output is unchanged.
  See `MIGRATING.md`.

- **Sealed variants are factory constructors** (**breaking**;
  `terradart_codegen`, `terradart_migrate`, every provider package) — a
  derived sealed type declares one `const factory` constructor per member,
  so a caller picks a choice with a Dart 3.10 dot shorthand:
  `code: .filename(TfArg.literal('f.zip'))` instead
  of `LambdaFunctionFilenameOption(filename: ...)`. The variant classes are
  renamed `<SealedType><Member>` and stay public for pattern matching. The
  migration manifest records each variant's constructor (`shorthand`), and
  `terradart-migrate` emits the dot-shorthand form — also for a
  hand-written sealed type that declares such factories
  (`replication: .auto()`). See `MIGRATING.md`.
- **Sealed arguments take concept names** (**breaking**;
  `terradart_codegen`, every provider package) — a sealed slot is named
  for what its members are alternatives of, like a protobuf `oneof`:
  `code: .filename(...)` instead of `filenameOrImageUriOrS3Bucket:`, and
  `name:`, `match:`, `system:` on the groups new in this
  release. The name comes from the new `sealedNames` override
  axis, else from the members' shared prefix or suffix, else it falls back to the `Or` name and waits in
  `tool/sealed_name_debt.yaml` (`awaiting-name:`), which `wrap --check`
  keeps in sync. The 16-member cap is gone: every sealable group seals.
  Every group on every lane is named in this release, so the ledger is
  empty. See `MIGRATING.md`.
- **No sealed type name repeats a block segment** (**breaking**;
  `terradart_codegen`, every provider package) — a joined name drops the
  words its halves share (`…RagConfigRagConfig` → `…RagConfig`), and a
  variant that would still repeat a segment or take a declared class ends
  in `Choice` / `Option` / `Variant`. A block holding nothing but one
  exactly-one group (or an at-most-one group, when the block is optional)
  is the sealed type itself: `amount: .lastPeriodAmount(...)` instead of
  `amount: BillingBudgetAmount(amount: .lastPeriodAmount(...))`. The
  variants of five hand-written `terradart_google` sealed types are
  renamed the same way (`StorageBucketObjectBody`, `ComputeImageSource*`,
  …). `tool/sealed_type_names_test.dart` fails on any sealed type or
  variant that says a segment twice across a join. See `MIGRATING.md`.
- **`terradart_google` nested blocks use derived helper types**
  (**breaking**) — the Compute, data and storage, serverless, security and
  operations, and GKE factories that still took hand-written helper
  classes or `TfArg<Map>` blocks set `deriveNestedTypes`: their nested
  blocks are helpers derived from the provider schema, the Magic Modules
  groups inside them are sealed types, the reference inputs inside them
  take `RefTo<R>`, and inputs a hand `paramOrder` hid are exposed.
  `GoogleContainerCluster` and `GoogleContainerNodePool` take
  `ContainerCluster*` / `ContainerNodePool*` helpers for every block.
  A `max_items = 1` block a hand helper emitted as a one-element list is an
  object. See `MIGRATING.md`.
- **Hand-curated Google overrides derive their remaining blocks**
  (**breaking**; `terradart_google`) — 122 overrides with hand helpers or
  `customSlots` set `deriveNestedTypes`: 21 `TfArg<Map>` inputs on 15
  factories (the Oracle Database `properties` blocks among them) take
  derived helpers, 15 inputs a hand `paramOrder` hid are exposed, and the
  Oracle and Migration Center hand enums type the derived fields. Hand
  helpers are unchanged. Synth output is unchanged. See `MIGRATING.md`.
- **Hidden and mis-modelled blocks on hand-curated Google factories**
  (**breaking**; `terradart_google`) — `GoogleBigtableAppProfile` splits
  its hand `routing` into the provider's two groups (`routing` with
  multi-cluster routing, and an optional `isolation`);
  `GooglePrivatecaCaPool` exposes `issuancePolicy`, `publishingOptions`
  and `encryptionSpec`; `GooglePrivatecaCertificate`'s inline config uses
  derived helpers; the health checks gain a `.grpcTls(...)` protocol; and
  `GoogleComputeRegionNetworkEndpointGroup.pscData` and
  `GoogleBigqueryDatasetAccess.condition` are exposed. See `MIGRATING.md`.
- **The last hand-written Google sealed helpers are derived**
  (**breaking**; `terradart_google`) — `GoogleConfigDeployment`,
  `GoogleEdgecontainerCluster`, `GoogleFirebaseAppHostingBuild`,
  `GoogleGkeBackupRestorePlan`, `GoogleVertexAiRagEngineConfig` and
  `GoogleNetworkConnectivitySpoke` take derived helpers, so their groups
  are sealed by the generator and the spoke's producer VPC `network` takes
  `RefTo<GoogleComputeNetwork>`. An override's `exactlyOneOf` entry now
  tightens a Magic Modules `conflicts` group to exactly one, which keeps
  the spoke's `attachment` required. `GoogleIamWorkforcePoolProvider`'s
  `extendedAttributesOauth2Client` / `scimUsage` are one nullable sealed
  `groupSource`. The Magic Modules parser treats an object whose fields
  are all output as output, so `GoogleChronicleFeed` no longer derives a
  helper for `failure_details` and `GoogleCesApp` no longer takes the
  output-only `dataStoreSettings`. See `MIGRATING.md`.
- **Remaining Compute, networking and DNS blocks use derived helper
  types** (**breaking**; `terradart_google`) — the 97 Compute, networking,
  DNS and certificate overrides without `deriveNestedTypes` set it: 37
  `TfArg<Map>` inputs on 36 factories (mostly IAM `condition`) take
  derived helpers, and 12 inputs a hand `paramOrder` hid are exposed
  (`params`, `macsec`, `cipherSuite`, `vpnInterfaces`, ...). Synth
- **Remaining data, analytics and storage blocks use derived helper
  types** (**breaking**; `terradart_google`) — the 156 data, analytics,
  storage, database, Pub/Sub and data-source overrides without
  `deriveNestedTypes` set it: 111 `TfArg<Map>` inputs on 109 factories
  (mostly IAM `condition`) take derived helpers, and 3 inputs a hand
  `paramOrder` hid are exposed (`requiredAspects`, `metastore`, and the
  FHIR store IAM member's `condition`). The data-source leftover example
  generator fills a required derived helper from a reviewed table. Synth
  output is unchanged. See `MIGRATING.md`.
- **Remaining security, IAM and resource-manager blocks use derived
  helper types** (**breaking**; `terradart_google`) — the 124 security,
  IAM, KMS, secrets, org-policy and resource-manager overrides without
  `deriveNestedTypes` set it: 87 `TfArg<Map>` inputs on 87 factories
  (mostly IAM `condition`) take derived helpers. Synth output is
  unchanged. See `MIGRATING.md`.
- **Remaining platform, serverless and operations blocks use derived
  helper types** (**breaking**; `terradart_google`) — the last 118
  Google overrides without hand-written helpers or `deriveNestedTypes`
  set it: 68 `TfArg<Map>` inputs on 65 factories (mostly IAM `condition`)
  take derived helpers, and 4 inputs a hand `paramOrder` hid are exposed
  (`GoogleMonitoringCustomService.telemetry` and the Cloud Deploy IAM
  members' `condition`). Synth output is unchanged. See `MIGRATING.md`.
- **`terradart_google` compute and networking input groups are sealed
  types** (**breaking**) — the GA lane's first `deriveExactlyOne`
  adoption: 16 Magic Modules groups on 13 resources (11 `conflicts` sets
  → nullable, 5 `exactly_one_of` groups → required), e.g.
  `GoogleVpcAccessConnector(minCapacity: ...)`. A hand
  helper slot such as `GoogleComputeUrlMap`'s `defaultUrlRedirect` becomes
  a variant that keeps its class. See `MIGRATING.md`.
- **`terradart_google` data, storage, database and observability input
  groups are sealed types** (**breaking**) — 35 Magic Modules groups on 20
  resources (18 nullable, 17 required), e.g.
  `GooglePubsubSubscription(delivery:
  ...)` and `GoogleMonitoringSlo(period: ...)`.
  `GoogleBigqueryDatasetAccess`'s eight principal / target inputs are one
  sealed argument, which retires its `tool/exactly_one_lint_debt.yaml`
  entry. See `MIGRATING.md`.
- **`terradart_google` AI / ML, serverless, container and CI/CD input
  groups are sealed types** (**breaking**) — 35 Magic Modules groups on 25
  resources (17 nullable, 18 required), e.g.
  `GoogleCloudbuildv2Connection(host: ...)` and the Cloud Run
  probe handlers. `GoogleGkeBackupBackupPlan`,
  `GoogleClouddeployCustomTargetType`, `GoogleCloudRunV2WorkerPool` and
  `GoogleVertexAiRagCorpus` take typed nested helpers instead of map
  literals. See `MIGRATING.md`.
- **`terradart_google` security, identity, billing and operations input
  groups are sealed types** (**breaking**) — 13 Magic Modules groups on 8
  resources (4 nullable, 9 required), e.g.
  `GoogleAccessContextManagerAccessLevel(definition: ...)`. Every
  `terradart_google` resource override now sets `deriveExactlyOne`
  (`yaml_loader_test.dart` enforces it). See `MIGRATING.md`.
- **Minimum Dart SDK is 3.10** (**breaking**) — every package, example,
  and cookbook stack declares `sdk: ^3.10.0` (was `^3.6.0`;
  `terradart_hcl` and `terradart_migrate` already required 3.10). The
  generated provider wrappers are formatted in the Dart 3.7+ tall style,
  which the old constraint contradicted: pub.dev's formatter check cost
  each provider package 10 points. Hand-written code is reformatted in the
  tall style, and `terradart-migrate` writes `sdk: ^3.10.0` into the
  packages it generates. See `MIGRATING.md`.
- **`terradart_aws` at-most-one groups are nullable sealed types**
  (**breaking**) — 229 groups on 160 resources (169 on resource arguments,
  60 in nested blocks; 59 are `name` / `name_prefix`), e.g.
  `AwsIamRole(name: .name(...))`. The AWS
  hints extractor now reads SDKv2 `ConflictsWith` / `AtLeastOneOf` lists and
  the framework `ConflictsWith` / `Conflicting` / `AtLeastOneOf` validators
  and combines them per resource with `exclusiveGroups`, as on cloudflare;
  that also promotes `AwsDocdbGlobalCluster` `engine` /
  `source_db_cluster_identifier` to an exactly-one group, and the extractor
  now reads every framework validator kind (`float64validator`, ...) and a
  spread `path.Expressions{...}...`, which adds
  `AwsPrometheusAnomalyDetector`'s two `amount` / `ratio` groups (163 now). The
  weekly aws bump's re-extraction refreshes them with the pin; the leftover
  example generator picks variants of optional sealed slots too. Synth
  output is unchanged. See `MIGRATING.md`.
- **`terradart_google_beta` `conflicts` sets are nullable sealed types**
  (**breaking**) — `MmYamlParser` now reads Magic Modules `conflicts` and
  `at_least_one_of` beside `exactly_one_of` and combines them with the
  shared `exclusiveGroups`, and `wrap --mm-hints` seals the at-most-one
  groups: 4 groups on 3 beta resources, e.g.
  `GoogleFirebaseHostingChannel(expiration:
  .ttl(...))`. The exactly-one groups are
  unchanged. The GA `google` lane does not wrap with `--mm-hints`, so its
  259 `conflicts` entries stay unsealed. See `MIGRATING.md`.
- **`terradart_cloudflare` at-most-one groups are nullable sealed types**
  (**breaking**) — 14 groups on 8 resources (5 on resource arguments, 9 in
  nested blocks), e.g. `CloudflareDnsRecord(content:
  .content(...))`. `tool/extract_provider_hints.dart`
  now writes `at_most_one_of_groups` into `source_cloudflare/hints/`: the
  `ConflictsWith` / `Conflicting` pairs no exactly-one group covers, joined
  into groups when every member conflicts with every other. The combining
  rule is shared (`exclusiveGroups` in `terradart_codegen`) so the other
  hint sources can adopt it; a conflict it cannot express (one that touches
  an exactly-one member, spans two blocks, or is not pairwise) is listed on
  stdout. The weekly bump's re-extraction refreshes the groups with the
  pin. Synth output is unchanged. See `MIGRATING.md`.

- **`terradart_cloudflare` exactly-one groups are sealed types**
  (**breaking**) — 13 groups on 5 resources (2 on resource arguments, 11 in
  nested blocks) take one required sealed argument whose variants each set
  one member, e.g. `CloudflareRuleset(scope:
  .zoneId(...))`. `tool/extract_provider_hints.dart`
  now reads the plugin-framework relation validators too and writes
  `exactly_one_of_groups` into `source_cloudflare/hints/`: every
  `ExactlyOneOf` set (attribute validators and `resourcevalidator` in
  `ConfigValidators`), and every `AtLeastOneOf` set whose members all
  pairwise `ConflictsWith`. Every
  cloudflare resource override sets `deriveExactlyOne: true` (and the lane
  scaffold fills it for new types), so a re-extraction at a later pin seals
  new groups in the same bump. The migration manifest derives the sealed
  shapes; the round-trip gate stays green. Synth output is unchanged. See
  `MIGRATING.md`.
- **`terradart_google_beta` reaches the GA package's type safety**
  (breaking) — the beta lane now reads Magic Modules YAML: every beta
  resource is resolved to its `mmv1` file through the generated Go source of
  `hashicorp/google-beta` at the pinned tag (`tool/sync_lane_mm_yaml.dart`,
  no hand-kept list), and `terradart wrap --mm-hints` turns its
  `enum_values` into enums and its `exactly_one_of` groups into sealed
  arguments. Nested blocks take typed helper classes instead of
  `TfArg<Map<String, dynamic>>` (114 inputs), 67 inputs are enums, and two
  exactly-one groups are sealed. The weekly schema bump re-syncs the MM YAML
  with the google-beta ride-along. Synth output is unchanged; see
  [MIGRATING.md](MIGRATING.md).

## [0.30.0] - 2026-09-28

Lockstep release across the workspace. `terradart_hcl` and `terradart_migrate` ship on pub.dev for the first time; `terradart-migrate` installs with `dart pub global activate terradart_migrate`. **Breaking** — `terradart_google` / `terradart_google_beta` move to `hashicorp/google` 8.x (22 removed factories, 16 beta → GA promotions, sealed write-only secrets; existing root modules need `terraform init -upgrade`, and removed types must leave state first), Cloudflare follows 5.26.0, and Cloudflare, Appwrite and AWS inputs with a fixed value set become enums; AWS exactly-one groups are sealed. `terradart-coverage` is retired and four `terradart-migrate` flags are gone. Read the upgrade steps in [MIGRATING.md](MIGRATING.md) before bumping. The `terradart_google` catalog is **1359 curated resource factories + 468 data sources** (1827 entries).

### Added

- **`terradart-migrate --report`** — runs the migration in memory and writes
  nothing: every `resource` / `data` type of the tree with how many blocks
  translate, how many stay in Terraform (each with its reason), the factory
  it maps to or `not in any catalog`, and the `module` calls whose source is
  outside the tree. `--json` prints it as JSON. Unlike `terradart-coverage`,
  which only asks whether a type is in a catalog, it reports whether each
  block actually translates. The `config_tree/` and `real_plan_src/` fixtures
  move from `terradart_coverage` to `terradart_migrate/test/fixtures/`.

### Changed

- **`terradart_google` / `terradart_google_beta` target `hashicorp/google`
  8.x** (breaking) — the fixtures move to 8.1.0 and `required_providers`
  pins `~> 8.0` for `google` and `google-beta`, so an existing root module
  needs `terraform init -upgrade`. Dart API breaks follow the provider:
  `GoogleSecretManagerSecretVersion.secretDataWoVersion` and
  `BigqueryDataTransferConfigSensitiveParams.secretAccessKeyWoVersion` are
  `TfArg<String>`; `GoogleWorkflowsWorkflow.sourceContents` and
  `GoogleIamWorkforcePoolProviderScimTenant.claimMapping` are required;
  worker pool `customAudiences`, `GoogleIntegrationsClient.runAsServiceAccount`,
  the backup DR data sources' `resourceType` and the reservation
  `reservationBlockCount` getters are gone. 8.1.0's seven new types
  (`google_eventarc_pipeline_iam_*`, `google_monitoring_snooze`,
  `google_network_management_network_monitoring_provider`,
  `google_observability_bucket`, `google_scc_notification_service_account`)
  get scaffolded factories, recorded in `tool/curation_backlog.yaml` and
  `tool/example_debt.yaml` like any weekly bump. The weekly bump tracks major 8.
  See `MIGRATING.md` for the upgrade steps and the behaviour changes a plan
  shows.
- **Write-only secret choices are sealed** (breaking) — provider 8.0 makes
  `secret_data` / `secret_data_wo` (with a required `secret_data_wo_version`),
  the BigQuery Data Transfer `secret_access_key` / `secret_access_key_wo`, and
  the uptime check `password` / `password_wo` exactly-one-of. The Dart API
  enforces it: `GoogleSecretManagerSecretVersion(payload:)`,
  `BigqueryDataTransferConfigSensitiveParams(secretAccessKey:)` and
  `MonitoringUptimeCheckConfigHttpAuthInfo(password:)` take a required sealed
  value with a write-only and a plaintext variant. `terradart wrap`'s
  migration manifest derives a custom slot whose argMap entry is
  `...<slot>.argMap` as a merged sealed slot, so the migrator translates the
  new shape. See `MIGRATING.md`.
- **16 beta-only types move to `terradart_google`; the fixtures move to
  `hashicorp/google` 8.4.0** (breaking) — provider 8.2 / 8.3 promoted
  `google_biglake_hive_{catalog,database,table}` (+ their IAM member /
  binding / policy), `google_observability_{folder,organization,project}_settings`
  and `google_compute_network_edge_security_service` to GA. Their factories
  leave `terradart_google_beta` (128 → 112 resource factories) and ship
  unchanged from `terradart_google`, without the `google-beta` provider pin;
  coverage moves from `beta_leftover_quickstart` to
  `deferred_leftover_quickstart`. 8.2–8.4's 14 new GA types get scaffolded
  factories, recorded in the curation backlog and example debt; their
  documented enums are typed, and `GoogleStorageFtpServer` takes a sealed
  `StorageFtpServerConfig` (`internal_config` | `external_config`).
  `GoogleBiglakeHiveTable` takes typed `storageDescriptor` /
  `partitionKeys` blocks, and `CloudRunV2ServiceTemplate` gains the 8.x
  `workloadIdentityConfig` block.
  `DataGoogleContainerCluster.skipNodePoolRefresh` is gone. See
  `MIGRATING.md`.
- **MM YAML sync pinned to the provider release** — `tool/sync_mm_yaml.dart`
  reads the magic-modules commit the fixture's `hashicorp/google` release
  was generated from (the `[upstream:<sha>]` stamp nearest the release tag,
  declared by `upstream_ref` in `tool/mm_yaml_sources.yaml` and recorded in
  `source/mm_upstream_ref.txt`) instead of `main`, which had run ahead of
  the schema with provider 8.0 content. `--ref` overrides the pin. The new
  type scaffold fetches from the same commit, and the drift report names
  it. The three remaining 404 paths (`gkehub2/Scope.yaml`,
  `gkehub2/Namespace.yaml`, `networksecurity/UrlLists.yaml`) are fixed, so
  the weekly sync reports no failures. Generated doc comments follow the
  7.46.1 MM text.
- **`terradart wrap` removes orphaned generated files** — a full `wrap`
  deletes every generated wrapper or barrel no override emits any more (a
  deleted override used to leave its file behind, still compiling), and
  `wrap --check` fails on one. The leftover-example generators
  (`generate_data_source_leftover_example.dart`,
  `generate_aws_leftover_example.dart`) cover only the factories the
  catalog lists.
- **`terradart_cloudflare` follows `cloudflare/cloudflare` 5.26.0**
  (**breaking**) — the pin moves from `5.23.0`, `DataCloudflareRateLimits`
  is removed with the upstream data source, the factories follow the
  provider's 5.24.0 schema changes, and the 14 resources and 22 data sources
  added since get factories. See `MIGRATING.md`.
- **`terradart_cloudflare` enums** (**breaking**) — every input with a fixed
  value set is a generated enum instead of a `String` (538 string slots and
  41 list slots, 579 enums), typed from the provider's Go validators and
  `Available values:` descriptions (`wrap --provider-enums`, the cloudflare
  lane's `providerEnums: true`). `terradart-migrate` matches cloudflare enum
  values case-insensitively and warns when it normalizes one. Synth output
  is unchanged. See `MIGRATING.md`.
- **`terradart_cloudflare` map-of-object attributes** (**breaking**) — an
  attribute declared as a map of objects (`nesting_mode: "map"`) takes
  `Map<String, Helper>` instead of a single helper, which no value could
  make pass `terraform validate`: 34 inputs across 7 resources, including
  `CloudflareZeroTrustRiskBehavior.behaviors` (now covered by the leftover
  example) and the Pages project bindings. Sensitive-field paths gain a `*`
  segment for map entries, so synth checks `env_vars.*.value` per entry,
  and `terradart-migrate` translates these maps (`MigrateSlot.keyed`). No
  other lane has such attributes. See `MIGRATING.md`.
- **`terradart_appwrite` enums** (**breaking**) — 23 string slots on 17
  resources are generated enums: the value sets the provider's validators
  enforce, extracted into `source_appwrite/hints/` (the appwrite lane sets
  `providerEnums: true`), plus hand-written `MessagingProviderType` and
  `TablesdbColumnType` for the two sets the provider enforces at create.
  `tool/extract_provider_hints.dart` reads hand-written plugin-framework
  resources (`resource.go` / `*_resource.go`, one Go type registered per
  engine) besides Stainless's `schema.go`; the Cloudflare hints are
  unchanged. Synth output is unchanged. See `MIGRATING.md`.
- **`terradart_aws` enums** (**breaking**) — 2903 string inputs on 811
  resources are generated enums: the closed value sets the provider's
  validators enforce (not a set inside `validation.Any`), extracted into `source_aws/hints/` (the aws lane sets
  `providerEnums: true`, and the weekly bump re-extracts them when the pin
  moves). `tool/extract_provider_hints.dart` scans hashicorp/aws through
  the new `tool/provider_hints_aws.dart`: annotated SDKv2 and framework
  resources, package helper schemas, and aws-sdk-go-v2 `types` enums read
  at the module versions the provider's `go.mod` requires (downloaded at
  extraction time only; the fixture is checked in).
  `tool/generate_aws_leftover_example.dart` writes enum members. Synth
  output is unchanged. See `MIGRATING.md`.
- **`terradart_aws` exactly-one groups are sealed types** (**breaking**) —
  160 `ExactlyOneOf` groups on 116 resources (74 on resource arguments, 86
  in nested blocks) take one required sealed argument whose variants each
  set one member, e.g. `AwsLambdaFunction(filenameOrImageUriOrS3Bucket:
  LambdaFunctionFilenameOption(...))`. The hints extractor writes the
  groups into `source_aws/hints/` as `exactly_one_of_groups` (SDKv2
  `ExactlyOneOf`, framework `*validator.ExactlyOneOf` and
  `ConfigValidators`), and the new override flag `deriveExactlyOne: true`
  (set on every aws resource override, and scaffolded for new types) seals
  them in `wrap`. The migration manifest derives the sealed shapes, so the
  round-trip gate stays green with nothing kept in Terraform. Synth output
  is unchanged. See `MIGRATING.md`.
- **Weekly schema bump per provider** — `schema-bump.yml` runs one job and
  opens one PR per `tool/providers.yaml` lane with a `bump:` entry: google
  (+ the google-beta ride-along) on Sundays, aws on Mondays, cloudflare on
  Tuesdays (`pr-only`, never auto-merged). Each lane tracks its provider's
  current major and ignores other majors and prereleases
  (`tool/fetch_schema.dart --lane`). The bump tools are provider-generic
  (`tool/schema_resource_diff.dart`, `tool/bump_lane_gates.dart`,
  `tool/bump_plan.dart`), and the current google version is read from the
  fixture's `provider_version.txt`.
- **New upstream types no longer block the bump** — a new resource or data
  source gets a scaffolded default override and a factory in the bump PR
  (`tool/bump_new_factories.dart`: `wrap-init` on google, the lane scaffold
  on aws / cloudflare), a `tool/curation_backlog.yaml` entry asking for API
  polish, and an `awaiting-example:` line in `tool/example_debt.yaml` unless
  the lane's leftover example covers it. A removed type or a breaking API
  diff still blocks auto-merge. Every bump lane now diffs data sources, and
  the google catalog test fails on a GA data source without a factory; the
  13 it caught (8 new in 8.1–8.4, 5 older) are wrapped.
- **One source of truth for the aws / cloudflare pins** — `wrap` emits
  `lib/src/_provider_version.g.dart` from each fixture's
  `provider_version.txt`; the package tests check the pin and the filled
  catalog against the fixture, and `check_docs_consistency.dart` fails on a
  doc that restates either pin or catalog count.
- **Docs** — the agent skill and the *Migrating from HCL* guide describe one
  loop: `terradart-migrate --report`, then a migration, then porting the
  sidecar leftovers into the Stack, synth, and `terraform plan` with *No
  changes*. The `terradart-migrate` beta gate reads "installed from pub.dev".
  `terradart_aws` and `terradart_time` are on pub.dev, so the "not on pub.dev
  yet" notes and the Git dependency on the AWS page are gone; `RELEASE.md`
  covers all ten packages and eight publish phases.

### Removed

- **`terradart_google`: the 22 factories `hashicorp/google` 8.0 removes**
  (breaking) — `google_beyondcorp_app_{connection,connector,gateway}`,
  `google_iap_{brand,client}`, `google_ml_engine_model`,
  `google_notebooks_{environment,instance,runtime}` with their six IAM
  factories, `google_vertex_ai_schedule`, and the data sources
  `google_beyondcorp_app_{connection,connector,gateway}`, `google_iap_client`
  and `google_notebooks_{instance,runtime}_iam_policy`. The `notebooks`
  barrel and `examples/notebooks_quickstart` go with them. The catalog is
  1322 curated resource factories + 455 data sources (1777 entries). See
  `MIGRATING.md` for the successors and the state steps before upgrading.
- **`terradart-coverage` (`packages/terradart_coverage`)** — the coverage
  CLI, its release binaries and its Homebrew formula. With every provider
  catalog filled, "does this type have a factory" is nearly always yes;
  `terradart-migrate --report` answers the question that matters, whether
  each block translates, from the same `.tf` / `.tf.json` source. The
  `terraform show -json` input goes with it. See `MIGRATING.md`.
- **`terradart-migrate --update`, `--in-place`, `--allow-todo` and
  `--inline-locals`** — the flags that finished a migration on the
  migrator's side. What stays in Terraform always lands in the sidecar now,
  and porting it — a block a later catalog covers, a local that could be a
  Dart value, the source tree's cleanup — is an edit to your Stack, reviewed
  by `terraform plan`. `--merge-envs` and `--lift-workspace` stay. See
  `MIGRATING.md`.
- **`terradart-migrate` release binaries and Homebrew formula** — the
  migrator is published to pub.dev instead
  (`dart pub global activate terradart_migrate`), with `terradart_hcl` as a
  package of its own. `release-binary.yml`, `tool/render_formula.dart` and
  `tool/render_to_file.dart` are removed. See `MIGRATING.md`.
- **Claude Code configuration** — `CLAUDE.md` and `.claude/settings.json`
  are gone; `AGENTS.md` and the Cursor hooks (`.cursor/hooks.json`) are the
  agent guardrails. No Dart API change.

## [0.29.0] - 2026-09-27

Lockstep release across the workspace, with two new published packages: `terradart_aws` and `terradart_time`. **Breaking** — `TimeProvider` / `TimeSleep` move from `terradart_google` to `terradart_time` (an import change), and `terradart-mcp` is retired in favour of the TerraDart Agent Skill. See [MIGRATING.md](MIGRATING.md).

### Added

- **`terradart_aws`** — fill the curated catalog at the `hashicorp/aws`
  `6.66.0` pin (**1725 resource factories + 683 data sources**).
  Coverage via [`aws_lambda_quickstart`](examples/aws_lambda_quickstart/)
  and [`aws_leftover_quickstart`](examples/aws_leftover_quickstart/)
  (synth + `terraform validate`). `terradart-migrate` translates `aws_*`
  blocks and the `provider "aws"` settings into it (credential arguments are
  dropped, never written into Dart), and `terradart-coverage` matches
  against its catalog. Guide: [Dart apps on AWS](https://terradart.dev/docs/aws/).
- **Examples** — [`aws_static_site_quickstart`](examples/aws_static_site_quickstart/)
  hosts a Flutter Web build on a private S3 bucket behind CloudFront, on a
  custom domain with an ACM certificate validated through Route 53, and
  [`aws_ecs_express_quickstart`](examples/aws_ecs_express_quickstart/) runs a
  Dart server on ECS Express Mode from an ECR image. Both are gated examples
  (`## Before you apply`); CI runs synth + `terraform validate` only.
- New package **`terradart_time`** — `TimeProvider` / `TimeSleep`
  (`hashicorp/time`), so a stack on any provider package can use the
  propagation wait without depending on `terradart_google`.
- **`terradart_google`** — `GoogleChronicleSoarNetwork`
  (`google_chronicle_soar_network`), covered by the gated
  [`chronicle_quickstart`](examples/chronicle_quickstart/). The catalog is
  now **1338 curated resource factories + 461 data sources** (1799 entries).
- **`terradart_codegen`** — the `dedupeNestedTypes: true` override axis: nested
  blocks with an identical shape inside one resource share one helper class.
  The six depth-14 wafv2 / quicksight resources in `terradart_aws` use it.

### Removed

- **`terradart-mcp` (`packages/terradart_agent`)** — the local MCP catalog server, its Homebrew formula and release binaries, and the website's Agent pages. Its catalog tools only covered `terradart_google`, and `check_coverage` / `migrate_module` duplicated the `terradart-coverage` and `terradart-migrate` CLIs. A coding agent now reads the generated sources directly, guided by the new [TerraDart Agent Skill](skills/terradart/SKILL.md) ([Coding agents](https://terradart.dev/docs/agents/)). The generated `terradartCatalog` stays: `terradart_coverage` and the coverage page use it. See `MIGRATING.md`.
- The cost ledger (`tool/apply_cost_denylist.yaml`), the apply-smoke skip ledgers, `tool/apply_smoke.sh` and its selection tests, the wave skiplist gate, the read-only orphan probe, and the gcp-cost transport used for cost classification. They partitioned examples for the live apply harness retired in #624; nothing consumed them any more. The knowledge the skip ledgers held moved into each example README's `## Before you apply` section. The repository no longer registers the gcp-cost MCP server (`.mcp.json`, `.cursor/mcp.json`).
- The scheduled wave loop and its monitoring: `wave-open.yml`, `wave-merge.yml`, `escalation-relay.yml`, `loop-health.yml`, the wave-shipper runbook, `tool/wave_allowed_paths.yaml`, `tool/loop_health_report.dart` and `tool/loop_models.yaml`. After the GA catalog fill it shipped four one-resource Waves in two months, and the rest of the backlog needed design decisions it could only escalate. Waves now ship on demand through the `terradart-ship-wave` skill; `tool/curation_backlog.yaml` stays as their queue.

### Changed

- The weekly schema bump merges itself when it is routine. `schema-bump.yml` enables auto-merge (squash) on its PR when the drift report finds no new or removed resources, no breaking change to the generated Dart API (new `tool/bump_api_surface.dart`, which diffs the migration manifests before and after the regenerate), a clean regenerate and green QA gates; the required CI checks still gate the merge. The Monday post-process agent, its runbook, the `bump-merge.yml` executor, its scope ledger (`tool/bump_allowed_paths.yaml`, `tool/check_bump_scope.dart`) and the `bump-approved` / `bump-escalated` labels are gone. Any other bump waits for the maintainer.
- **Breaking** — `TimeProvider` / `TimeSleep` move from `terradart_google`
  to `terradart_time`; `package:terradart_google/time.dart` is gone. Add
  `terradart_time` to your dependencies and import
  `package:terradart_time/terradart_time.dart` (see
  [MIGRATING.md](MIGRATING.md)). `terradart-migrate` now emits that import
  and a `terradart_time` dependency for `time_sleep`, so a migrated AWS or
  Cloudflare module no longer pulls in `terradart_google`.
- A reason that only matters at apply time (billing, entitlements, an organization, undeletable resources) is no longer a reason to skip an example. Such factories ship in gated examples, and the `tool/example_debt.yaml` entries that cited those reasons are payable.
- The CI job `apply_smoke.sh selection test` is now `example gates (synth, topology, coverage page)`; `ci gate` remains the single required check.
- The wrap and lint lanes are driven from `tool/providers.yaml`, and the shared lint ledgers (`tool/exactly_one_lint_debt.yaml`, `tool/migrate_manifest_debt.yaml`) are read by every lane; an entry that names an override in no lane fails.
- Weekly schema bumps 2026-09-13 and 2026-09-20 (Magic Modules YAML; `hashicorp/google` stays at `7.46.1`): generated doc comments only, no Dart API changes.

## [0.28.1] - 2026-09-13

Lockstep patch release across the workspace. **No breaking changes** vs `0.28.0`.

- **`terradart_migrate`** — fix: a passthrough slot whose parameter is a bare `Map` / `List` (`advancedExtra` on `SqlDatabaseInstanceSettings`) was emitted as `TfArg.literal({...})`, so a migrated Stack carrying an `insights_config` did not compile although the report counted the resource as migrated. The emitter now honours the manifest's `wrapped` flag, shapes the payload to the parameter and types empty payloads; `cloud_sql_quickstart` exercises the path so the round-trip gate covers it.

## [0.28.0] - 2026-09-13

Lockstep release across the workspace — the `terradart-migrate` epic (#80) lands: `terradart_hcl`, `terradart_migrate`, the `terradart-migrate` binary, the `migrate_module` MCP tool, and the `terradart_core` additions the migrator needed. **Breaking** — `TfArg` gains a fourth variant (`TfArgExpression`) and `StackProvider` gains `alias`; see [MIGRATING.md](MIGRATING.md).

### Added

- New package **`terradart_migrate`** — the migration manifests of the four curated catalogs, generated by `terradart wrap --migrate-manifest` into `lib/src/manifest/` and verified by every `wrap --check` lane; the manifest runtime types move there from the provider packages (#658).
- **`terradart_migrate`** — `migrateModule`: a Terraform module in, a Dart package (Stack, `bin/infra.dart`, `pubspec.yaml`) and a report out, resource-atomic and manifest-driven; the round-trip gate `tool/migrate_roundtrip_gates.dart` proves `synth(migrate(synth(S))) == synth(S)` over every quickstart, in `agent_verify.sh` and CI (#660).
- New package **`terradart_hcl`** — pure Dart HCL parser, `*.tf.json` decoder and `TfModule` model (the input side of `terradart-migrate`, #657).
- **`terradart_core`** — `TfArg.expression`: a raw Terraform expression as a first-class argument, emitted verbatim, accepted on sensitive fields and checked for undeclared `var.<name>` references at synth time. The migrator emits it for every expression it cannot type, so an expression on a number, bool, enum, list or sensitive argument no longer keeps a resource in Terraform. **Breaking** for exhaustive `switch`es over `TfArg` — see [MIGRATING.md](MIGRATING.md) (#662).
- **`terradart-migrate`** — the CLI: a Terraform source tree in (`--dir`), one Dart package out (`--out`) with a Stack per module directory, a `tf-out/` tree mirroring the source, the leftover sidecar beside each `main.tf.json`, copies of `terraform.tfvars` / `*.auto.tfvars` / `.terraform.lock.hcl`, and `MIGRATION.md`; roots, children (child-module mode) and environment siblings are inferred; `--allow-todo`, `--json`, `--force`; never writes into `--dir` or outside `--out` (#661). Ships as a single binary: `release-binary.yml` builds `terradart-migrate` for macOS, Linux and Windows and pushes its Homebrew formula (`brew install nozomi-koborinai/tap/terradart-migrate`); website guide [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/) (#664).
- **`moved` blocks and `count` / `for_each` unrolling** — `Stack.addMoved(from, to)` in `terradart_core` emits the top-level `moved` group. `terradart-migrate` unrolls a literal `count` / `for_each` into one resource per instance (`google_pubsub_topic.t[0]` → `google_pubsub_topic.t_0`), substitutes `count.index` / `each.*`, points every reference — in Dart and in the sidecar — at the new addresses, and records a `moved` entry per instance, so `terraform plan` against the existing state shows moves only; `tool/migrate_moved_gates.dart` proves it against a fixture state in CI. A non-literal `count` / `for_each` still keeps the block in Terraform (#663).
- **Provider aliases, end-to-end** — `StackProvider.alias` in `terradart_core`, `alias:` on `GoogleProvider` / `GoogleBetaProvider` / `AppwriteProvider` / `CloudflareProvider` / `TimeProvider`, a `provider:` parameter on every curated factory and data source (`provider: 'google.eu'`, or `provider: 'google-beta'` on a GA type), and synth's list form of the `provider` block with validation of every selection. `terradart-migrate` translates `provider` blocks with `alias` and `provider = x.alias` / `provider = google-beta` instead of keeping the resource in Terraform. **Breaking** only for hand-written `StackProvider` implementations — see [MIGRATING.md](MIGRATING.md) (#666).
- **Workspaces, timeouts and partial backends** — `TfArg.workspace()` (`${terraform.workspace}`), a provider-neutral `timeouts:` (`TfTimeouts(create:, read:, update:, delete:)`) on every curated factory and data source, and optional `bucket` / `key` on `GcsBackend` / `S3Backend` for `terraform init -backend-config` workflows. `terradart-migrate` translates all three instead of keeping the block in Terraform: a `timeouts { ... }` becomes `const TfTimeouts(...)`, a bare `terraform.workspace` becomes `TfArg.workspace<T>()`, and a partial `backend "gcs" {}` becomes `const GcsBackend()` (#671).
- **`module` calls, end-to-end** — `ModuleCall` / `Stack.addModule` in `terradart_core` emit the top-level `module` group and read a module's outputs back as `TfRef`s. `terradart-migrate` translates every `module` block it can express — a call whose `source` points at a local directory in the tree gets a generated typed wrapper (`CloudRunModule(localName: 'cloud_run_bff', source: '../modules/cloud_run', name: ...)`, `bff.serviceName`) built from that directory's `variable` and `output` blocks; anything else (registry, git, a path outside the scan) becomes a bare `ModuleCall`. References to `module.x.out`, `depends_on` on a call and outputs over one all resolve; a `count` / `for_each`, a computed `source` or an input the module does not declare still keeps the call in Terraform. The coverage fixture `config_tree/` now migrates completely (#665).
- **Re-running the migrator** — `terradart-migrate --update <package>` picks a migration back up after a catalog wave: it reads only what is still Terraform (each directory's sidecar, never the `main.tf.json` a Stack writes), and hands back `lib/<stack>.snippets.dart` — an extension on `Stack` whose body is the statements to paste — plus `terradart_leftover.next.tf` and `RERUN.md`. Your Dart is never overwritten: the writer owns those three file kinds and refuses everything else. The re-run gate in `tool/migrate_fixture_gates.dart` proves the pasted snippet synthesizes exactly what a one-shot migration does (#669).
- **Environments as one Stack** — `terradart-migrate --merge-envs` folds sibling environment roots (`envs/dev`, `envs/prod`) into one `AppStack({required Env env})` beside a generated `Env` enum: every value the roots disagree on is a constant on the enum — typed as the argument takes it, enums included (`TfArg.literal(env.assetsName)`, `GcsBackend(bucket: env.backendBucket)`) — a block only some of them declare sits behind `if (env.isProd)`, and `dart run bin/infra.dart [--env dev]` synthesizes each environment into its own `tf-out/` directory. A group that differs in anything but liftable values — a reference, a nested block, a `sensitive` variable's default — keeps one Stack per root and says why. `--lift-workspace` (opt-in) turns `terraform.workspace` into a `workspace` parameter on the Stack. The merged-environment gate in `tool/migrate_fixture_gates.dart` proves the merged Stack synthesizes, per environment, exactly what one Stack each did (#668).
- **`terradart_agent`** — `migrate_module`, the migrator over MCP (#667): one Terraform module's text (HCL or `.tf.json`, `syntax: auto` reads a leading `{` as JSON) in; the generated Stack, `bin/infra.dart`, `pubspec.yaml`, the sidecar of what stays in Terraform (with the file each kept address landed in) and the report out. A text-to-text translation — nothing is read from disk, no `terraform` runs — and a source that does not parse comes back as an `error` with diagnostics instead of failing the call. `terradart-mcp` now serves six tools; the whole-tree cases (child modules, environments, `moved`, `--update`) stay with the CLI.
- **`terradart-migrate`** — three ergonomics follow-ups (#672). `--inline-locals` declares the `locals` entries whose value is a scalar literal, or a template of literal text and other inlined locals, as Dart `final`s (`final prefix = r'acme'; final bucketName = '$prefix-assets';`) and drops them from `locals.tf` once nothing that stays in Terraform still reads them; refused together with `--merge-envs`, and the fixture gate proves both packages plan identically. The leading `#` / `//` / `/* */` comments above a `resource`, `data` or `module` block now come across as `//` lines above the `add(...)` it became (an unrolled block documents its instances once; a merged Stack and the migrator's own `# terradart-migrate:` annotations are exempt). `--in-place` rewrites the tree under `--dir` to keep only the blocks that stayed in Terraform, cutting source ranges so every surviving line keeps its bytes and `git diff` is the review of the migration; it refuses unless `--dir` is a clean git working tree (untracked files included), checks that before writing anything, and never touches `*.tf.json` files, `moved` blocks or paths reached through a symbolic link.
- **`terradart_coverage`** — the source scan parses with `terradart_hcl` (exact blocks, literal `count` / `for_each` expanded, module calls read from the AST) and matches all four provider catalogs; `terradart_google_beta`, `terradart_appwrite` and `terradart_cloudflare` gain a `catalog.dart` barrel like `terradart_google`'s (#670).

## [0.27.0] - 2026-08-30

Lockstep release across the workspace. **Breaking** — synth now rejects a
`TfArg.variable` reference with no matching declaration. See
[MIGRATING.md](MIGRATING.md).

### Added

- **`terradart_core`** — `S3Backend` for `terraform { backend "s3" { ... } }`, including the S3-compatible stores people keep state in (Cloudflare R2, MinIO, Backblaze B2). `S3Backend.r2(accountId:, bucket:, key:)` presets the R2 endpoint, `region = "auto"`, path-style addressing, and the five `skip_*` flags. Previously only `GcsBackend` and `LocalBackend` shipped, so an S3/R2 stack had to bypass `Stack.writeTo()` and splice the backend into the synthesised JSON by hand.
- **`terradart_core`** — `TfVariable` and `Stack.addVariable` declare the `variable "<name>" { ... }` blocks that `TfArg.variable` references, and synth now refuses to emit a config that references an undeclared variable. `TfArg.variable` previously had no counterpart for declaring the variable, so the ten examples using it each hand-wrote a `variables.tf.json` after `writeTo()`; those writes are gone. `Stack.addExternalVariable` covers declarations that stay in a hand-written file. **Breaking** — see [MIGRATING.md](MIGRATING.md).

## [0.26.0] - 2026-08-24

Lockstep release across the workspace. **Breaking** — see [MIGRATING.md](MIGRATING.md).

### Added

- **`terradart_cloudflare`** — fill the curated catalog at the
  `cloudflare/cloudflare` `5.23.0` pin (**257 resource factories + 446
  data sources**). Nested plugin-framework objects are typed helpers.
  Coverage via [`cloudflare_dns_quickstart`](examples/cloudflare_dns_quickstart/)
  and [`cloudflare_leftover_quickstart`](examples/cloudflare_leftover_quickstart/)
  (synth + `terraform validate`; apply-smoke skip-listed).
- `CloudflareDnsRecord` typed `data` / `settings` / `private_routing` slots
  (previously omitted from the curated constructor).

### Breaking

- `CloudflareZone.account`: `TfArg<Map<String, dynamic>>` → `ZoneAccount`.

### Changed

- **`terradart_codegen`** — `skipAttribute` keeps a required `id` (plugin-framework
  create-time / lookup keys). Synthetic optional/computed `id` is still dropped.
- Wrap fixtures: `hashicorp/google` and `hashicorp/google-beta` pin **7.45.0**
  ([#631](https://github.com/nozomi-koborinai/terradart/pull/631)). Generated
  GA/beta wrappers are unchanged (`wrap --check` clean); two new `google_*`
  names landed on the curation backlog.

## [0.25.3] - 2026-08-23

Lockstep release across the workspace. **No breaking changes** vs `0.25.2`.

### Added

- **`terradart_appwrite`** — fill the curated catalog at the `appwrite/appwrite` `2.0.0-beta.1` pin (38 resource factories + 24 data sources). Coverage via [`appwrite_quickstart`](examples/appwrite_quickstart/) (synth + `terraform validate`; apply-smoke skip-listed). `AppwriteProjectKey` is import-only (create endpoint gone upstream) and listed in [`tool/example_debt.yaml`](tool/example_debt.yaml).

### Removed

- Live GCP apply-smoke CI against `terradart-validate` (per-PR change-gate, monthly sweep, janitor) and the Monday smoke-diagnosis loop. Example verification is synth + `terraform validate` only; `tool/apply_smoke.sh` refuses live apply/destroy.

### Fixed

- **`terradart_cloudflare`** — ship the hand-written `catalog_entry.dart` the generated catalog imports.
- **`terradart_codegen`** — catalog `constructorParams` includes a required data-source lookup `id`; schema-subset extract accepts `--data-sources=`.

## [0.25.2] - 2026-08-22

Lockstep release across the workspace. **No breaking changes** vs `0.25.1`.

### Added

- **`terradart_cloudflare`** — new curated package for the official `cloudflare/cloudflare` provider (exact-pinned at 5.23.0): `CloudflareProvider` (schema-sensitive attributes structurally excluded — apply authenticates via `CLOUDFLARE_*` env vars), `CloudflareZone`, and `CloudflareDnsRecord`. Coverage via [`cloudflare_dns_quickstart`](examples/cloudflare_dns_quickstart/) (synth + `terraform validate`; apply-smoke skip-listed).
- **Plugin-framework schema support** — `terradart_codegen` now normalizes `nested_type` object attributes (Terraform plugin-framework providers) into the nested-block IR; computed-only object attributes stay out of constructors.
- **Package examples** — `terradart_google_beta` and `terradart_appwrite` ship an in-package `example/main.dart` (pub.dev pana example check).

## [0.25.1] - 2026-08-19

Lockstep release across the workspace. **No breaking changes** vs `0.25.0`.

### Added

- **`terradart_google_beta`** — fill the beta-only `hashicorp/google-beta` catalog (**128 resource factories** at provider 7.44.0). Coverage via [`beta_leftover_quickstart`](examples/beta_leftover_quickstart/) (synth + `terraform validate`; apply-smoke skip-listed). Beta-only data sources stay uncurated.

## [0.25.0] - 2026-08-15

Lockstep release across the workspace. **No breaking changes** vs `0.24.0`.

The GA HashiCorp `google` provider catalog is filled. `google-beta` is coming soon.

### Added

- **`terradart_google`** — remaining GA `hashicorp/google` resources and data sources. Catalog: **1332 curated resource factories + 461 data sources** (1793 catalog entries; 131 service barrels).
- **Examples** — leftover and data-source stacks on the apply-excluded path, including [`deferred_leftover_quickstart`](examples/deferred_leftover_quickstart/) and [`data_source_leftover_quickstart`](examples/data_source_leftover_quickstart/).

### Changed

- **Docs / site** — public copy says the GA catalog is filled; landing page shows Alpha; `google-beta` is coming soon.
- **`terradart_coverage`** — coverage report no longer requires a live uncurated GA type as a sentinel.

## [0.24.0] - 2026-07-03

Lockstep release across the workspace. **Breaking** — see [MIGRATING.md](MIGRATING.md). Nested blocks on 19 resources moved from raw `TfArg<Map>` params to generated typed helper classes (`deriveNestedTypes`), typing 49 nested enum sites; serialized Terraform JSON is semantically unchanged. `--strict-nested` enum coverage is now enforced in CI.

## [0.23.0] - 2026-07-02

Lockstep release across the workspace. **Breaking** — see [MIGRATING.md](MIGRATING.md).

### Breaking

- **`terradart_core`** — removed the `StackProvider.toTfJson()` backwards-compat shim; read `configArgs` directly. `Backend.toTfJson()` / `TfArg.toTfJson()` are unchanged.
- **`terradart_google`** — six string fields became typed enums (serialized JSON unchanged): `GoogleAccessContextManagerServicePerimeter.perimeterType`, `GoogleComputeHaVpnGateway.gatewayIpVersion` / `.stackType`, `GoogleComputeNetworkPeering.stackType` / `.updateStrategy`, `GoogleComputeRouterPeer.advertiseMode`. Also drops `GoogleProvider.toTfJson()` / `TimeProvider.toTfJson()`, the mirrored copies of the removed shim.

## [0.22.0] - 2026-06-30

Lockstep release across the workspace. **No breaking changes** vs `0.21.0`.

### Added

- **`terradart_google`** — Wave 76 (OS Config + Binary Authorization VM compliance): **5** curated factories — `google_os_config_os_policy_assignment`, `google_os_config_patch_deployment`, `google_binary_authorization_policy`, `google_binary_authorization_attestor`, `google_binary_authorization_attestor_iam_member`. New `os_config` and `binary_authorization` service barrels.
- **`terradart_google`** — Wave 77 (API security): **3** curated factories — `google_apikeys_key`, `google_recaptcha_enterprise_key`, `google_network_management_connectivity_test`. New `apikeys` and `recaptcha` service barrels; connectivity test on the existing `network` barrel. Catalog grows to **380 curated resource factories + 1 data source** (381 entries; 65 service barrels).
- **Examples** — new [`vm_compliance_quickstart`](examples/vm_compliance_quickstart/) (Wave 76) and [`api_security_quickstart`](examples/api_security_quickstart/) (Wave 77).

### Changed

- **Agent guide** — remove co-authorship commit policy from `AGENTS.md`; simplify `tool/agent_commit.sh`.

## [0.21.0] - 2026-06-28

Lockstep release across the workspace. **No breaking changes** vs `0.20.0`.

### Added

- **`terradart_google`** — Wave 74 (Dataplex lake operations): **3** curated factories — `google_dataplex_zone`, `google_dataplex_asset`, `google_dataplex_zone_iam_member`. Catalog grows to **347 curated resource factories + 1 data source** (348 entries; 60 service barrels).
- **Examples** — [`dataplex_quickstart`](examples/dataplex_quickstart/) extended with a RAW zone, GCS bucket asset, and zone IAM member.

### Changed

- **Apply-smoke** — `apply_smoke_test.sh` test 13 requires `gcp-cost:` / `billing-behavior:` basis in new `safe` denylist comments (`tool/apply_cost_comment_debt.yaml` grandfather ledger). Agents call gcp-cost MCP directly; CI verifies comments only.

## [0.20.0] - 2026-06-21

Lockstep release across the workspace. **No breaking changes** vs `0.19.0`.

### Added

- **`terradart_google`** — Wave 73 (Cloud Bigtable): **10** curated factories — `google_bigtable_instance`, `google_bigtable_table`, `google_bigtable_app_profile`, `google_bigtable_gc_policy`, `google_bigtable_authorized_view`, `google_bigtable_logical_view`, `google_bigtable_materialized_view`, `google_bigtable_schema_bundle`, `google_bigtable_instance_iam_member`, `google_bigtable_table_iam_member`. New `bigtable` service barrel. Catalog grows to **343 curated resource factories + 1 data source** (344 entries; 60 service barrels).
- **Examples** — new [`bigtable_quickstart`](examples/bigtable_quickstart/) exercising every Wave 73 factory.

## [0.19.0] - 2026-06-21

Lockstep release across the workspace. **No breaking changes** vs `0.18.0`.

### Added

- **`terradart_google`** — Wave 72 (IAP App Engine IAM): **3** additive `*_iam_member` factories — `google_iap_app_engine_service_iam_member`, `google_iap_app_engine_version_iam_member`, `google_iap_web_type_app_engine_iam_member`. Catalog grows to **333 curated resource factories + 1 data source** (334 entries; 59 service barrels).
- **Examples** — `iam_quickstart` extended with IAP API enablement and all three App Engine IAP member grants.

## [0.18.0] - 2026-06-21

Lockstep release across the workspace. **No breaking changes** vs `0.17.1`.

### Added

- **`terradart_google`** — Wave 71 (App Engine): **8** curated factories — `google_app_engine_application`, `google_app_engine_application_url_dispatch_rules`, `google_app_engine_domain_mapping`, `google_app_engine_firewall_rule`, `google_app_engine_flexible_app_version` (sealed automatic/manual scaling), `google_app_engine_service_network_settings`, `google_app_engine_service_split_traffic`, `google_app_engine_standard_app_version`. New `app` service barrel. Catalog grows to **330 curated resource factories + 1 data source** (331 entries; 59 service barrels).
- **Examples** — new [`app_engine_quickstart`](examples/app_engine_quickstart/) exercising every Wave 71 factory.

## [0.17.1] - 2026-06-21

Patch release. The only change is **`terradart_coverage`**: `--dir` (and a bare invocation) now scans `.tf` / `.tf.json` source directly — recursively, with no terraform run, init, backend, or credentials — instead of running Terraform, and the evaluated `terraform show -json` path becomes opt-in. Other packages bump in lockstep with no changes.

## [0.17.0] - 2026-06-21

Lockstep release across the workspace. **No breaking changes** vs `0.16.0`.

### Added

- **`terradart_coverage`** — `terradart-coverage --dir <dir>` runs `terraform show -json` for you, so you can point the checker at a Terraform working directory (HCL or JSON) instead of piping output; a bare invocation defaults to the current directory. Adds the package README and an end-to-end test against a real `terraform show -json` document (suite 16 → 31).

`terradart_core`, `terradart_codegen`, `terradart_google`, and `terradart_agent` bump in lockstep with no API or catalog changes.

## [0.16.0] - 2026-06-21

Lockstep release across the workspace. **No breaking changes** vs `0.15.0`.

### Added

- **`terradart_google`** — catalog grows to **322 curated resource factories + 1 data source** (323 entries; 58 service barrels), adding **66** factories across Waves 42–70: Resource Manager Tags, Essential Contacts, Service Directory, Dataplex Universal Catalog / glossary / lake, Workflows, Compute (static route, project metadata item, network firewall policy, resource policy with sealed snapshot schedules, disk resource policy attachment), Secret Manager / Parameter Manager, Document AI, Cloud Observability trace scope, Network Security lists, Migration Center, Dialogflow agent, Cloud Healthcare (dataset / DICOM / consent / HL7v2 stores + IAM members), GKE Hub scope + namespace, Cloud Deploy (delivery pipeline / target / custom target type), BigLake Metastore, Gemini for Google Cloud settings, Vertex AI (managed dataset, Tensorboard, GenAI cache config), Network Connectivity Center hub, and BigQuery standalone `dataset_access`.
- **Examples** — 14 new or extended quickstarts (`tags`, `service_directory`, `workflows`, `parameter_manager`, `document_ai`, `observability`, `healthcare`, `gke_hub`, `clouddeploy`, `biglake`, `gemini`, `compute_route`, `network_security_lists`, `vertex_ai`) plus extensions to existing stacks; all 54 quickstarts now in the CI `terraform_validate` matrix.

### Changed

- **CI** — expand `terraform_validate` matrix from 40 to 54 examples (full quickstart coverage).
- **Docs** — release Waves 42–70 in the public waves guide; align version references with the `0.16.x` line.

## [0.15.0] - 2026-06-20

Lockstep release across the workspace. **No breaking changes** vs `0.14.0`.

### Added

- **`terradart_google`** — catalog grows to **256 curated resource factories + 1 data source** (257 entries; 46 service barrels), including Apigee, Dataplex, License Manager, Discovery Engine, Config Deployment, Contact Center Insights, Dialogflow SIP trunk, Network Connectivity transport, Chronicle, Migration Center, Network Security ULL, Oracle Database@Google Cloud Waves 36–40, and Wave 41 IAM binding/policy adjuncts.
- **Examples** — new or extended quickstarts cover the added factories, including Config Deployment, Network Connectivity, Network Security ULL, Migration Center, Chronicle, Oracle GoldenGate / Autonomous Database / DB System / Exadata, and IAM binding/policy adjuncts.

### Changed

- **CI / release maintenance** — opt GitHub workflows into Node 24 and expand the Terraform validate matrix for Apigee and Dataplex quickstarts.
- **Docs** — release Waves 34–41 in the public waves guide and align package/site version references with the `0.15.x` line.

### Fixed

- **Examples / generation** — backfill Filestore snapshot coverage in `compute_quickstart`, align the Contact Center Insights barrel output directory with the wrap-init anchor, and add Config Deployment Gate 6 thunks.

## [0.14.0] - 2026-06-16

- Provider bump to `hashicorp/google` 7.36.0 (38 new resources recorded in the
  curation backlog; `google_compute_address.address_id`).
- New package **`terradart_coverage`** — a read-only Terraform coverage checker
  CLI (`terradart-coverage`, brew-distributed) plus brew release automation that
  auto-pushes the `terradart-mcp` and `terradart-coverage` formulas.
- `terradart_agent`: new `check_coverage` MCP tool wrapping the coverage core.
- **Breaking** (`terradart_google`): `connection_tracking_policy` on
  `google_compute_region_backend_service` is now typed. See MIGRATING.md.

## [0.13.0] - 2026-06-14

Lockstep release folding in the unreleased 0.12.20 (Waves 33–35) plus the
AI-autonomous-maintenance design pass and harness hardening. **Breaking** —
see [MIGRATING.md](MIGRATING.md).

### Added

- **`terradart_google`** — Waves 33–35: AlloyDB (cluster / instance / user / backup), Cloud Filestore (instance / backup / snapshot), Memorystore for Memcached, Spanner (instance / database); new `alloydb` / `filestore` / `memcache` / `spanner` barrels.

### Breaking — design pass for AI-autonomous maintenance

- **`terradart_google`** — `Apis.enable(stack, barrels: ...)` replaces the `ApisEnablement` / `ApiEnablement` two-layer API; `TimeProvider` / `TimeSleep` move in from core under the new `time` barrel; `GoogleProvider.providerAlias` removed.
- **`terradart_core`** — provider-aliasing dead surface removed (`StackProvider.providerAlias`, `ProviderBinding`, `Resource.provider`); `Stack.synth()` now fails fast when a resource's provider is not registered.
- **`terradart_google`** — `google_certificate_manager_certificate_map_entry` (`hostname` / `matcher` → required sealed `match`) and `google_logging_saved_query` (`LoggingSavedQueryVisibility.privateVisibility` → `.private`), surfaced by the MM fixture sync.

### Maintenance hardening — recurring Cursor-agent correction classes as pre-merge gates

Mined from the `cursor/*` Wave PR history (the repair loop ran entirely through fixup commits with no human review comments):

- **API-enablement ratchet** — the example synth gate now fails when an example enables some APIs but not every API its resources need (the Wave 32 secretmanager class). `tool/example_api_debt.yaml` is the audited escape hatch.
- **MM upstream fingerprint gate** + a 29-entry (+6 broken-path) manifest correction, re-activating enum-drift checks; the **73-fixture sync** then ran them with zero drift.
- **Barrel-completeness test**, **`deletion_protection` parity invariant**, **dead-customSlots `lint-override` rules**.
- **Catalog counts derived from `_catalog.g.dart`** — kills the parallel-wave count race (#136/#137/#138).
- **Pre-merge `pub publish --dry-run`** and **`dart analyze tool/`**.

Catalog: **209 curated resource factories + 1 data source** (210 entries; 35 service barrels).

## [0.12.19] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.18`.

### Added

- **`terradart_core`** — `TimeProvider` + `TimeSleep` (`hashicorp/time`) for API propagation waits.
- **`terradart_google`** — `ApiEnablement` / `ApisEnablement.enable` (wraps `Apis.required` + optional `TimeSleep`); Wave 32 `google_redis_instance` + `redis` barrel.
- Extended **`cloud_run_quickstart`** — Redis cache, `ApisEnablement` with 60s propagation sleep.

### Changed (examples)

- **`gke_quickstart`**, **`compute_lb_quickstart`** — replace hand-written `GoogleProjectService` with `Apis.required` (#57 dogfood).

Catalog: **199 curated resource factories + 1 data source** (200 entries).

## [0.12.18] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.17`.

### Added

- **`terradart_google`** — Wave 31 Private CA (2): `google_privateca_certificate_template`, `google_privateca_ca_pool_iam_member`.
- Extended **`compute_lb_quickstart`** — ENTERPRISE CAS pool, certificate template, pool IAM auditor member, template ref on leaf cert.

Catalog: **198 curated resource factories + 1 data source** (199 entries).

## [0.12.17] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.16`.

### Added

- **`terradart_google`** — `Apis.required(barrels: [...])` and `Barrels` enum derive `GoogleProjectService` enablement from catalog barrels; documents optional `time_sleep` propagation pattern.

## [0.12.16] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.15`.

### Added

- **`terradart_google`** — Wave 30 Private CA (1): `google_privateca_certificate` (CSR or typed `config` helpers, `PrivatecaCertificateX509Config.serverTls()`).
- Extended **`compute_lb_quickstart`** — CAS-issued leaf cert (CSR variable) after the root CA.

Catalog: **196 curated resource factories + 1 data source** (197 entries).

## [0.12.15] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.14`.

### Added

- **`terradart_google`** — Wave 29 Private CA (1): `google_privateca_certificate_authority` (typed `config` / `keySpec` helpers, `PrivatecaCertificateAuthorityX509Config.rootCa()`).
- Extended **`compute_lb_quickstart`** — root CA in the CAS pool before Certificate Manager issuance.

Catalog: **195 curated resource factories + 1 data source** (196 entries).

## [0.12.14] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.13`.

### Added

- **`terradart_google`** — Wave 28 Private CA (1): `google_privateca_ca_pool` (`PrivatecaCaPoolTier` enum); new `privateca` barrel.
- Extended **`compute_lb_quickstart`** — CAS pool wired to Certificate Manager issuance config (replaces placeholder `ca_pool` literal).

Catalog: **194 curated resource factories + 1 data source** (195 entries; 30 service barrels).

## [0.12.13] - 2026-06-12

Lockstep release across the workspace. **No breaking changes** vs `0.12.12`.

### Added

- **`terradart_google`** — Wave 27 Certificate Manager (2): `google_certificate_manager_trust_config`, `google_certificate_manager_certificate_issuance_config` (typed trust-store / CA-pool helpers).
- Extended **`compute_lb_quickstart`** (trust config + issuance policy alongside the Wave 26 chain).
- **`pubsub_quickstart`** — exercises the `GoogleProject` data source (Pub/Sub service-agent IAM member via project number).

### Changed (maintainer)

- `tool/example_debt.yaml`: removed stale `GoogleProject` entry (data source backfill).

Catalog: **193 curated resource factories + 1 data source** (194 entries).

## [0.12.12] - 2026-06-12

Lockstep release across the workspace.

### Breaking

- **`terradart_google`** — Seven curated factories now enforce GCP / Terraform
  `exactly_one_of` groups at compile time via sealed virtual slots (firewall
  `rulePolicy`, health-check `protocol`, uptime-check `target`, BigQuery job
  `jobConfiguration`, BigQuery connection `backend`, Cloud Build trigger
  `buildSpec`). See [MIGRATING.md](MIGRATING.md) (`0.12.11 → 0.12.12`).

### Changed (maintainer)

- Cleared `tool/exactly_one_lint_debt.yaml` (#107).

## [0.12.11] - 2026-06-09

Lockstep release across the workspace. **No breaking changes** vs `0.12.10`.

### Added

- **`terradart_google`** — Wave 25 Service Networking: `google_vpc_access_connector` (`VpcAccessConnectorSubnet` helper).
- **`terradart_google`** — Wave 26 Certificate Manager (4): DNS authorization, certificate (sealed managed/self-managed provisioning), certificate map, certificate map entry.
- Catalog: **191 curated resource factories + 1 data source** (192 entries); new `certificate_manager` barrel (29 service barrels).
- Extended **`cloud_run_quickstart`** (VPC Access connector + `template.vpcAccess` on the service).
- Extended **`compute_lb_quickstart`** (Certificate Manager chain alongside the existing Compute SSL cert).

### Changed

- **`terradart_google`** — `GoogleArtifactRegistryRepository` remote config: typed `dockerRepository` / `mavenRepository` / `npmRepository` helpers with `ArtifactRegistryDockerPublicRepository`, `ArtifactRegistryMavenPublicRepository`, and `ArtifactRegistryNpmPublicRepository` enums (replacing `advancedExtra` for the common public-registry path).

## [0.12.10] - 2026-06-09

Lockstep release across the workspace.

### Breaking

- **`terradart_google`** — Many existing factories now use typed `TerraformEnum` values and nested helpers instead of `TfArg<String>` / `TfArg<Map<String, dynamic>>` for schema-finite fields. See [MIGRATING.md](MIGRATING.md) (`0.12.9 → 0.12.10`).

### Added

- **`terradart_google`** — Wave 23 DNS: `google_dns_record_set`, `google_dns_policy`.
- **`terradart_google`** — Wave 23 Eventarc: `google_eventarc_google_channel_config`.
- **`terradart_google`** — Wave 23 Cloud Run: `google_cloud_run_v2_worker_pool`.
- **`terradart_google`** — Wave 23 IAP: `google_iap_web_backend_service_iam_member`.
- **`terradart_google`** — Wave 24 DNS: `google_dns_response_policy`, `google_dns_response_policy_rule`.
- **`terradart_google`** — Wave 24 Cloud Run: `google_cloud_run_v2_worker_pool_iam_member`.
- **`terradart_google`** — Wave 24 Compute: `google_compute_router`.
- **`terradart_google`** — Wave 24 BigQuery: `google_bigquery_datapolicy_data_policy_iam_member`.
- Catalog: **186 curated resource factories + 1 data source** (187 entries).
- Extended **`dns_quickstart`** (policy, A record, response policy), **`eventarc_quickstart`** (channel config), **`cloud_run_quickstart`** (worker pool + IAM), **`compute_lb_quickstart`** (IAP member), **`compute_quickstart`** (Cloud Router), and **`bigquery_quickstart`** (datapolicy IAM).

### Changed (maintainer)

- **`terradart_codegen`** — `tool/agent_verify.sh` runs `check_override_enum_gaps.dart --strict-nested`.

## [0.12.9] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.8`.

### Added

- **`terradart_google`** — Wave 22 BigQuery Analytics Hub + connection IAM: four factories (`google_bigquery_analytics_hub_data_exchange_iam_member`, `google_bigquery_analytics_hub_listing_iam_member`, `google_bigquery_analytics_hub_listing_subscription`, `google_bigquery_connection_iam_member`).
- **`terradart_google`** — Wave 22 Compute regional Armor: `google_compute_region_security_policy_rule`.
- Catalog: **176 curated resource factories + 1 data source** (177 entries).
- Extended **`bigquery_quickstart`** (Analytics Hub IAM, listing subscription, connection + connection IAM) and **`compute_lb_quickstart`** (regional security policy rule).

## [0.12.8] - 2026-06-10

Lockstep patch across the workspace. **No breaking changes** vs `0.12.7`.

### Added

- **`terradart_google`** — Wave 17 Eventarc completion: five factories (`google_eventarc_channel`, `google_eventarc_enrollment`, `google_eventarc_google_api_source`, `google_eventarc_message_bus`, `google_eventarc_pipeline`).
- **`terradart_google`** — Wave 18 Compute LB internals: nine factories (SSL/TCP proxies, PSC service attachment, regional Armor/SSL policy, global/regional network endpoints, standalone security policy rule).
- **`terradart_google`** — Wave 19 BigQuery governance: six factories (reservation assignment, row access policy, data policy, Analytics Hub exchange/listing, BI reservation).
- **`terradart_google`** — Wave 20 Storage + Cloud SQL: `google_storage_managed_folder`, `google_sql_ssl_cert`, `google_sql_source_representation_instance`.
- **`terradart_google`** — Wave 21 Firebase App Check: `google_firebase_app_check_recaptcha_v3_config`.
- Catalog: **171 curated resource factories + 1 data source** (172 entries).
- **`examples/eventarc_quickstart`** — message bus, API source, enrollment, channel, pipeline, and Pub/Sub → HTTP trigger.
- Extended **`compute_lb_quickstart`**, **`bigquery_quickstart`**, **`storage_quickstart`**, **`cloud_sql_quickstart`**, **`firebase_app_check_quickstart`**.

## [0.12.7] - 2026-06-10

Lockstep patch across the workspace. **No breaking changes** vs `0.12.6`.

### Added

- **`terradart_google`** — Wave 12 Monitoring completion: four factories (`google_monitoring_slo`, `google_monitoring_group`, `google_monitoring_custom_service`, `google_monitoring_monitored_project`).
- **`terradart_google`** — Wave 13 Compute LB follow-up: `google_compute_region_ssl_certificate`, `google_compute_network_endpoint`.
- **`terradart_google`** — Wave 14 KMS: `google_kms_crypto_key_version`.
- **`terradart_google`** — Wave 15 adjacent IAM/Storage: `google_pubsub_schema_iam_member`, `google_storage_hmac_key`.
- **`terradart_google`** — Wave 16 Logging analytics: `google_logging_log_scope`, `google_logging_linked_dataset`.
- Catalog: **147 curated resource factories + 1 data source** (148 entries).
- **`examples/monitoring_quickstart`** — full observability chain (channel, uptime, metric descriptor, dashboard, service, SLO, alert).
- **`examples/kms_quickstart`**, **`storage_quickstart`**, **`pubsub_quickstart`**, **`compute_lb_quickstart`** — extended for new factories.
- **`examples/ops_quickstart`** — log scope + linked dataset for Log Analytics.

## [0.12.6] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.5`.

### Added

- **`terradart_google`** — Wave 10 GKE Backup: six `google_gke_backup_*` factories (backup/restore plans and channels + plan IAM members; binding/policy stay uncurated per the member-only IAM policy); new `package:terradart_google/gke_backup.dart` barrel.
- **`terradart_google`** — Wave 11 Logging project ops: five factories (`google_logging_project_bucket_config`, `google_logging_log_view`, `google_logging_log_view_iam_member`, `google_logging_project_exclusion`, `google_logging_saved_query`) in the `logging` barrel.
- Catalog: **136 curated resource factories + 1 data source** (137 entries).
- **`examples/gke_quickstart`** — extended with GKE Backup API enablement, the cluster backup agent addon, channels, plans, and plan IAM members.
- **`examples/ops_quickstart`** — extended with log bucket, log view + IAM member, project exclusion, saved query, logs-based metric, and API enablement.

## [0.12.5] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.4`.

### Added

- **`terradart_google`** — Wave 9 GKE Hub: `google_gke_hub_fleet` and `google_gke_hub_membership` in the `container` barrel. Catalog: **125 curated resource factories + 1 data source** (126 entries).
- **`examples/gke_quickstart`** — VPC, cluster, node pool, fleet, and membership; CI `terraform_validate` matrix entry.
- **Agent policy** — Wave shipping checklist in `AGENTS.md`, [`terradart-ship-wave`](.agents/skills/terradart-ship-wave/SKILL.md), and extended `CONTRIBUTING.md` PR checklist.

### Changed

- **`examples/iam_quickstart`** — adds `GoogleIamWorkloadIdentityPoolProvider` with sealed `trustSource` (0.12.3 API debt).

## [0.12.4] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** vs `0.12.3`.

### Added

- **`terradart_google`** — Wave 8 GKE core: `google_container_cluster` and `google_container_node_pool`; new `package:terradart_google/container.dart` barrel. Catalog: **123 curated resource factories + 1 data source** (124 entries).
- **`tool/batch_wrap_init.dart`** — maintainer helper to scaffold multiple `wrap-init` overrides in one run.

## [0.12.3] - 2026-06-09

Lockstep patch across the workspace.

### Changed

- **`terradart_google`** — **breaking:** `GoogleIamWorkloadIdentityPoolProvider` trust binding is now required `trustSource: IamWorkloadIdentityPoolProviderTrustSource` (sealed oneof) instead of optional `oidc` / `aws` / `saml` / `x509` params. See `MIGRATING.md` (0.12.2 → 0.12.3).

### Added

- **`terradart_codegen`** — `lint-override` phase-2 rule `exactly-one-optional-fanout` (MM `exactly_one_of` vs optional customSlot fanout).
- **Agent docs** — sealed `exactly_one_of` convention in `AGENTS.md` and `terradart-add-curated-resource` skill.

## [0.12.2] - 2026-06-09

Lockstep patch across the workspace. **No breaking changes** to `terradart_core` or existing `terradart_google` factory APIs.

### Added

- **`terradart_google`** — `google_iam_workload_identity_pool_provider` and `google_iap_web_backend_service_iam_binding` curated factories; new `package:terradart_google/iap.dart` barrel. Catalog: **121 curated resource factories + 1 data source** (122 entries).

## [0.12.1] - 2026-05-25

Lockstep patch across the workspace. **No breaking changes** to `terradart_core` or `terradart_google`.

### Fixed

- **`terradart-mcp`** — `list_resources` and `list_barrels` return JSON objects (`{"resources": [...]}`) instead of bare arrays so strict MCP clients (e.g. Cursor) accept `structuredContent`.

### Added

- **`terradart-mcp`** — Intel macOS (`darwin-amd64`) release binary.

## [0.12.0] - 2026-05-25

Pre-alpha milestone: static curated catalog, optional MCP agent tooling. **No breaking changes** to `terradart_core` or `terradart_google` vs `0.11.0`. See [MIGRATING.md](MIGRATING.md#011x--012x) (0.11.x → 0.12.x).

### Added

- **`terradart_google`** — generated static catalog (`terradartCatalog`) for discovery and MCP; 119 curated factories + 1 data source unchanged.
- **`terradart_agent` / `terradart-mcp`** — read-only MCP server (four catalog tools); Homebrew + GitHub Releases binary (`publish_to: none`).

## [0.11.0] - 2026-05-23

Pre-1.0 polish wave focused on the `terradart_core` public surface. All three packages bump from 0.10.0 to 0.11.0 in lockstep. Coordinated breaking changes from ADR-0016 (codegen identifier rename) and ADR-0017 (Stack API surface). See [MIGRATING.md](MIGRATING.md) for before / after snippets covering every breaking change in this release.

### Breaking changes

- **Stack API surface (ADR-0017).** `Stack.synth({required outDir})` split into two methods: `Stack.synth() → SynthResult` is the pure in-memory step that returns the encoded tfJson and any AppExports Dart constants, and `Stack.writeTo(outDir) → Future<void>` is the file-IO wrapper that persists `main.tf.json` (and the optional generated Dart constants file when `setAppExportsOutputPath` was called). `writeTo` throws `StateError` atomically — before any disk write — when `addExport` was called without `setAppExportsOutputPath`. `StackSynth` is removed from the `terradart_core` public barrel and annotated `@internal` (still importable via the deep `src/synth/stack_synth.dart` path for advanced use). `Stack`, `Resource`, and `Data` are promoted to `abstract base class`; user subclasses must now be declared `final class XxxStack extends Stack` (or `base` / `sealed`) and `implements Stack` / `implements Resource` / `implements Data` are no longer permitted.
- **Codegen identifier rename (ADR-0016).** `$tfType` → `tfType`, `$sensitiveFields` → `sensitiveFields`, `$supportsDeletionProtection` → `supportsDeletionProtection`. The two getters are now annotated `@protected` (from `package:meta`); non-subclass reads require an `// ignore: invalid_use_of_protected_member` directive with rationale. All 118 curated `terradart_google` wrappers regenerated with the new identifier names.
- **`TerraformEnum` interface.** Hand-rolled Terraform-mapped enums must add `implements TerraformEnum` and `@override final String terraformValue;`. Codegen-emitted enums get this automatically.

### Non-breaking improvements

- `encodeArg` / `encodeArgMap` / `encodeArgMapWithSensitive` return types tightened from `dynamic` to `Object?` / `Map<String, Object?>`.
- `_DedupKey` internal type rewritten as a Dart 3 named record.
- `dart:convert` import prefixes unified (`as dart_convert` / `as conv` / `as convert` → no prefix everywhere).
- `terradart_google` pubspec switched from `path:` deps to hosted carets; examples are now workspace members of the monorepo.
- Stale schemantic-era comments in per-package `analysis_options.yaml` refreshed.

## [0.1.0-dev] - 2026-05-14

Adds 15 new GCP resource factories (terradart_google grows 13 → 28), typed enum support for `TfArg`, sealed types for exactly-one-of nested blocks, and the `terradart wrap-promote` codegen subcommand. Pre-alpha — pin tightly.

### Added — 15 new GCP resource factories

- **Compute** (5): `google_compute_network`, `google_compute_address`, `google_compute_subnetwork`, `google_compute_firewall`, `google_compute_instance`.
- **BigQuery** (2): `google_bigquery_dataset`, `google_bigquery_table`.
- **KMS** (2): `google_kms_key_ring`, `google_kms_crypto_key`.
- **Cloud Storage** (2): `google_storage_bucket`, `google_storage_bucket_object`.
- **DNS** (1): `google_dns_managed_zone`.
- **Cloud Run v2** (1): `google_cloud_run_v2_service`.
- **Logging** (1): `google_logging_project_sink`.
- **Monitoring** (1): `google_monitoring_alert_policy`.

Each resource ships typed Dart enums for every schema field with a fixed value set, plus typed helper classes for every nested block. See `packages/terradart_google/CHANGELOG.md` for the full per-resource detail.

### Added — runtime / codegen

- `TfArg<MyEnum>.literal(MyEnum.foo)` encodes typed Dart enums to Terraform strings via a new `.terraformValue` getter convention (`terradart_core`).
- Sealed Dart types for nested blocks the schema declares exactly-one-of: `Access` (8 variants on `google_bigquery_dataset`), `BucketObjectContent` (`google_storage_bucket_object`), `EnvVarSource` and `VolumeSource` (`google_cloud_run_v2_service`).
- `terradart wrap-promote` proposes enum_values and dartTypeOverrides for un-typed leaf fields by scanning the parsed schema; authors integrate and strip the marker block manually (`terradart_codegen`).
- Schema descriptions containing literal `$` or over-escaped apostrophes are now sanitized at the parser layer so generated `.schema.g.dart` files stay parseable.

### Quickstart examples

- 9 new end-to-end stacks under `examples/`: `compute_quickstart`, `kms_quickstart`, `storage_quickstart`, `bigquery_quickstart`, `dns_quickstart`, `ops_quickstart`, `cloud_run_quickstart`, `monitoring_quickstart`, plus extensions to existing ones. Total examples: 14.
- CI runs `terraform validate` against each example's synth output (13 matrix entries).

## [0.0.1-dev] - 2026-05-09

Initial pre-alpha public release. Surface, APIs, and emitted Dart symbol names may change between 0.0.x versions. Pin tightly.

### Added

- **Built-in factories** — 12 hand-written wrappers with golden tests:
  - **Pub/Sub** — `google_pubsub_topic`, `google_pubsub_subscription`, `google_pubsub_topic_iam_member`, `google_pubsub_subscription_iam_member`
  - **Cloud Tasks** — `google_cloud_tasks_queue`, `google_cloud_tasks_queue_iam_member`
  - **Secret Manager** — `google_secret_manager_secret` (write-only `secret_data_wo` + `secret_data_wo_version`), `google_secret_manager_secret_version`, `google_secret_manager_secret_iam_member`
  - **Cloud Scheduler** — `google_cloud_scheduler_job` (Pub/Sub target via `topic.id`)
  - **Project enablement** — `google_project_service`
  - **IAM** — `google_service_account` (with pre-formatted `member` ref for IAM bindings)
  - Plus the **`google_project` data source** for project-number lookups.
- **Generated bindings** (planned): codegen output for every other `google_*` / `google-beta_*` resource via `terradart_codegen`. No semver guarantees on emitted Dart names.
- **Stage 1 codegen CLI**: `dart pub global activate terradart_codegen 0.0.1-dev` puts `terradart` on PATH; `terradart codegen --provider hashicorp/google --source <schema-dir> --output lib/generated`.
- **Stage 2 synthesizer**: `StackSynth.synth(stack)` returns drop-in `main.tf.json`.
- **Stack-level primitives**: `Provider`, `Variable<T>`, `Data<S>`, `LifecycleOptions`, `AppExport`.
- **Annotations** (`terradart_annotations`): `@TerraformResource`, `@ForceNew`, `@Sensitive`. `@Sensitive` is folded into a top-level public const `<terraformTypeCamelCase>Sensitive` in each generated schema file.
- **Schema carriers are machine-derived from the provider schema** — `terradart_codegen + schemantic` emits `<resource>.schema.dart` (+ `.g.dart`) committed to `terradart_google`. Published consumers do not need `build_runner`.
- **Dart Pub Workspaces** monorepo layout; SDK `^3.6.0` requirement (`terradart_google` requires `^3.10.0` for its schemantic floor).
- Five quickstart examples under `examples/`.
- OSS community profile: README, CONTRIBUTING.md, SECURITY.md, ISSUE_TEMPLATE/bug-or-question.yml.

### Notes

- Firebase Functions for Dart does not currently expose a Pub/Sub trigger decorator. terradart can emit topic IDs as typed constants for HTTP-fronted subscribers; the runtime gap is documented but not papered over.
- CDKTF was archived by HashiCorp in October 2025 and never targeted Dart. terradart deliberately occupies the Dart-shaped slot CDKTF did not reach.
- Dependency management uses Renovate.
