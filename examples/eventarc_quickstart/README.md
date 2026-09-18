# Eventarc quickstart

End-to-end terradart example for the Eventarc control plane beyond the
trigger: message bus → Google API source → enrollment, a partner channel, a
pipeline, and a Pub/Sub → HTTP trigger.

## Before you apply

The Eventarc Advanced bus and pipeline take about five minutes to create, and
the HTTP-endpoint trigger needs a network attachment that this stack does not
provision.

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out && terraform init -backend=false && terraform validate
```
