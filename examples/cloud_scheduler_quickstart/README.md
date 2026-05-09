# Cloud Scheduler quickstart

Provisions a `google_cloud_scheduler_job` with a Pub/Sub target. **The point of this example** is the cross-resource reference pattern -- the scheduler's `pubsub_target.topic_name` consumes `topic.id` (the fully-qualified resource path), not `topic.nameRef` or `topic.name`. Cloud Scheduler requires the full `projects/{project}/topics/{name}` form; passing only the bare name fails at `terraform apply`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Pub/Sub and Cloud Scheduler APIs enabled.

## Usage

```bash
dart pub get

# Edit lib/main.dart -- replace YOUR-PROJECT-ID with your real project.

dart run bin/infra.dart

cd tf-out
terraform init
terraform apply
```

## What gets created

- A Pub/Sub topic `nightly-cleanup`.
- A Cloud Scheduler job `nightly-cleanup-job` running at 03:00 Asia/Tokyo nightly.
- Retry config: 3 attempts, 5s..60s backoff.
- The job publishes the message `cleanup` (base64-encoded) to the topic on each tick.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_pubsub_topic": {
      "nightly_cleanup": { "name": "nightly-cleanup" }
    },
    "google_cloud_scheduler_job": {
      "nightly_job": {
        "name": "nightly-cleanup-job",
        "region": "us-central1",
        "schedule": "0 3 * * *",
        "time_zone": "Asia/Tokyo",
        "retry_config": {
          "retry_count": 3,
          "min_backoff_duration": "5s",
          "max_backoff_duration": "60s"
        },
        "pubsub_target": {
          "topic_name": "${google_pubsub_topic.nightly_cleanup.id}",
          "data": "Y2xlYW51cA=="
        }
      }
    }
  }
}
```

Notice `topic_name` interpolates `${...nightly_cleanup.id}` -- not `.name`. This is the correct full-path form Cloud Scheduler requires.

## Subscriber side

Firebase Functions for Dart does **not** currently expose a Pub/Sub trigger decorator. To consume the topic from a Dart subscriber, deploy an HTTP-fronted function and configure a Pub/Sub push subscription pointed at it. The seam pattern (typed `NIGHTLY_TOPIC_ID` constant exported to the subscriber) works regardless of the trigger surface.
