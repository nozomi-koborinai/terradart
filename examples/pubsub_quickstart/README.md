# Pub/Sub quickstart

The smallest end-to-end terradart example. Provisions a `google_pubsub_topic`, a `google_pubsub_subscription` (push mode), a `data.google_project` lookup (project number for the Pub/Sub service agent), and a `google_pubsub_topic_iam_member` — and exports the topic name as a typed Dart constant for a subscriber to import.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Pub/Sub API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/pubsub_quickstart/
├── lib/main.dart           # OrdersStack (topic + subscription + exports)
├── lib/subscriber_stub.dart # Imports generated constants (boundary demo)
├── bin/infra.dart          # Synth: stack.writeTo('tf-out')
├── lib/generated/          # (created on synth) orders_stack.app.dart
├── tf-out/                 # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
# 1. From repo root (workspace member):
dart pub get
cd examples/pubsub_quickstart && dart pub get

# 2. Set your GCP project:
export GCP_PROJECT_ID=YOUR-PROJECT-ID

# 3. Synth (writes tf-out/ and lib/generated/orders_stack.app.dart):
dart run bin/infra.dart

# 4. Verify the boundary stub analyzes:
dart analyze .

# 5. Apply with Terraform:
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- A Pub/Sub topic `orders-prod` with 7-day retention.
- A push subscription `orders-push` targeting `https://app.example.com/push` (replace with your real endpoint).
- An IAM grant of `roles/pubsub.publisher` to a publisher service account.
- Terraform outputs for computed IDs; Dart constant `OrdersStackExports.ORDERS_TOPIC_NAME` for the literal topic name.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "terraform": {
    "required_version": ">= 1.11.0",
    "required_providers": {
      "google": { "source": "hashicorp/google", "version": "~> 7.0" }
    }
  },
  "provider": { "google": [{ "project": "YOUR-PROJECT-ID", "region": "us-central1" }] },
  "resource": {
    "google_pubsub_topic": {
      "orders": { "name": "orders-prod", "message_retention_duration": "604800s" }
    }
  },
  "output": {
    "ORDERS_TOPIC_NAME": { "value": "orders-prod" },
    "ORDERS_TOPIC_ID": { "value": "${google_pubsub_topic.orders.id}" }
  }
}
```

The seam: `lib/generated/orders_stack.app.dart` contains `OrdersStackExports.ORDERS_TOPIC_NAME` — import it from app code (see `lib/subscriber_stub.dart`) instead of hand-typing `"orders-prod"`.

## Next steps

- See [iam_quickstart](../iam_quickstart/) for all four curated IAM resources at once.
- See [terradart.dev — Getting Started](https://terradart.dev/docs/getting-started/) for the full walkthrough.
