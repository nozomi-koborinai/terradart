# Cloud Functions Gen 2 quickstart

End-to-end terradart example for a Cloud Functions Gen 2 HTTP function with a dedicated source bucket and runtime service account.

## Before you apply

Stage a real function source zip in the source bucket before applying; synth does not produce one.

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with the Cloud Functions API, Cloud Build API, Cloud Run Admin API, and IAM API enabled, and credentials configured (`gcloud auth application-default login`).
- A `hello-http.zip` source archive next to `tf-out/` (the example references it as `./hello-http.zip`).

## Layout

```
examples/cloud_functions_quickstart/
├── lib/main.dart        # HttpFunctionStack: bucket + object + SA + function
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
export GCP_PROJECT_ID=your-project-id
terradart plan
terradart apply
```

## What gets created

- `google_storage_bucket.fn_source` -- a regional bucket (`<project>-fn-source`) in `asia-northeast1` with `force_destroy = true` for clean teardown and `uniform_bucket_level_access = true`.
- `google_storage_bucket_object.fn_source_zip` -- the source archive (`hello-http.zip`) uploaded into the bucket through the `.source(...)` variant of its body, a variant of the sealed `StorageBucketObjectBody`.
- `google_service_account.fn_runtime` -- a dedicated runtime SA (`hello-http-runtime@<project>.iam.gserviceaccount.com`).
- `google_cloudfunctions2_function.hello_http` -- a Python 3.11 HTTP-triggered function with:
  - A `Cloudfunctions2FunctionBuildConfig`: runtime `python311`, entry point `hello`, the `.storageSource(...)` variant for the source and the `.automaticUpdatePolicy(...)` variant for updates.
  - A `Cloudfunctions2FunctionServiceConfig`: `256M` of memory, a 60-second timeout and `.allowInternalAndGclb` ingress.
  - The runtime SA's email wired with `.of(runtimeSa)` as the function's service account.

The sealed build `source` keeps the `storage_source` / `repo_source` mutual exclusion honest at the type level: each `Cloudfunctions2FunctionBuildConfig.source` is exactly one of `.storageSource(...)` or `.repoSource(...)`.
