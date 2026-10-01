# IAM quickstart (all four `_iam_member` resources)

Demonstrates each of the curated `_iam_member` resources in a single Stack, plus the `google_service_account` they bind to:

- `google_service_account`
- `google_pubsub_topic_iam_member`
- `google_pubsub_subscription_iam_member`
- `google_cloud_tasks_queue_iam_member`
- `google_secret_manager_secret_iam_member`
- `google_os_login_ssh_public_key` (dummy `ssh-ed25519` on the demo SA; no VM)
- `google_workload_identity_service_agent` (mint Pub/Sub service agents; destroy drops state)
- `google_iam_oauth_client` (Workforce OAuth client metadata; `PUBLIC_CLIENT`, no secret)

Each IAM resource has a slightly different identity surface; the factory takes the parent itself and emits the right attributes from it:

| Resource | Identity attribute(s) | terradart argument |
|---|---|---|
| `google_pubsub_topic_iam_member` | `topic` (name) | `topic: topic.ref` |
| `google_pubsub_subscription_iam_member` | `subscription` (name) | `subscription: subscription.ref` |
| `google_cloud_tasks_queue_iam_member` | `name` + `location` | `queue: queue.ref` |
| `google_secret_manager_secret_iam_member` | `secret_id` | `secret: secret.ref` |

Each grant also carries the parent's `project`, read off the parent, so it cannot drift from the resource it names.

The `member` argument on every `_iam_member` is `sa.principal` -- the `IamPrincipal` that reads the `serviceAccount:<email>` `member` attribute of `GoogleServiceAccount`. No manual `'serviceAccount:' + email` concatenation, and renaming the `accountId` re-flows through every binding automatically.

## Before you apply

Workload identity pools and providers are soft-deleted for 30 days, so applying again with the same pool id after a destroy fails with 409 until the old pool is undeleted or purged. The workforce pool resources need an organization and use a placeholder id.

## Prerequisites

- Dart SDK >= 3.10
- Terraform CLI >= 1.11.0
- A GCP project with Pub/Sub, Cloud Tasks, Secret Manager, and IAM APIs enabled.

## Usage

```bash
dart pub get

# Edit bin/infra.dart -- replace YOUR-PROJECT-ID with your project ID.

dart run bin/infra.dart

cd tf-out
terraform init
terraform apply
```

## What gets created

- 1 service account (`google_service_account.demo`).
- 4 base resources: a topic, a subscription, a Cloud Tasks queue, a Secret Manager secret.
- 4 IAM member grants -- one per resource type, all going to the SA above.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_service_account": {
      "demo": {
        "account_id": "demo",
        "display_name": "IAM quickstart demo SA"
      }
    },
    "google_pubsub_topic_iam_member": {
      "topic_publisher": {
        "topic": "${google_pubsub_topic.demo.name}",
        "role": "roles/pubsub.publisher",
        "member": "${google_service_account.demo.member}",
        "project": "${google_pubsub_topic.demo.project}"
      }
    },
    "google_pubsub_subscription_iam_member": {
      "sub_subscriber": {
        "subscription": "${google_pubsub_subscription.demo_sub.name}",
        "role": "roles/pubsub.subscriber",
        "member": "${google_service_account.demo.member}",
        "project": "${google_pubsub_subscription.demo_sub.project}"
      }
    },
    "google_cloud_tasks_queue_iam_member": {
      "queue_enqueuer": {
        "name": "${google_cloud_tasks_queue.demo_queue.name}",
        "location": "${google_cloud_tasks_queue.demo_queue.location}",
        "role": "roles/cloudtasks.enqueuer",
        "member": "${google_service_account.demo.member}",
        "project": "${google_cloud_tasks_queue.demo_queue.project}"
      }
    },
    "google_secret_manager_secret_iam_member": {
      "secret_accessor": {
        "secret_id": "${google_secret_manager_secret.demo_secret.secret_id}",
        "role": "roles/secretmanager.secretAccessor",
        "member": "${google_service_account.demo.member}",
        "project": "${google_secret_manager_secret.demo_secret.project}"
      }
    }
  }
}
```

## A note on `_binding` vs `_member` vs `_policy`

Terraform exposes three IAM patterns per resource:

- `_iam_policy` -- **authoritative** for the entire IAM policy. Avoid: one mis-write wipes other tools' bindings.
- `_iam_binding` -- authoritative for a single role; replaces all members for that role. Out of scope for v0.0.x.
- `_iam_member` -- **additive** for a single role + member. **terradart_google standardizes on this** because it composes safely with bindings written by other tools (gcloud, the console, peer Terraform stacks).

`_iam_member` is the curated choice because additive semantics minimize the blast radius of a misapplied stack. `_iam_binding` and `_iam_policy` are not in the curated surface — open an issue to request curation.
