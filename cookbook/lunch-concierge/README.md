# Lunch Concierge

Lunch Concierge is a full-stack TerraDart cookbook recipe for showing how
Flutter Web, a Dart server, Genkit, Agent Platform, Cloud Run, and Cloud SQL
can be connected through Dart-authored infrastructure.

## Architecture

```text
User
  |
  v
Cloud Run service: lunch-concierge
  app container
    - Flutter Web static files
    - shelf HTTP server
    - genkit_shelf endpoint
    - Genkit Dart + Agent Platform (Gemini)
    - postgres client

  cloud-sql-proxy sidecar
    - private IP
    - IAM DB authentication
    - localhost:5432
  |
  | Direct VPC egress
  v
VPC + Private Service Access
  |
  v
Cloud SQL PostgreSQL
  - private IP only
  - IAM DB authentication
```

TerraDart defines the Artifact Registry repository, Cloud Run service, Cloud
SQL instance/database/IAM user, VPC, Private Service Access, IAM grants, API
enablement, and generated app exports.

Cloud Run reaches the database through Direct VPC egress with
`PRIVATE_RANGES_ONLY`. This keeps the private database path without a
Serverless VPC Access connector or its baseline compute cost.

## Layout

```text
cookbook/lunch-concierge/
├── client/   # Flutter Web app (built inside the Dockerfile)
├── server/   # shelf + genkit_shelf + postgres server
├── shared/   # generated TerraDart AppExport constants
└── infra/    # TerraDart Stack
```

The Flutter client is intentionally not a root Dart workspace member because
the TerraDart monorepo agent environment does not install Flutter. The Docker
build uses a Flutter builder image for the client stage.

## Deploy flow

From the repository root:

```bash
export GCP_PROJECT_ID="<your-gcp-project-id>"
export REGION=asia-northeast1
export IMAGE_URI="$REGION-docker.pkg.dev/$GCP_PROJECT_ID/lunch-concierge/app:demo"
export INVOKER_EMAIL="<your-google-account@example.com>"
export TF_STATE_BUCKET="$GCP_PROJECT_ID-tfstate"
export TF_STATE_PREFIX=lunch-concierge

dart pub get
cd cookbook/lunch-concierge/server
dart run build_runner build --delete-conflicting-outputs

cd ../infra
dart run bin/infra.dart
cd tf-out
terraform init
terraform apply -target=google_artifact_registry_repository.app_images

cd ../../../..
gcloud auth configure-docker "$REGION-docker.pkg.dev"
docker build -f cookbook/lunch-concierge/server/Dockerfile -t "$IMAGE_URI" .
docker push "$IMAGE_URI"

cd cookbook/lunch-concierge/infra/tf-out
terraform apply
```

The targeted first apply creates the Artifact Registry repository so the image
can be pushed. The second apply creates or updates the rest of the stack.

## Access control (IAP)

The Cloud Run service runs with IAP enabled: the run.app URL redirects to a
Google sign-in, and only `INVOKER_EMAIL` holds
`roles/iap.httpsResourceAccessor` (plus a direct `roles/run.invoker` grant as
a token-based fallback). The stack grants `roles/run.invoker` to the IAP
service agent, which must exist before the first apply. Provision it once per
project:

```bash
gcloud beta services identity create \
  --service=iap.googleapis.com \
  --project="$GCP_PROJECT_ID"
```

IAP also needs an OAuth client. Projects inside an organization get a
Google-managed client automatically; a project without an organization must
configure a custom OAuth client once, in the console, because external
consent screens cannot be created through the API (which is also why this
part is not in the Terraform stack):

1. Configure the OAuth consent screen (Google Auth Platform > Branding) with
   the audience set to External, and add `INVOKER_EMAIL` as a test user while
   the app is in testing status.
2. On the IAP page, open the Cloud Run service's settings and choose
   Custom OAuth > Auto Generate Credentials. Alternatively, create a
   web-application OAuth client manually, add the redirect URI
   `https://iap.googleapis.com/v1/oauth/clientIds/CLIENT_ID:handleRedirect`,
   and apply it with `gcloud iap settings set`.

Until the OAuth client is configured, requests fail with
`Empty Google Account OAuth client ID(s)/secret(s).` instead of redirecting
to the Google sign-in. The deployer service account also needs
`roles/iap.admin` so Terraform can manage the IAP access policy.

The `google_iap_web_cloud_run_service_iam_member` grant uses a hand-rolled
`Resource` subclass (`infra/lib/src/iap_access.dart`) because the
terradart_google catalog has not curated IAP resources yet — it doubles as an
example of expressing an uncurated resource without leaving Dart.

## Database bootstrap

The Cloud Run service connects as the Cloud SQL IAM database user:

```text
lunch-sql-client@<project-id>.iam
```

The server creates the `lunch_suggestions` table on startup if it has enough
schema privileges. For the demo, bootstrap the database once as an
administrator and grant the runtime user the privileges it needs:

```sql
create table if not exists lunch_suggestions (
  id bigserial primary key,
  area text not null,
  mood text not null,
  budget_yen integer not null,
  suggestion_json jsonb not null,
  created_at timestamptz not null default now()
);

grant usage on schema public to "lunch-sql-client@<project-id>.iam";
grant create on schema public to "lunch-sql-client@<project-id>.iam";
grant insert, select on lunch_suggestions to "lunch-sql-client@<project-id>.iam";
grant usage, select on sequence lunch_suggestions_id_seq
  to "lunch-sql-client@<project-id>.iam";
```

If the grants are missing, the Genkit flow can still generate a lunch response,
but history persistence will fail and the server logs will show the PostgreSQL
error.

## Boundary contract

`infra` writes generated constants to `shared`:

```dart
setAppExportsOutputPath('../shared/lib/generated/lunch_stack.app.dart');
```

The server imports those constants:

```dart
import 'package:lunch_concierge_shared/generated/lunch_stack.app.dart';

final databaseUrl = LunchStackExports.DATABASE_URL;
```

This is the demo boundary: infrastructure-owned values such as database name,
database user, region, and Cloud SQL connection name are handed to application
code as typed Dart constants instead of duplicated string literals.
