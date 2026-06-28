# Friction log

Findings from dogfooding terradart against the coffee-shop recipe. Each entry was a candidate for the v0.9 polish wave (sub-project A of the v0.9 design).

**v0.9 status:** Issues terradart#52-#57 are resolved in terradart v0.9.0 (link TBD post-tag). This recipe has been migrated to the v0.9 surface on branch `migrate/v0.9`.

## Entry template

```markdown
### <short title>

**Context:** which tier / which terraform command / which env.

**Friction:** what was unexpected — symptom + observed behavior.

**Proposed fix:** rename / add abstraction / docs update / etc. (feeds into A wave scope).

**Tracked:** terradart#XXX (added after issue is filed).
```

## D1a (local backend)

### Fresh GCP projects miss compute + servicenetworking; Tier 1 plan assumption wrong

**Context:** D1a Tier 2 `terraform apply` against a fresh `terradart-validate` project (no manual gcloud commands run beforehand).

**Friction:** `Error 403: Compute Engine API has not been used in project terradart-validate ... SERVICE_DISABLED`. The dogfood plan listed only 6 APIs in Tier 1 (run / sql / pubsub / monitoring / secret / iam) and assumed compute + servicenetworking are pre-enabled. On a freshly-created GCP project (which is exactly what `terradart-validate` is), they aren't — Compute Engine has historically been auto-enabled for billing-linked legacy projects, but newly-created ones since ~2023 require explicit enablement.

A subtler observation: terradart doesn't help the user discover this dependency. Importing `package:terradart_google/compute.dart` and adding `GoogleComputeNetwork` does NOT tell the dev "you need `google_project_service` for `compute.googleapis.com` first". They only learn from a runtime `terraform apply` error.

**Proposed fix:** in v0.9 polish wave, ship a curated "API enablement helper": `Apis.required(barrels: [compute, service_networking, cloud_sql, ...])` that emits the necessary `google_project_service` set based on which terradart barrels the Stack imports / uses. This would prevent recipe authors from misconfiguring Tier 1.

**Tracked:** terradart#57. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Backend block requires handwritten terraform.tf

**Context:** D1a tier 1 setup — synth produces `tf-out/main.tf.json` but does not emit a `terraform { backend "local" {} }` block.

**Friction:** terradart_core v0.8.0-dev exposes `StackBackend` + `GcsBackend` (via `setBackend(...)` on `Stack`), but ships no `LocalBackend` implementation. Consumers wanting a local backend must hand-author `tf-out/terraform.tf` alongside the synthesized JSON, and force-add it past the `cookbook/*/tf-out/` gitignore (`git add -f`).

**Proposed fix:** add `LocalBackend` to `terradart_core` in sub-project A (lives next to existing `GcsBackend` in `src/backends.dart`); export from `terradart_core.dart`. Then `stack.setBackend(const LocalBackend())` would emit `terraform.backend.local: {}` in `main.tf.json` and the handwritten file disappears.

**Tracked:** terradart#52. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### `Stack.synth` is abstract — every quickstart re-implements file-write boilerplate

**Context:** D1a tier 1 setup — needed to override `synth({required String outDir})` in `CoffeeShopStack` to call `StackSynth.synth(this)`, then `Directory(outDir).create(recursive: true)`, then `File('$outDir/main.tf.json').writeAsString(...)` with `dart:convert`'s `JsonEncoder.withIndent('  ')`.

**Friction:** `Stack.synth` is declared abstract (`packages/terradart_core/lib/src/stack.dart:192`), so every consumer copies the same 6-line boilerplate. Also forces every consumer to alias `dart:convert` (e.g. `import 'dart:convert' as dart_convert;`) because `terradart_core.dart` exports its own `JsonEncoder` class, shadowing `dart:convert`'s.

**Proposed fix:** provide a concrete default `synth` on `Stack` that writes `main.tf.json` (and the `*.app.dart` constants file when present) under `outDir`. Subclasses can still override for custom side effects, but the 80% case becomes a no-boilerplate call. Rename the internal `JsonEncoder` export to `TfJsonEncoder` to avoid shadowing `dart:convert`.

**Tracked:** terradart#56. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Synth emits `terraform.required_version` & `required_providers`, duplicating handwritten `terraform.tf`

