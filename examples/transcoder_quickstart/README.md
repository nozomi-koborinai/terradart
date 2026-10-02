# Transcoder job template quickstart

End-to-end terradart example for a Transcoder job template
(`google_transcoder_job_template`) with an SD H.264 + AAC → mp4 `config` —
the same shape as the provider `transcoder_job_template_basic` example
(no Cloud Storage input URI).

Creating the template does not transcode media and does not bill Transcoder
output-minute SKUs. A `google_transcoder_job` that runs the template is not
included (it needs a source video).

## Prerequisites

- Dart SDK >= 3.10
- The [`terradart` command](https://terradart.dev/docs/cli/): `dart pub global activate terradart_cli`. It brings its own OpenTofu, so there is no Terraform to install
- A GCP project with credentials configured (`gcloud auth application-default login`). APIs are enabled by the stack.

## Usage

```bash
dart pub get
cd examples/transcoder_quickstart && dart pub get
export GCP_PROJECT_ID=my-project-123
terradart plan
```
