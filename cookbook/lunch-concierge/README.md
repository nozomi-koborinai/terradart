> Part of the [TerraDart cookbook](../README.md). Library: [terradart](https://github.com/nozomi-koborinai/terradart).
>
> **Status:** Full-stack demo recipe — Flutter Web + Dart server + Genkit (Agent Platform) + Cloud Run + private Cloud SQL, all authored in Dart. Targets `terradart_core` / `terradart_google` ^0.24.0.

# Lunch Concierge

A full-stack app where **every layer is Dart** — the Flutter Web UI, the
server, the Genkit AI flow, and the infrastructure itself. You describe the
Cloud Run + Cloud SQL + Agent Platform surface in Dart with TerraDart, and the
values that infrastructure owns cross into application code as **typed Dart
constants** instead of hand-copied strings.

The user picks an area, a mood, and a budget; Gemini (via Genkit + Agent
Platform) suggests three lunches; each request is persisted to a private Cloud SQL
database. Nothing about this app leaves Dart.

## The one-language boundary

Most "full-stack Dart" stories stop at UI + server. The moment you reach
infrastructure, you usually drop into HCL, YAML, or a console — a boundary
where types disappear and values get duplicated as strings. This recipe
removes that boundary in two concrete places:

- **client ↔ server** — the request/response types (`LunchRequest`,
  `LunchResponse`) live once in `shared/` as [schemantic](https://pub.dev/packages/schemantic)
  schemas. The Flutter client and the Genkit flow speak the *same* schema, so
  the wire contract is compiled, not stringly-typed.
- **infra → app** — the TerraDart Stack *generates* the values it owns
  (project id, region, database name, database user, Cloud SQL connection
  name) into `shared/` as `LunchStackExports`. The server imports them as
  constants. No `.env` file re-typing what Terraform already knows.

That second boundary is the point of the recipe: infrastructure is not a
foreign language bolted on at the edge — it is a Dart package that hands typed
values to the rest of the codebase.

## Architecture

### Authoring — one Dart codebase, typed hand-offs

```text
infra/  (TerraDart Stack, Dart)
  │  dart run bin/infra.dart  (synth)
  ├──► tf-out/main.tf.json ──► terraform apply ──► Google Cloud
  └──► shared/lib/generated/lunch_stack.app.dart   (LunchStackExports)
                    ▲
                    │ imported as typed constants
shared/  (schemantic types: LunchRequest / LunchResponse)
  │                                          same schema on both ends
  ├── client/  Flutter Web  ── POST /api/lunch ──┐
  └── server/  shelf + Genkit + postgres  ◄──────┘
```

### Runtime — the deployed GCP topology

```text
Browser ──► IAP (Google sign-in) ──► Cloud Run: lunch-concierge
                                      ├─ app container
                                      │    Flutter Web (static) + shelf
                                      │    optional IAP JWT check on /api/*
                                      │    genkit_shelf ─► Agent Platform (Gemini 2.5 Flash)
                                      │    postgres client ─► localhost:5432
                                      └─ cloud-sql-proxy sidecar (private IP, IAM auth)
                                             │ Direct VPC egress (PRIVATE_RANGES_ONLY)
                                             ▼
                                      VPC + Private Service Access
                                             ▼
                                      Cloud SQL PostgreSQL (private IP, IAM auth)
```

Cloud Run reaches the database through **Direct VPC egress** with
`PRIVATE_RANGES_ONLY` — a private database path without a Serverless VPC
Access connector or its baseline compute cost.

### What the Stack provisions

`LunchStack` composes one file per concern (see `infra/lib/src/`), spanning
eight `terradart_google` barrels:

- **`apis.dart`** — enables the required Google APIs (`Apis.enable` plus
  `aiplatform` and `iap`) and creates the Artifact Registry Docker repository.
- **`network.dart`** — VPC, subnet, a reserved `/16` PSA range, and the
  Service Networking connection that makes private Cloud SQL reachable.
- **`runtime_identity.dart`** — the runtime service account and its
  `roles/cloudsql.client`, `cloudsql.instanceUser`, and `aiplatform.user`
  grants.
- **`database.dart`** — Cloud SQL for PostgreSQL 15 (private IP only, IAM
  authentication), the `lunch` database, and the IAM database user.
- **`cloud_run.dart`** — the Cloud Run v2 service (app + `cloud-sql-proxy`
  sidecar, Direct VPC egress, IAP enabled) plus the `run.invoker` and IAP
  accessor grants.
- **`exports.dart`** — the seven infra-owned constants written into `shared/`.

## Project layout

```text
cookbook/lunch-concierge/
├── client/   # Flutter Web (app / lunch_page / theme / widgets)
├── server/   # shelf app (routes, optional IAP JWT, Genkit, postgres)
├── shared/   # schemantic schemas + generated LunchStackExports
└── infra/    # TerraDart Stack
```

`client/`, `server/`, `shared/`, and `infra/` are separate Dart packages. The
Flutter client is intentionally **not** a root Dart workspace member because
the TerraDart monorepo agent environment does not install Flutter; the Docker
build uses a Flutter builder image for the client stage and detaches
`shared/` + `server/` from the workspace so they can `pub get` standalone in
the image.

## The typed boundary contract

The Stack declares the values it owns and the file to generate:

```dart
stack
  ..addExport('PROJECT_ID', StringExport(projectId))
  ..addExport('REGION', StringExport(region))
  ..addExport('DATABASE_NAME', StringExport(databaseName))
  ..addExport('DATABASE_USER', StringExport(database.databaseUser))
  ..setAppExportsOutputPath('../shared/lib/generated/lunch_stack.app.dart');
```

Synth writes `LunchStackExports`, and the server imports it — the database
name and user are never re-typed:

```dart
import 'package:lunch_concierge_shared/generated/lunch_stack.app.dart';

// Point Genkit at Agent Platform for the infra-owned project/region.
vertexAI(
  projectId: LunchStackExports.PROJECT_ID,
  location: LunchStackExports.REGION,
);

// The postgres client dials the cloud-sql-proxy sidecar as the IAM user.
Endpoint(
  host: '127.0.0.1',
  port: 5432,
  database: LunchStackExports.DATABASE_NAME,
  username: LunchStackExports.DATABASE_USER,
);
```

The request/response schemas live once and are shared by both ends of the
wire:

```dart
// shared/lib/schema.dart
@Schema()
abstract class $LunchRequest {
  String get area;
  String get mood;
  int get budgetYen;
}

// client — Flutter calls the endpoint with the shared schema
defineRemoteAction<LunchRequest, LunchResponse, void, void>(
  url: '/api/lunch',
  inputSchema: LunchRequest.$schema,
  outputSchema: LunchResponse.$schema,
);

// server — the Genkit flow is defined with the same schema
ai.defineFlow(
  name: 'suggestLunch',
  inputSchema: LunchRequest.$schema,
  outputSchema: LunchResponse.$schema,
  fn: (input, _) async { /* ...call Gemini, persist, return... */ },
);
```

## Request flow

1. The browser hits the `run.app` URL and IAP redirects to a Google sign-in.
2. The Flutter client POSTs a `LunchRequest` to `/api/lunch`.
3. `genkit_shelf` routes it into the `suggestLunch` flow.
4. The flow calls Agent Platform (Gemini 2.5 Flash) and gets a schema-validated
   `LunchResponse`.
5. The response is saved to Cloud SQL through the `cloud-sql-proxy` sidecar
   (private IP, IAM auth) — a failure here is logged but does not break the
   suggestion.
6. The `LunchResponse` returns to the client and renders as lunch tickets.

## Deploy

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

When you are done, `terraform destroy` cleans up — the Cloud SQL instance and
Cloud Run service set `deletion_protection = false` explicitly. The main
running cost is the Cloud SQL `db-f1-micro` instance; Cloud Run idles at
min-instances 0, and the VPC / PSA range are free. (For the PSA teardown
gotcha, see the [`single-project-app`](../single-project-app/README.md) recipe
— the same private-services-access peering applies here.)

## Access control (IAP)

The Cloud Run service runs with IAP enabled: the `run.app` URL redirects to a
Google sign-in, and only `INVOKER_EMAIL` holds
`roles/iap.httpsResourceAccessor` (plus a direct `roles/run.invoker` grant as
a token-based fallback). The stack also grants `roles/run.invoker` to the IAP
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

### App-level IAP JWT checks (optional)

IAP at the edge is enough for the demo, but the shelf server can also verify
the `X-Goog-IAP-JWT-Assertion` header on `/api/*` as defense in depth.
The Stack does **not** wire this — set `IAP_AUDIENCE` on the Cloud Run
service yourself when you want it (the IAP OAuth Client ID; there is no
separate console "JWT audience" field):

- unset / empty → skip verification (local `dart run` keeps working)
- set → missing or invalid assertions on `/api/*` return `401`

`/health` and static Flutter assets are not gated by the JWT middleware.

The `google_iap_web_cloud_run_service_iam_member` grant uses a hand-rolled
`Resource` subclass (`infra/lib/src/iap_access.dart`) because the
`terradart_google` catalog has not curated IAP resources yet — it doubles as
an example of expressing an **uncurated** resource without leaving Dart.

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

If the grants are missing, the Genkit flow can still generate a lunch
response, but history persistence will fail and the server logs will show the
PostgreSQL error.