**Context:** D1a tier 1 setup — handwritten `tf-out/terraform.tf` declares `required_version = ">= 1.5"` and the `hashicorp/google ~> 7.0` provider block; synth-emitted `main.tf.json` re-declares both (synth pins `required_version` to `">= 1.11.0"` and the provider block to `hashicorp/google ~> 7.0`).

**Friction:** Terraform merges duplicate declarations and the stricter `required_version` wins (`>= 1.11.0`), so the handwritten `>= 1.5` is silently ignored — confusing for users who think they control the floor. The duplicated `required_providers` block is harmless but visually noisy.

**Proposed fix:** if a `LocalBackend` abstraction lands (see first entry above), the handwritten `terraform.tf` disappears entirely and this becomes moot. Until then, document in the cookbook README that `terraform.tf`'s `required_version` is overridden by the synth-emitted `>= 1.11.0` value (or let users override via `stack.setRequiredVersion(...)`).

**Tracked:** terradart#52. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### terradart hardcodes `required_version: ">= 1.11.0"`; older terraform users hard-blocked

**Context:** D1a first `terraform init` against synth output `tf-out/main.tf.json` on the user's laptop.

**Friction:** `Error: Unsupported Terraform Core version ... This configuration does not support Terraform version 1.5.7.` terradart_core v0.8.0-dev emits `"required_version": ">= 1.11.0"` unconditionally inside the synth output's `terraform` block. Consumers on terraform < 1.11 are hard-blocked — they cannot even read the plan without upgrading.

terraform 1.11 was released 2025-02; it's reasonable to require recent versions, but: (a) the constraint should be configurable per Stack so library users can target older clusters; (b) the cookbook README incorrectly stated "Terraform 1.5+", which surfaced as a confusing blocker; (c) this is a stricter constraint than the cookbook recipe's `pubspec.yaml` advertises.

**Proposed fix:** in sub-project A (v0.9 polish wave), expose `Stack.terraformVersionConstraint` (or similar field) that defaults to a sensible permissive value like `">= 1.5"` and lets advanced users tighten it. The handwritten `terraform.tf` constraint should then take precedence (or terradart should not emit `required_version` at all when consumer provides their own `terraform.tf`).

**Workaround for D1a:** `brew upgrade hashicorp/tap/terraform` to get >= 1.11. Cookbook README updated to say "Terraform 1.11+" until v0.9 polish lands.

**Tracked:** terradart#52 (rolled in alongside the broader `terraform.tf` elimination workstream). **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### `google_project_service` "created" signal lags actual API usability by 30-60s

**Context:** D1a Tier 2 second apply attempt (after Fix "Add compute + servicenetworking to Tier 1").

**Friction:** `terraform apply` created `google_project_service.api_compute` and `api_servicenetworking` in 1m46s, then immediately tried `google_compute_network.coffee_vpc` — and hit `Error 403: Compute Engine API has not been used ... SERVICE_DISABLED`. The API was "created" per Terraform's view, but GCP backend propagation hadn't completed. Re-running `terraform apply` 1-2 minutes later succeeded (3 resources in ~1m19s).

This is a well-known Terraform / google provider issue but it surfaces sharply in fresh-project dogfood because every API enable is on the critical path. Common workaround: insert a `time_sleep` resource between `google_project_service` completion and dependent resources.

**Proposed fix:** in v0.9 polish wave, optionally have terradart's hypothetical `Apis.required(...)` helper (see prior friction) wrap dependent resources behind a `time_sleep` of 30-60s. Alternatively (less invasive): emit a doc comment / barrel-level guidance pointing at the `time_sleep` pattern.

**Workaround used:** re-run `terraform apply` — Terraform's `google_compute_network` errored cleanly, no partial state.

**Tracked:** terradart#57. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Tier 3 API surface deviates from plan-author guesses — naming conventions worth a doc pass

**Context:** D1a Tier 3 implementation — wiring `GoogleSqlDatabaseInstance` + `GoogleSecretManagerSecret` per the Task 5 plan.

**Friction:** the implementation plan was authored against guessed class names that did not match terradart_google v0.8.0-dev exports. Four discrepancies surfaced during Step 1 verification:

