# Pub/Sub quickstart

The smallest end-to-end terradart example. Provisions a `google_pubsub_topic`, a `google_pubsub_subscription` (push mode), and a `google_pubsub_topic_iam_member` -- and exports the topic's resource ID as a typed Dart constant for a subscriber to import.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Pub/Sub API enabled and credentials configured (`gcloud auth application-default login`).

## Layout

```
examples/pubsub_quickstart/
├── lib/main.dart        # Defines OrdersStack (topic + subscription + IAM)
├── bin/infra.dart       # Synth entry point: stack.synth(outDir: 'tf-out')
├── lib/generated/       # (created on synth) orders_stack.app.dart -- typed export
├── tf-out/              # (created on synth) main.tf.json -- terraform input
└── pubspec.yaml         # path-deps to ../../packages/terradart{,_google}
```

## Usage

```bash
# 1. Resolve deps (uses path: deps to the workspace siblings).
dart pub get

# 2. Edit `lib/main.dart` -- replace `YOUR-PROJECT-ID` with your GCP project.

# 3. Synth:
dart run bin/infra.dart

# 4. Apply with Terraform:
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- A Pub/Sub topic `orders-prod` with 7-day retention.
- A push subscription `orders-push` targeting `https://app.example.com/push` (replace with your real endpoint).
- An IAM grant of `roles/pubsub.publisher` to a publisher service account.

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
    },
    "google_pubsub_subscription": {
      "orders_push": {
        "name": "orders-push",
        "topic": "${google_pubsub_topic.orders.id}",
        "ack_deadline_seconds": 60,
        "push_config": { "push_endpoint": "https://app.example.com/push" }
      }
    },
    "google_pubsub_topic_iam_member": {
      "orders_publisher": {
        "topic": "${google_pubsub_topic.orders.name}",
        "role": "roles/pubsub.publisher",
        "member": "serviceAccount:publisher@YOUR-PROJECT-ID.iam.gserviceaccount.com"
      }
    }
  },
  "output": {
    "ORDERS_TOPIC_ID": {
      "value": "${google_pubsub_topic.orders.id}"
    }
  }
}
```

The seam: `lib/generated/orders_stack.app.dart` will contain `OrdersStackExports.ORDERS_TOPIC_ID` -- a typed Dart constant that a Firebase Functions Dart subscriber imports directly. No `terraform output` JSON parsing needed.

## Next steps

- See [iam_quickstart](../iam_quickstart/) for all four Tier 1 IAM resources at once.
