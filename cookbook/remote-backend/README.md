> Part of the [TerraDart cookbook](../README.md). Library: [terradart](https://github.com/nozomi-koborinai/terradart).
>
> **Status:** Last applied end to end on terradart v0.11.0, when recipes still ran `terraform` directly; the steps below use the `terradart` command. Stage 0 bucket apply + destroy cycle confirmed end-to-end via the synth-emitted local backend. See [FRICTIONS.md](./FRICTIONS.md) for dogfood findings.

# remote-backend

GCS-backed remote state, declared in Dart. Demonstrates the canonical workflow:

1. Apply this recipe with a **local backend** → creates the GCS bucket that will hold remote state.
2. Switch the Stack to `GcsBackend` in that bucket and move its own state there.
3. Point other recipes (e.g. `single-project-app`) at the same bucket with their own `GcsBackend` prefix.

Pattern demonstrated: **introduce GCS remote state to a previously local Stack**. The bucket itself is intentionally a separate (minimal) Stack so that destroying app-level resources never touches the state container.

The backend is part of the Stack, so switching it is a Dart change:

```dart
// lib/state_stack.dart
import 'package:terradart_google/provider.dart';

final class StateStack extends Stack {
  StateStack({String? stateBucket})
    : super(
        providers: [GoogleProvider(project: 'my-project')],
        backend: switch (stateBucket) {
          null => const LocalBackend(),
          final bucket => GcsBackend(bucket: bucket, prefix: 'remote-backend'),
        },
      );
}
```

## Run (Stage 0 — create the bucket with a local backend)

Prerequisites: `gcloud auth application-default login`, and the [`terradart` command](https://terradart.dev/docs/cli/) (`dart pub global activate terradart_cli`).

```bash
export GCP_PROJECT_ID=terradart-validate
dart pub get
terradart plan
terradart apply
gcloud storage ls --project terradart-validate
```

The plan adds one resource, `google_storage_bucket.tfstate`, named `<GCP_PROJECT_ID>-tfstate`; set `BUCKET_NAME` to choose another name.

## Move the Stack's own state into the bucket

Setting `STATE_BUCKET` makes the Stack synthesize `GcsBackend(bucket: ..., prefix: 'remote-backend')` instead of `LocalBackend()`. The state then has to move once, with the engine's `init -migrate-state`. The `terradart` command has no step for moving state, so this one calls the engine directly; `terradart engine` prints the engine `terradart` runs, so no separate install is needed:

1. **(One-time setup)** Ensure your ADC quota project matches the bucket's GCP project, otherwise the GCS backend lookup hits a confusing 404:

   ```bash
   gcloud auth application-default set-quota-project terradart-validate
   ```

   Or, per session, `export GOOGLE_CLOUD_PROJECT=terradart-validate`.

2. Synthesize with the new backend and move the state. When prompted, type `yes` to copy the local state to GCS:

   ```bash
   export STATE_BUCKET=terradart-validate-tfstate
   terradart synth
   "$(terradart engine)" -chdir=tf-out init -migrate-state
   ```

3. Confirm: `gcloud storage ls -r gs://terradart-validate-tfstate/remote-backend/` shows `default.tfstate`, and `terradart plan` reports no changes.

Keep `STATE_BUCKET` set from now on: without it the Stack synthesizes the local backend again.

## Move `single-project-app` state into the bucket

In `cookbook/single-project-app/lib/main.dart`, replace the Stack's backend:

| Before | After |
| --- | --- |
| `backend: const LocalBackend(),` | `backend: const GcsBackend(bucket: 'terradart-validate-tfstate', prefix: 'single-project-app'),` |

Then, in `cookbook/single-project-app/`:

```bash
terradart synth
"$(terradart engine)" -chdir=tf-out init -migrate-state   # not a terradart command; see above
```

The 28-resource state moves into GCS. The same ADC quota project gotcha applies: if you see a 404 "project not found" on init, set the quota project as above before retrying.

To keep each environment's state apart, give each its own bucket or prefix — see [Environments](https://terradart.dev/docs/environments/).

## Cost notes

A regional GCS bucket with versioning + a few KB of state files costs essentially zero (~$0.02/month). Safe to leave long-lived.

## When to destroy

The state bucket is long-lived by design. `terradart destroy` on this recipe should be **manual / deliberate** (e.g., when retiring the GCP project entirely), and it cannot delete the bucket that holds its own state: move the state back to a local file first (unset `STATE_BUCKET`, `terradart synth`, then `"$(terradart engine)" -chdir=tf-out init -migrate-state`, the same direct engine call as above). The recipe's `force_destroy = false` ensures versioned objects block accidental deletion.