1. **`SqlInstanceSettings` → `Settings`** (plain `Settings`, scoped under `cloud_sql.dart`). The naming is unprefixed even though it's specific to Cloud SQL — at the call site `Settings(...)` reads as ambiguous (Settings of what?). A consumer importing multiple barrels could plausibly hit a name collision.
2. **`SqlIpConfiguration` → `IpConfiguration`** (same pattern — unprefixed nested-block helper).
3. **`SecretReplication.automatic()` → `Replication.auto()`** (sealed factory; subclasses are `_AutoReplication` / `_UserManagedReplication`). The factory name `auto` is reasonable but the `SecretReplication` prefix the plan author guessed would have helped find it.
4. **`GoogleSecretManagerSecret.idRef` → `.id`** (returns `TfRef<String>`, so functionally equivalent — just `id` not `idRef`).

The cloud_sql quickstart at `examples/cloud_sql_quickstart/lib/main.dart` documents the correct names; reading that first prevented a compile failure. But without the quickstart, the natural first guess (resource-prefixed nested-block classes) is wrong.

**Proposed fix:** in v0.9 polish wave, decide on a naming convention for nested-block helpers and apply it consistently across all barrels — either prefix every helper with the resource it belongs to (`SqlInstanceSettings` / `SqlIpConfiguration` / `SecretReplication`) for clarity, OR document that bare helpers (`Settings`, `IpConfiguration`, `Replication`) are scoped per barrel and recommend `import 'package:terradart_google/cloud_sql.dart' as cloud_sql;` show-style aliasing. Either resolution should propagate to `dart doc` pages and the cookbook README.

A related sub-observation: `GoogleSecretManagerSecretVersion.secretData` is `@Deprecated` (per spec §10.4, prefer `secretDataWo` write-only API), so call sites need `// ignore: deprecated_member_use` until the cookbook recipe migrates to the write-only flow. The recipe stays on `secretData` for Tier 3 because Tier 4-6 haven't been written yet — once Cloud Run mounts the secret, switching to `secretDataWo` should be straightforward.

**Workaround used:** consulted `~/.pub-cache/hosted/pub.dev/terradart_google-0.8.0-dev/lib/src/sql/` directly to discover the actual exports before writing call sites. Sensitive masking confirmed working: at synth time both `google_sql_user.password` and `google_secret_manager_secret_version.secret_data` are emitted as `""` in `main.tf.json` (verified via `jq` against `tf-out/main.tf.json`), so the literal `dbPassword` value does NOT leak into the synth output.

**Tracked:** terradart#55. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### CRITICAL — synth-time sensitive masking destroys apply for write-once secret fields

**Context:** D1a Tier 3 `terraform apply` — first cycle after Tier 3 synth landed. `google_sql_database_instance.coffee_sql` (13m6s), `google_sql_database.coffee_db`, and `google_secret_manager_secret.db_password` (parent secret, 2s) all created successfully. Then `google_sql_user.coffee_user` and `google_secret_manager_secret_version.db_password_v1` failed.

**Friction:** terradart_core v0.8.0-dev's synth pipeline masks any `TfArgLiteral` written to a field listed in the resource's `$sensitiveFields` set — replacing the literal with `""` empty string in `tf-out/main.tf.json` before terraform sees it. This is the same mechanism that prevents secrets from leaking into the synth output (see prior entry). But for fields that **must carry a non-empty value at apply time** (e.g. `google_sql_user.password` and `google_secret_manager_secret_version.secret_data`), the masking destroys the apply: terraform receives `password = ""` and the provider rejects it (`Error: googleapi: Error 400: Invalid request: missing required field`).

Worse: the `Variable` / consumer-supplied interpolation API doesn't exist in v0.8.0-dev (`tf_ref.dart:16` reserves it for future), so the natural escape hatch — switch to `TfArg.variable(...)` and let `${var.db_password}` flow through unmasked — is unavailable. Users dogfooding Tier 3 hit a hard wall: the synth output's literal is silently destroyed and there's no obvious alternative in the public API.

