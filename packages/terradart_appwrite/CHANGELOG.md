# Changelog

## 0.35.0 - 2026-10-03

- No API changes. Lockstep release with the `terradart` command's `--json` output, fixed exit codes, `--no-input`, `--dry-run`, `terradart help <topic>` and bundled agent skill; no provider pin moves.

## 0.34.0 - 2026-10-03

- No API changes. Lockstep release; no provider pin moves. The `terradart` command now runs a Stack that uses this package on Terraform, because `appwrite/appwrite` is published to the Terraform registry only, and stops before `init` when OpenTofu is asked for. `terradart init --provider appwrite` scaffolds such a project.

## 0.33.0 - 2026-10-02

- No API changes. Lockstep release with the new `terradart_cli` package (the `terradart` command); no provider pin moves.

## 0.32.1 - 2026-10-02

- No API changes. Republishes the 0.32.0 workspace so `terradart_appwrite`, `terradart_cloudflare`, `terradart_aws` and `terradart_migrate` reach pub.dev; the 0.32.0 publish workflow stopped them at a wrapper-count check that also counted hand-written files, and now counts only generated wrappers ([#877](https://github.com/nozomi-koborinai/terradart/pull/877)).

## 0.32.0 - 2026-10-02

- **Breaking:** attribute getters drop the `Ref` suffix and pass straight into an argument (`db.id`, `bucket.name`); a Dart reserved word or a `Resource` / `Data` member takes an `Attr` suffix. See [MIGRATING.md](../../MIGRATING.md#attribute-getters-are-plain-tfargs).
- **Breaking:** the `permissions` of storage buckets, files, TablesDB tables and rows are `TfArg<List<AppwritePermission>>`: an action (`.read`, `.create`, `.update`, `.delete`, `.write`) on an `AppwriteRole` (`.any`, `.guests`, `.users(verified: ...)`, `.user(user.ref)`, `.team(team.ref, role: ...)`, `.member(id)`, `.label(name)`), plus `.literal` / `.arg`. Both live in `package:terradart_appwrite/auth.dart`. `AppwriteStorageBucket` gains its `permissions` argument. Synth output is unchanged. See [MIGRATING.md](../../MIGRATING.md#appwrite-permissions).
- **Breaking:** every barrel re-exports `terradart_core`, and a data source is also exported from its service barrel. See [MIGRATING.md](../../MIGRATING.md#fewer-imports).
- **Breaking:** `provider:` on every factory and data source takes the registered `AppwriteProvider` instance instead of `'appwrite.<alias>'`. See [MIGRATING.md](../../MIGRATING.md#providers-are-instances).
- **Breaking:** an argument the provider schema marks sensitive is `Sensitive<T>` — a variable, an expression or an attribute getter, never `.literal(...)`. See [MIGRATING.md](../../MIGRATING.md#sensitive-arguments-take-no-literal).
- **Breaking:** every generated enum is an extension type implementing `TfArg<String>`, so an enum slot takes a member bare (`.member` instead of `.literal(.member)`). See [MIGRATING.md](../../MIGRATING.md#enums-are-arguments).
- **Breaking:** every factory takes its local name as the first positional argument. See [MIGRATING.md](../../MIGRATING.md#the-local-name-is-the-first-argument).

## 0.31.0 - 2026-10-01

- **Breaking** — three enums no longer repeat their stem's last word: `MongoBackupStorageStorageProvider`, `MysqlBackupStorageStorageProvider` and `PostgresqlBackupStorageStorageProvider` are `MongoBackupStorageProvider`, `MysqlBackupStorageProvider` and `PostgresqlBackupStorageProvider`. Values and synth output are unchanged. See [MIGRATING.md](../../MIGRATING.md#generated-type-names-are-short).
- **Breaking** — arguments that name another Appwrite resource take `RefTo<R>` and emit its `id`: `project_id`, `database_id` (the database of the same family), `table_id` / `related_table_id`, `bucket_id`, `topic_id`, `function_id` and `site_id` (93 inputs on resources and data sources). Pass `db.ref`, or `.literal('...')` for a value outside the Stack. Synth output is unchanged. See [MIGRATING.md](../../MIGRATING.md#arguments-that-name-another-resource-take-reftor).
- 377 new `<name>Ref` getters, one per input a resource or data source takes (`TfRef<String> get scopeIdRef`), so another argument, an output or a constant reads what the input is set to with `.ref(...)`.
- Every resource has a `ref` getter returning `RefTo<ItsClass>`, and so does every data source that reads a resource of this package — the reference the arguments naming another resource will take. Additive.
- **Breaking** — requires Dart 3.10 (`sdk: ^3.10.0`, was `^3.6.0`). The generated wrappers were already formatted in the Dart 3.7+ tall style, so the constraint now matches them (pub.dev static analysis no longer reports a formatter mismatch).
- Generated wrappers encode optional inputs as null-aware map elements (`'k': ?x`, `'k': ?x?.toTfJson()`) instead of `if (x != null) 'k': x` guards, regenerated with `terradart wrap`. No API change; synth output is unchanged.

## 0.30.0 - 2026-09-28

- **Breaking:** inputs with a fixed value set are enums — 23 string slots on 17 resources (e.g. `AppwriteMessagingProvider.type` → `MessagingProviderType`, `AppwriteStorageBucket.compression` → `StorageBucketCompression`). Synth output is unchanged. See `MIGRATING.md`.

## 0.29.0 - 2026-09-27

Lockstep release. No `terradart_appwrite` API changes.

## 0.28.1 - 2026-09-13

Lockstep release with `terradart_migrate` 0.28.1 (passthrough emission fix — a bare `Map` / `List` parameter no longer comes out as `TfArg.literal`). No `terradart_appwrite` API changes.

## 0.28.0 - 2026-09-13

- **`AppwriteProvider.alias`** (`provider "appwrite" { alias = "staging" }`) and a **`provider:`** parameter on every factory and data source, so a resource can select an aliased configuration (`provider: 'appwrite.staging'`) (#666).

## 0.27.0 - 2026-08-30

Lockstep release with `terradart_core` 0.27.0 (`TfVariable` / `Stack.addVariable` and `S3Backend`). No `terradart_appwrite` API changes.
## 0.26.0 - 2026-08-24

Lockstep release with the TerraDart workspace. No Appwrite factory or provider changes.

## 0.25.3 - 2026-08-23

- Fill the curated catalog at the `appwrite/appwrite` `2.0.0-beta.1` pin:
  every remaining resource factory and data source (38 resources + 24
  data sources). `examples/appwrite_quickstart` synths every applyable
  factory; `AppwriteProjectKey` is import-only and listed in
  `tool/example_debt.yaml`.

## 0.25.2 - 2026-08-22

- Add an in-package `example/main.dart` (pub.dev pana example check) and
  rewrite the catalog note as a feature-request invitation. No factory or
  provider changes.

## 0.25.1

- Lockstep release with the TerraDart workspace. No Appwrite factory or
  provider changes.

## 0.25.0

- Initial release: `AppwriteProvider` (credential-free by design — apply
  authenticates via `APPWRITE_*` environment variables) and the first
  curated factories, `AppwriteProject` and `AppwriteStorageBucket`.
  Provider pinned at `appwrite/appwrite 2.0.0-beta.1`. Versioned in
  lockstep with the TerraDart workspace.
