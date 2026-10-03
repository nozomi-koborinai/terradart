# Appwrite quickstart

Covers every `terradart_appwrite` factory at the current provider pin, against the official `appwrite/appwrite` provider: a project, an auth team and user, a storage bucket and file, a TablesDB table with a column, an index and a row, PostgreSQL / MySQL / MongoDB databases with backup policies and storage, a function and a site with their variables and template deployments, a proxy rule, messaging, a webhook, and every data source. `AppwriteProjectKey` is import-only upstream, so it is left out.

## Before you apply

The stack uses demo literals in place of your organization, project, domain, SMTP host and backup buckets: replace them in `lib/main.dart` (the `AppwriteProvider` settings first). Apply creates every resource above, including three managed databases and their backup storage, and the site and function deploy from Appwrite's public template repository. Remove what you do not want before applying.

Four sensitive values are Terraform variables, so they never appear in `tf-out/`: `backup_access_key`, `backup_secret_key`, `function_api_url` and `site_api_url`. Arguments after `--` go to the engine, so pass them to `terradart plan` and `terradart apply` that way (or export them as `TF_VAR_<name>`).

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- An Appwrite API key in `APPWRITE_API_KEY` (project resources) or `APPWRITE_ORGANIZATION_API_KEY` (organization resources); none is needed for synth

## Usage

```bash
dart pub get
terradart synth          # writes tf-out/main.tf.json, no credentials needed
export APPWRITE_ORGANIZATION_API_KEY=...
terradart plan -- -var backup_access_key=... -var backup_secret_key=... \
  -var function_api_url=https://api.example.com -var site_api_url=https://api.example.com
```

No key appears in `tf-out/main.tf.json`: `AppwriteProvider` has no API-key parameter, and the provider reads the `APPWRITE_*` variables at plan and apply time.

## Next steps

- See [Appwrite on terradart.dev](https://terradart.dev/docs/providers/appwrite/) for the provider package and the permission builders (`.read(.any)`, `.write(.team(...))`).