**Workaround applied:** swap `password` / `secretData` → `passwordWo` / `secretDataWo` (write-only variants). v0.8.0-dev's `$sensitiveFields` set does NOT include the `_wo` variants, so literal values pass through to terraform unmasked, go through the write-only attribute mechanism at apply (value flows to provider, never enters tfstate). Synth output now contains the literal `dbPassword` value in `tf-out/main.tf.json` — acceptable trade-off because `tf-out/` is gitignored AND the new attributes are the canonical idiom per `google_sql_user.dart:55-58` doc comments.

**Proposed fix:** in v0.9 polish wave, two-part: (a) add `TfArg.variable(name)` (or equivalent) to `terradart_core` so consumers can route secrets through handwritten `variable` blocks when the resource's write-only API isn't ergonomic enough; (b) emit a clear synth-time diagnostic when a literal targets a masked field with no `_wo` alternative present — currently the masking is silent and the failure mode only surfaces at `terraform apply`. The `@Deprecated` annotation on `secretData` already nudges users toward `secretDataWo`; doing the same for `google_sql_user.password` would close the gap.

**Tracked:** terradart#53. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Duplicate `required_providers` between synth output and handwritten terraform.tf hard-blocks init

**Context:** D1a `terraform init` immediately after upgrading to terraform 1.11+ (fixing the previous required_version friction).

**Friction:** `Error: Duplicate required providers configuration` — `tf-out/terraform.tf` (handwritten, see "Backend block requires handwritten terraform.tf" friction above) declared `required_providers { google = ... }` to align the version pin, but synth output's `main.tf.json` already declares the same block at `main.tf.json:4`. terraform treats them as duplicates and refuses to init. Workaround was to reduce `terraform.tf` to `terraform { backend "local" {} }` only — drop `required_version` and `required_providers` and let synth own those declarations.

This is the same root cause as the "Backend abstraction missing" friction, but the day-2 symptom is sharper: consumers attempting to follow the Terraform community convention (declare versions in `terraform.tf` for source-of-truth visibility) actively break init.

**Proposed fix:** same as Backend abstraction (v0.9 A.1): if `Stack.backend` is set, synth emits the full `terraform { ... }` block including backend; user never authors `terraform.tf`. Alternatively (transitional): synth could detect a sibling `terraform.tf` and skip emitting `required_*` fields when present, but this is fragile.

**Tracked:** terradart#52. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Tier 4 — `GoogleServiceAccount` IAM-binding getter name is unguessable

**Context:** D1a Tier 4 implementation — wiring `GoogleServiceAccount` + three `GoogleProjectIamMember` bindings + one `GoogleSecretManagerSecretIamMember` per the Task 6 plan.

**Friction:** the implementation plan was authored against the guessed getter name `runSa.emailMember` (i.e. "the email formatted as an IAM member string"). The actual getter on `GoogleServiceAccount` is `.member` — bare, no `email` prefix. The dartdoc on the resource explicitly recommends `.member` over manual `'serviceAccount:' + email` concatenation, but the bare name `member` doesn't telegraph what it returns. The natural first guesses (`.emailMember`, `.memberRef`, `.iamMember`, `.principal`) all fail. A reader scanning `GoogleServiceAccount`'s public surface sees five getters — `id`, `email`, `name`, `uniqueId`, `member` — and `.member` looks like it could be "the service account's primary identity field" rather than "the pre-formatted IAM-binding string".

**Proposed fix:** in v0.9 polish wave, rename `GoogleServiceAccount.member` → `GoogleServiceAccount.iamMember` (or `iamMemberRef`) to make the intent self-documenting at the call site. The current dartdoc is good ("pre-formatted `serviceAccount:<email>` string. **Use this for IAM bindings**"), but the getter name itself fights the doc. Bonus: the same naming convention should propagate to any other resource that emits a member-formatted attribute (e.g. workload identity pool providers, federated identities).

**Workaround used:** consulted `~/.pub-cache/hosted/pub.dev/terradart_google-0.8.0-dev/lib/src/iam/google_service_account.dart` to discover the actual getter name before writing call sites.

**Tracked:** terradart#55. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Tier 5 — Cloud Run v2 env-var helper shape diverges from natural guess; `locationRef` getter missing

