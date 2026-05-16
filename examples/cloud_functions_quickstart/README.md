# Cloud Functions Gen 2 quickstart

End-to-end terradart example for a Cloud Functions Gen 2 HTTP function with a dedicated source bucket and runtime service account.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
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
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- `google_storage_bucket.fn_source` -- a regional bucket (`<project>-fn-source`) in `asia-northeast1` with `force_destroy = true` for clean teardown and `uniform_bucket_level_access = true`.
- `google_storage_bucket_object.fn_source_zip` -- the source archive (`hello-http.zip`) uploaded into the bucket via the sealed `BucketObjectFromSource` variant.
- `google_service_account.fn_runtime` -- a dedicated runtime SA (`hello-http-runtime@<project>.iam.gserviceaccount.com`).
- `google_cloudfunctions2_function.hello_http` -- a Python 3.11 HTTP-triggered function with:
  - `BuildConfig(runtime: 'python311', entryPoint: 'hello', source: StorageSource(...))`.
  - `ServiceConfig(availableMemory: '256M', timeoutSeconds: 60, ingressSettings: IngressSettings.allowInternalAndGclb, ...)`.
  - The runtime SA's email wired via `TfArg.ref(runtimeSa.email)`.

The sealed `SourceConfig` dispatch keeps the `storage_source` / `repo_source` mutual exclusion honest at the type level — each `BuildConfig.source` is exactly one of `StorageSource` or `RepoSource`.
