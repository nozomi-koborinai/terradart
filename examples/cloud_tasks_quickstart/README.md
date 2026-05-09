# Cloud Tasks quickstart

Provisions a `google_cloud_tasks_queue` with rate-limit + retry config and grants `roles/cloudtasks.enqueuer` to a service account via `google_cloud_tasks_queue_iam_member`.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Cloud Tasks API enabled.

## Usage

```bash
dart pub get

# Edit lib/main.dart -- replace YOUR-PROJECT-ID with your real project.

dart run bin/infra.dart        # emits tf-out/main.tf.json + generated Dart constants

cd tf-out
terraform init
terraform apply
```

## What gets created

- A Cloud Tasks queue `email-jobs` in `us-central1` with:
  - rate limits: 10 concurrent dispatches, 5 dispatches per second
  - retry: 5 attempts, 5s..300s exponential backoff (3 doublings)
- An IAM grant of `roles/cloudtasks.enqueuer` to the enqueuer service account.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_cloud_tasks_queue": {
      "email_jobs": {
        "name": "email-jobs",
        "location": "us-central1",
        "rate_limits": {
          "max_concurrent_dispatches": 10,
          "max_dispatches_per_second": 5
        },
        "retry_config": {
          "max_attempts": 5,
          "min_backoff": "5s",
          "max_backoff": "300s",
          "max_doublings": 3
        }
      }
    },
    "google_cloud_tasks_queue_iam_member": {
      "email_jobs_enqueuer": {
        "name": "${google_cloud_tasks_queue.email_jobs.name}",
        "location": "${google_cloud_tasks_queue.email_jobs.location}",
        "role": "roles/cloudtasks.enqueuer",
        "member": "serviceAccount:enqueuer@YOUR-PROJECT-ID.iam.gserviceaccount.com"
      }
    }
  }
}
```

## Why `_iam_member` (and not `_iam_binding`)?

terradart's Tier 1 surface uses **additive** `_iam_member` resources only -- they compose safely with bindings written by other tools (gcloud, the console, peer Terraform stacks). See [iam_quickstart](../iam_quickstart/) for the full discussion.

## Note on Cloud Tasks IAM identity

`google_cloud_tasks_queue_iam_member` is identified by **`name + location`** (not the resource `id`). The factory exposes both as typed `TfRef` getters: `queue.nameRef`, `queue.locationRef`.