**Context:** D1a Tier 5 implementation — wiring `GoogleCloudRunV2Service` with 4 env vars (3 literal sourced from refs, 1 from Secret Manager) + `GoogleCloudRunV2ServiceIamMember` per the Task 7 plan.

**Friction:** two distinct discrepancies surfaced while writing Tier 5 against terradart_google v0.8.0-dev's actual exports:

1. **`EnvVar` is a wrapper, not the leaf type.** The Task 7 plan author's natural guess (informed by the synth-test pattern names already in our project memory) was a flat shape — `EnvVarFromLiteral(name: ..., value: ...)` / `EnvVarFromSecret(name: ..., secret: ..., version: ...)`. The actual API is `EnvVar(name: 'DB_INSTANCE', source: EnvVarFromLiteral(TfArg.literal('...')))` — i.e. `EnvVar` carries the name (plain `String`, not `TfArg<String>`) and dispatches to a sealed `EnvVarSource` (`EnvVarFromLiteral(value)` positional / `EnvVarFromSecret({secret, version})`) for the value source. This shape models the Terraform schema's `value` vs `value_source.secret_key_ref` exactly_one_of constraint at the type level, which is good — but the wrapper-vs-leaf layering isn't telegraphed by the export list (`EnvVar` / `EnvVarFromLiteral` / `EnvVarFromSecret` / `EnvVarSource` all sit at the same level in `cloud_run.dart`). A consumer scanning the exports could plausibly read `EnvVarFromLiteral` as a self-contained env var rather than a value source. The job-side helpers (`JobEnvVar` / `JobEnvVarFromLiteral` / etc.) repeat the exact same pattern in a parallel namespace.

2. **`GoogleCloudRunV2Service` exposes `nameRef` but no `locationRef`.** The IAM member binding needs both `name` and `location` to identify the target service. The plan attempted `TfArg.ref(coffeeService.locationRef)` symmetrically with `nameRef`, but no such getter exists — the surface is `nameRef`, `id`, `uri`, `generation`, `latestReadyRevision`, `latestCreatedRevision`, `uid`, `etag` (zero location-related attrs). The workaround was to re-literal `'asia-northeast1'` for the IAM member's `location` field, which works but introduces a magic-string coupling between the service declaration and the binding — change the region in one place and you need to remember to change it in the other. A consumer following a "always wire via refs" hygiene rule (which terradart's overall design encourages) would expect this getter to exist.

**Proposed fix:** in v0.9 polish wave, two adjustments:

- **(a)** Consider flattening the env-var helper into a single leaf type per source, e.g. `EnvLiteral(name: 'DB_INSTANCE', value: TfArg.literal('...'))` and `EnvSecret(name: 'DB_PASSWORD', secret: TfArg.ref(...), version: 'latest')`. This loses the sealed-class dispatch benefit but the Terraform schema's `exactly_one_of` constraint is already enforced at the provider level — moving it into the type system buys correctness at the cost of an unintuitive shape. If the wrapper design stays, add a doc comment on `EnvVar` (and `JobEnvVar`) explicitly calling out "this is the name carrier; pick a source from `EnvVarSource`'s sealed family" — currently the dartdoc says "Set [source] to inject a value", which doesn't telegraph the dispatch idiom.

- **(b)** Add `locationRef` (and possibly `projectRef`) as input-mirror getters on `GoogleCloudRunV2Service` (and other location-scoped resources) so the binding-companion pattern stays ref-based throughout. Even though Terraform doesn't expose `location` as a read attribute on these resources, the synthesizer could generate a getter that returns a `TfRef` to the local Terraform argument (`${google_cloud_run_v2_service.<local>.location}`) since the argument is required and thus always set. Alternatively: expose the resource's required input arguments via a uniform `inputs.location` / `inputs.region` mirror so consumers always have a ref-able handle without forcing the schema to materialize the attr at read time.

**Workaround used:** (a) wrote env vars in the actual `EnvVar(name: ..., source: EnvVarFrom...())` shape after reading `~/.pub-cache/hosted/pub.dev/terradart_google-0.8.0-dev/lib/src/cloud_run/google_cloud_run_v2_service.dart:484-552` directly. (b) hard-coded `TfArg.literal('asia-northeast1')` for the IAM member's `location` instead of a ref.

