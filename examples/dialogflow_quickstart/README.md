# Dialogflow CX quickstart

End-to-end terradart example for:

- `google_dialogflow_sip_trunk`
- `google_dialogflow_conversation_profile` (Agent Assist metadata; no STT/TTS)
- `google_dialogflow_generator` (summarization generator; `MANUAL_CALL`)

## Before you apply

The SIP trunk needs a real carrier TLS peer certificate whose hostname matches `expected_hostname`; the placeholder fails at apply time.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with the Dialogflow API enabled

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
```

## What gets created

- `GoogleDialogflowSipTrunk` — regional SIP trunk in `europe-west3` with a placeholder carrier hostname
- `GoogleDialogflowConversationProfile` — global Agent Assist profile metadata (`deletion_policy=DELETE`)
- `GoogleDialogflowGenerator` — global summarization generator (`trigger_event=MANUAL_CALL`, version `4.0`)
