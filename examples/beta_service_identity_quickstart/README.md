# google-beta service identity quickstart

The smallest `terradart_google_beta` example: `GoogleProjectServiceIdentity` creates the Pub/Sub service agent of a project up front, so IAM grants to that agent never race its lazy creation. `google_project_service_identity` exists only in the `hashicorp/google-beta` provider, which is why it lives in `terradart_google_beta`. The identity is account metadata, so applying it costs nothing.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Pub/Sub API enabled and credentials configured (`gcloud auth application-default login`)

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=YOUR-PROJECT-ID
terradart synth          # writes tf-out/main.tf.json
terradart plan
terradart apply
```

## Next steps

- See [Google Cloud on terradart.dev](https://terradart.dev/docs/providers/google/) for when to reach for `terradart_google_beta`.
- See [`beta_leftover_quickstart`](../beta_leftover_quickstart/) for every other beta-only factory (synth and `terraform validate` only).