**Tracked:** terradart#55. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Tier 6 — Monitoring nested-block helpers are inconsistent about `TfArg` wrapping; enum names diverge from plan author guesses

**Context:** D1a Tier 6 implementation — wiring `GooglePubsubTopic` + `GooglePubsubSubscription` (push to Cloud Run + OIDC token) + `GoogleMonitoringNotificationChannel` (email) + `GoogleMonitoringUptimeCheckConfig` + `GoogleMonitoringAlertPolicy` per the Task 8 plan.

**Friction:** several discrepancies between the plan author's natural guesses and the actual v0.8.0-dev exports surfaced during Step 1 verification:

1. **`MonitoringUptimeCheckMonitoredResource` and `MonitoringUptimeCheckHttpCheck` fields are plain Dart types, NOT `TfArg<T>`.** The plan was written assuming the typical terradart pattern of "every settable field is `TfArg<T>`" (which is the rule for `Resource` constructors). For nested-block helpers in the monitoring barrel, fields like `type` / `labels` / `port` / `path` / `useSsl` are plain `String` / `Map<String, String>` / `int` / `bool`. This is internally consistent inside the monitoring barrel but inconsistent with the project-wide "wire via `TfArg`" hygiene rule — a consumer who's been using `TfArg.literal(...)` everywhere will reach for it here and hit a static type error.

2. **`Aggregation.perSeriesAligner` is `Aligner?`, NOT `TfArg<Aligner>?`.** Same inconsistency: `Aggregation.alignmentPeriod` is `TfArg<String>?` (TfArg-wrapped), but `perSeriesAligner` and `crossSeriesReducer` are bare enums. The plan attempted `TfArg.literal(Aligner.alignNextOlder)`; the actual API is `Aligner.nextOlder` (bare enum value, no TfArg wrapper).

3. **Enum value names differ from plain-English guesses.** Plan guessed `Comparison.lessThan` and `Aligner.alignNextOlder`. Actual names are `Comparison.lt` (terse abbreviation) and `Aligner.nextOlder` (no `align` prefix — the prefix lives in the `terraformValue` `'ALIGN_NEXT_OLDER'`). Symmetry-of-naming reading would expect either both terse or both verbose.

4. **`GooglePubsubSubscription.topic` requires `.id`, NOT `.nameRef`.** The plan attempted `TfArg.ref(orderTopic.nameRef)`. The actual provider expects the full resource path `projects/{project}/topics/{name}`, which is what `.id` returns. The dartdoc on `google_pubsub_subscription.dart` is explicit about this ("NOT `topic.nameRef`"), but the more general lesson is that consumers can't tell from the call site whether a given consumer field wants `.nameRef` vs `.id` — and the wrong choice produces a runtime apply error, not a synth-time signal.

5. **`Aggregation` cannot be `const`-constructed when its fields use `TfArg.literal(...)`.** `TfArg.literal` is a static method, not a const constructor; `TfArgLiteral<T>(...)` is the const-constructible form. Mixing nested helpers (which often want `const`) with `TfArg.literal` argument calls silently breaks `const`-ness. The call site has to drop `const` on the outer collection literal.

**Proposed fix:** in v0.9 polish wave, three adjustments:

- **(a)** Decide on a uniform "wrap or not" policy for nested-block helpers across all barrels. Either every settable field is `TfArg<T>` (consistent with `Resource` constructors, requires more verbose call sites), OR nested helpers expose plain Dart types and document this contrast prominently. Halfway (some fields TfArg, some plain) confuses consumers.
- **(b)** Audit enum names for length consistency. `Comparison.gt/ge/lt/le/eq/ne` (terse) vs `Aligner.nextOlder/percentile99/...` (verbose) reads inconsistent. Either go terse everywhere (`Comparison.lt` + `Aligner.no`) or verbose everywhere (`Comparison.lessThan` + `Aligner.nextOlder`).
- **(c)** For ref-style fields where the consumer ambiguously expects `.nameRef` vs `.id`, add a type-level distinction (`TfRefName<T>` vs `TfRefId<T>`?) or at minimum a doc comment on the consumer field telling readers "expects `.id` not `.nameRef`" — currently only the producing resource's getter doc has this info.

