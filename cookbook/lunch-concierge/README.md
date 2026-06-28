# Lunch Concierge

Lunch Concierge is a full-stack TerraDart cookbook recipe for showing how
Flutter Web, a Dart server, Genkit, Vertex AI, Cloud Run, and Cloud SQL can be
connected through Dart-authored infrastructure.

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
    - Genkit Dart + Vertex AI Gemini
    - postgres client

  cloud-sql-proxy sidecar
    - private IP
    - IAM DB authentication
    - localhost:5432
  |
  v
Cloud SQL PostgreSQL
  - private IP only
  - IAM DB authentication
```

TerraDart defines the Artifact Registry repository, Cloud Run service, Cloud
SQL instance/database/IAM user, VPC, Private Service Access, IAM grants, API
enablement, and generated app exports.

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
export GCP_PROJECT_ID=flutter-gakkai-10
export REGION=asia-northeast1
export IMAGE_URI="$REGION-docker.pkg.dev/$GCP_PROJECT_ID/lunch-concierge/app:demo"
export INVOKER_EMAIL="you@example.com"

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
