# Flutter client quickstart

A small GCP stack and a Flutter app that reads its outputs with types.

The stack is a Cloud Run hello service and a Cloud Storage bucket, one copy per environment. The service URL and the bucket name exist only after apply. `addDartDefineOutput()` declares the define file that carries them, and synth writes the reader `FlutterClientStackOutputs` into the app.

## When the values exist

1. **Synth.** `terradart synth --env dev` writes `FlutterClientStackOutputs`. Its getters and their types are known, so the app compiles against it, but it holds no values.
2. **Apply, then the app's build.** The values exist only after `terradart apply --env dev`. That command reads them from the applied state — the environment's local state, or a remote backend — and writes `.terradart/dart_defines.dev.json`. `flutter run --dart-define-from-file=.terradart/dart_defines.dev.json` compiles them in. A build without the file fails at the first read, with a `StateError` that names the variable.

A later build that must not change infrastructure uses `terradart outputs --env dev`. It reads the same state and writes the same file.

## Secrets stay out of the client

The define file carries non-sensitive outputs only. A sensitive output is left out, and synth rejects a define file that names one. A dart-define is compiled into the app binary, where anyone who has the app can read it, so a secret — an API key, a database password — never goes into the client. The values here are public: a URL and a bucket name.

## Layout

```
examples/flutter_client_quickstart/
├── lib/env.dart            # Env.dev / Env.prod
├── lib/main.dart           # FlutterClientStack
├── bin/infra.dart          # runEnvironments
├── app/                    # Flutter app (not a workspace member)
│   ├── lib/main.dart       # FlutterClientStackOutputs.fromDartDefine()
│   └── lib/generated/      # written by synth
└── tf-out/<env>/           # written by synth
```

`app/` depends on the Flutter SDK and is not in the Dart workspace, so `dart pub get` at the repo root does not resolve it.

## Prerequisites

- Dart SDK >= 3.10
- Flutter SDK, only to run the app
- A GCP project with the Cloud Run and Cloud Storage APIs enabled, and credentials (`gcloud auth application-default login`). Synth needs the project id and no credentials.

## Usage

From this directory:

```bash
dart pub get
export GCP_PROJECT_ID=YOUR-PROJECT-ID
dart pub global activate terradart_cli

terradart synth --env dev
terradart plan --env dev
terradart apply --env dev
terradart outputs --env dev
```

`terradart apply --env dev` synthesizes `tf-out/dev`, applies it, and writes `.terradart/dart_defines.dev.json`. `terradart outputs --env dev` writes that file from the applied state without planning or applying — the command a client's build job runs.

Then, from `app/`:

```bash
flutter run --dart-define-from-file=../.terradart/dart_defines.dev.json
```

`prod` is the same shape: `terradart apply --env prod`, then `flutter run --dart-define-from-file=../.terradart/dart_defines.prod.json`. The reader class is one file for both; the define file supplies that environment's values.

## What the app reads

| Output | Dart | Define |
| --- | --- | --- |
| `api_url` | `String get apiUrl` | `API_URL` |
| `api_urls` | `List<String> get apiUrls` | `API_URLS` (JSON) |
| `uploads_bucket` | `String get uploadsBucket` | `UPLOADS_BUCKET` |

```dart
const outputs = FlutterClientStackOutputs.fromDartDefine();

Uri endpoint(String path) => Uri.parse(outputs.apiUrl).resolve(path);
```

See [Outputs in client apps](https://terradart.dev/docs/client-outputs/).