**Workaround used:** read `~/.pub-cache/hosted/pub.dev/terradart_google-0.8.0-dev/lib/src/monitoring/google_monitoring_alert_policy.dart` and `google_monitoring_uptime_check_config.dart` directly; adapted call sites to match the actual API (bare enums where required, plain Dart types where required, `.id` for the topic reference). Synth output verified end-to-end via `jq` against `tf-out/main.tf.json` — all 5 Tier 6 resources emit valid Terraform JSON.

**Tracked:** terradart#55. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Cloud Run container image choice matters for IAM: only `cloudrun/container/hello` works without explicit grants

**Context:** D1a Tier 5 `terraform apply` for `google_cloud_run_v2_service.coffee_service` using image `asia-northeast1-docker.pkg.dev/google-samples/containers/hello-app:1.0`.

**Friction:** `Error 403: Permission 'artifactregistry.repositories.downloadArtifacts' denied on resource (or it may not exist).` The `google-samples` AR repository requires the Cloud Run service agent (`service-<project_number>@serverless-robot-prod.iam.gserviceaccount.com`) to have explicit `roles/artifactregistry.reader` on the `google-samples` project — which is not auto-granted. The image is "publicly visible" but not "publicly pullable by managed service agents".

The canonical Cloud Run public sample is `us-docker.pkg.dev/cloudrun/container/hello` — Google grants every GCP user's Cloud Run service agent `downloadArtifacts` permission on the `cloudrun` project automatically. This is the recommended starter image in Cloud Run's own quickstart docs.

**Proposed fix (this recipe):** swap to `us-docker.pkg.dev/cloudrun/container/hello`.

**Proposed fix (v0.9 polish):** add doc-comment guidance on `GoogleCloudRunV2Service.template.containers[].image` pointing to the canonical public hello image. Optionally provide a `CloudRunSampleImages.helloPublic` constant that recipes can reference.

**Tracked:** Documented in cookbook (no terradart code issue).

### Cloud Run v2 service has `deletion_protection = true` provider default; recipe-author must explicitly disable

**Context:** D1a closeout `terraform destroy` against the 24-resource stack on `terradart-validate`.

**Friction:** `Error: cannot destroy service without setting deletion_protection=false and running terraform apply`. The recipe's Tier 5 builder (`buildCloudRunService`) did not specify `deletionProtection`, so the Terraform google provider's default of `true` applied silently. `terraform destroy` partially succeeded — Pub/Sub topics, subscriptions, IAM bindings, monitoring resources, and notification channels destroyed cleanly — but the Cloud Run service block halted the chain, leaving ~6 resources orphaned (SQL instance, Cloud Run service, SA, secret, VPC, global_address, service_networking_connection).

To unblock destroy, the dev had to (a) add `deletionProtection: TfArg.literal(false)` to the builder, (b) re-run `terraform apply` to push the new value to the existing service, then (c) re-run `terraform destroy`. The dogfood already explicitly sets `deletionProtection: false` on `GoogleSqlDatabaseInstance` for the same reason — Cloud Run v2 was simply overlooked.

**Proposed fix:** terradart's docs / quickstarts should consistently flag "sample / dogfood code should explicitly set `deletionProtection: false` on every resource that has the field" — Cloud Run v2, Cloud SQL, Secret Manager (when supported), GCS bucket, BigQuery dataset, etc. Optionally: add a `Stack.devMode` or `Stack.deletionProtectionDefault` flag that recipe authors flip once instead of repeating per resource.

**Tracked:** terradart#54. **Status:** Resolved in terradart v0.9.0 (link TBD post-tag).

### Cloud SQL producer-side peering lingers after instance destroy; service_networking_connection blocks destroy chain

**Context:** D1a closeout `terraform destroy` AFTER `google_sql_database_instance.coffee_sql` had already been destroyed (~15-20 minutes earlier).

**Friction:** `Error: Unable to remove Service Networking Connection ... Failed to delete connection; Producer services (e.g. CloudSQL, Cloud Memstore, etc.) are still using this connection.` GCP's Cloud SQL tenant project (`h9cb7f1a3a38477dap-tp`) was still holding the consumer-side peering reservation even though Cloud SQL itself was gone. This is a well-known Google Cloud behavior — producer-side cleanup can take hours.

The destroy chain halts at this resource, leaving 3 downstream resources (PSA connection + global_address + VPC) in a stuck state.

**Workaround applied:** force-delete the consumer-side VPC peering via the Compute Engine API directly:

```bash
gcloud compute networks peerings delete servicenetworking-googleapis-com \
  --network=coffee-shop-vpc \
  --project=terradart-validate \
  --quiet
```

After this, `terraform destroy` refreshes its plan and treats the PSA connection as already gone (state sync at refresh time), then proceeds to destroy `google_compute_global_address` (12s) + `google_compute_network` (22s) cleanly.

**Proposed fix:** This is a GCP / Terraform google provider issue, not a terradart code bug. But the cookbook recipe + terradart docs should call out this teardown pattern explicitly: "If you destroyed a Cloud SQL instance with PSA peering, expect `terraform destroy` of the surrounding network resources to hang on the service_networking_connection. The workaround is to force-delete the consumer-side peering via `gcloud compute networks peerings delete servicenetworking-googleapis-com --network=<vpc> --project=<project>` before retrying."

Optional terradart enhancement: a `Stack.teardown()` helper that orchestrates Cloud-SQL-PSA-aware destroy ordering, or a doc-comment on `GoogleServiceNetworkingConnection` explaining the producer-side cleanup quirk.

**Tracked:** Documented in cookbook (no terradart code issue — provider behavior).

## D1b (GCS backend)

(filled in during the D1b apply cycle.)

## v0.11.0 dogfood

### README claims a `coffee_service_uri` Terraform output that the Stack does not actually emit

**Context:** v0.11.0 surface fresh-state apply against `terradart-validate`. Apply succeeded (28 resources, ~9 min including Cloud SQL). Followed the README smoke section verbatim:

```bash
SERVICE_URL=$(terraform output -raw coffee_service_uri)
curl -i "$SERVICE_URL"
```

**Friction:** `terraform output` returns `No outputs found`. The recipe Stack does not call `addExport` for `coffee_service_uri`, and the synthesized `main.tf.json` has no `output` block. The README's smoke recipe is uncopypastable as-written.

Workaround used during this dogfood: `SERVICE_URL=$(gcloud run services describe coffee-shop --project terradart-validate --region asia-northeast1 --format='value(status.url)')`. GET / and POST /order both returned HTTP 200 — endpoint is healthy, only the discovery path was broken.

**Proposed fix:** either (a) add `addExport('coffee_service_uri', coffeeService.uri)` in `lib/service.dart` to make the README example accurate (preferred — this is the kind of typed export that v0.11.0 `setAppExportsOutputPath` is designed to surface), or (b) replace the README smoke section with the gcloud-based URL lookup. (a) is more in the spirit of the recipe (demonstrates the AppExport feature); (b) is a one-line README change. Either way, the README and Stack should agree.

**Tracked:** Documented here for the next polish wave.

### `service_networking_connection` destroy fails first time; PSA workaround in README still required

**Context:** v0.11.0 surface `terraform destroy` after the apply above. 26 of 28 resources destroyed cleanly on the first pass; PSA connection + dependent VPC hung with `Error code 9: Producer services (e.g. CloudSQL, Cloud Memstore, etc.) are still using this connection.`

**Friction:** Same behavior the README's "Teardown gotcha" section already documents. Cloud SQL is gone (tenant-side cleanup pending), but Terraform can't proceed with the consumer-side peering until GCP's tenant-side cleanup completes (can take hours).

Applied the documented workaround verbatim:

```bash
gcloud compute networks peerings delete servicenetworking-googleapis-com \
  --network=coffee-shop-vpc --project=terradart-validate --quiet
terraform destroy -auto-approve
```

Retry destroyed the remaining 2 resources (VPC + PSA connection) in 11s. Total teardown clean.

**Proposed fix:** none for terradart or the recipe — this is GCP provider behavior. The README's existing "Teardown gotcha" section is accurate and the workaround works. Reconfirmed under v0.11.0.

**Tracked:** Pre-existing finding, reconfirmed.
