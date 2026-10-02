---
title: Outputs in client apps
description: Build a Flutter, Dart web or command-line client with the values Terraform knows only after apply — a URL, a bucket, a list of hosts — typed, from a define file the Stack declares, on every provider.
---

A client app needs values that exist only after `terraform apply`: the URL of the API it calls, the bucket it uploads to. TerraDart hands them over without a copied string and without tying the app's release to the apply. The Stack declares one more output, the **define file**; the client's build reads it from the applied state with `terraform output`, compiles it in with `--dart-define-from-file`, and reads each value with its type through the generated `<Stack>Outputs` reader.

It works the same on every provider package — Google Cloud, AWS, Cloudflare, Appwrite — because it lives on `Stack`, not on a provider.

## Declare the define file

`addDartDefineOutput()` adds a Terraform output, `dart_defines`, whose value is a JSON object with one string per non-sensitive output: the variable named after the output in SCREAMING_SNAKE_CASE, holding a `String` output as it is and any other type as JSON. These are the same variables `outputEnvironment()` passes to a server, so a client and a service read one set of names.

```dart
// lib/app_stack.dart
import 'package:terradart_google/cloud_run.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

final class AppStack extends Stack {
  AppStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId)],
        appExports: AppExports('lib/generated/app_stack.app.dart'),
      ) {
    final api = add(
      GoogleCloudRunV2Service(
        'api',
        name: .literal('app-api'),
        location: .literal('asia-northeast1'),
        template: CloudRunV2ServiceTemplate(
          containers: [
            .new(image: .literal('us-docker.pkg.dev/cloudrun/container/hello')),
          ],
        ),
      ),
    );
    final uploads = add(
      GoogleStorageBucket(
        'uploads',
        name: .literal('$projectId-uploads'),
        location: .literal('ASIA-NORTHEAST1'),
      ),
    );
    addOutput('api_url', api.uri, description: 'Base URL of the API.');
    addOutput('api_urls', api.urls);
    addOutput('uploads_bucket', uploads.name);
    addDartDefineOutput();
  }
}
```

```dart
// bin/infra.dart
import 'package:my_app/app_stack.dart';
import 'package:terradart_core/terradart_core.dart';

Future<void> main(List<String> args) =>
    runStack(args, () => AppStack(projectId: 'my-project'));
```

`terradart synth` writes it into `tf-out/main.tf.json` after the three outputs it carries:

```json
{
  "output": {
    "dart_defines": {
      "value": {
        "API_URL": "${google_cloud_run_v2_service.api.uri}",
        "API_URLS": "${jsonencode(google_cloud_run_v2_service.api.urls)}",
        "UPLOADS_BUCKET": "${google_storage_bucket.uploads.name}"
      }
    }
  }
}
```

The call can come before the outputs it carries: the define file is resolved at synth, from every output the Stack registered by then.

## Read the values in the client

`lib/generated/app_stack.app.dart` holds `AppStackOutputs`, one getter per non-sensitive output, typed like the output's value. Its `fromDartDefine` constructor reads the values compiled into the app, so the reader is a constant:

```dart
// lib/api_client.dart
import 'generated/app_stack.app.dart';

const outputs = AppStackOutputs.fromDartDefine();

Uri endpoint(String path) => Uri.parse(outputs.apiUrl).resolve(path);

List<Uri> mirrors() => [for (final url in outputs.apiUrls) Uri.parse(url)];

String uploadsBucket() => outputs.uploadsBucket;
```

Each getter reads when it is called. A getter whose define is not set throws a `StateError` that names the variable and the output (`Dart define API_URL (Terraform output "api_url") is not set.`), and so does one whose value is not JSON or not of the getter's type — so a client built without the file fails on the first value it reads, saying which one.

## Build the client

The client's pipeline reads the applied state; it never plans or applies. [`terradart apply`](/docs/cli/) writes the define file to `.terradart/dart_defines.json` after the apply, and `terradart outputs` writes it from the applied state alone, for a build job that may read the state but not change it. A Flutter build reads it as it is:

```bash
terradart outputs
flutter build web --dart-define-from-file=.terradart/dart_defines.json
flutter run --dart-define-from-file=.terradart/dart_defines.json
```

The app ships when it is ready, against whatever was applied last; a new apply reaches it on its next build.

### One define file per environment

With [environments](/docs/environments/), each environment's apply writes its own file, `.terradart/dart_defines.<env>.json`, and each client build names the one it is for:

```bash
terradart outputs --env stg
flutter run --dart-define-from-file=.terradart/dart_defines.stg.json
terradart outputs --env prod
flutter build web --dart-define-from-file=.terradart/dart_defines.prod.json
```

The generated reader is the same for every environment; only the values compiled in differ.

### Without the `terradart` command

`terraform output -json dart_defines` prints the same file:

```bash
terraform -chdir=tf-out output -json dart_defines > dart_defines.json
```

### Clients built with the `dart` command

The `dart` command takes one define per flag. Read a `String` output with `-raw` and any other with `-json`, which is the encoding the reader expects:

```bash
dart run -DAPI_URL="$(terraform -chdir=tf-out output -raw api_url)" -DAPI_URLS="$(terraform -chdir=tf-out output -json api_urls)" bin/client.dart
dart compile js -DAPI_URL="$(terraform -chdir=tf-out output -raw api_url)" -o web/main.dart.js web/main.dart
```

The [AWS Lambda quickstart](https://github.com/nozomi-koborinai/terradart/tree/main/examples/aws_lambda_quickstart) (`bin/client.dart`) calls its function URL this way.

## When the values exist

The two halves come at different times:

1. **Synth**, before any apply: `terradart synth` (or `dart run bin/infra.dart`) writes the reader class, `AppStackOutputs`. Its getters and their types are known, so the client compiles against it, but it holds no values.
2. **Apply**, then the client's build: the values exist only once Terraform has applied. `terradart apply` (or `terradart outputs` in the client's build) writes them to `.terradart/dart_defines.json` (`.terradart/dart_defines.<env>.json` with `--env`), and `flutter build web --dart-define-from-file=.terradart/dart_defines.json` (or `apk`, `ios`, ...) compiles them in. A build without them fails at the first read, with a `StateError` that names the variable and the command that writes it.

`terradart outputs` (like `terraform output`) reads the state from the Stack's backend: the local `terraform.tfstate`, or a remote bucket such as a `GcsBackend` or `S3Backend`. The machine or CI job that builds the client runs `init` against that backend — `terradart outputs` does — and needs read access to the state; it never needs permission to apply.

## One file per client

Give each client only what it reads. `only` picks outputs by name, and `name` names the output:

```dart
final uploads = add(
  GoogleStorageBucket(
    'uploads',
    name: .literal('my-project-uploads'),
    location: .literal('ASIA-NORTHEAST1'),
  ),
);
final reports = add(
  GoogleStorageBucket(
    'reports',
    name: .literal('my-project-reports'),
    location: .literal('ASIA-NORTHEAST1'),
  ),
);
addOutput('uploads_bucket', uploads.name);
addOutput('uploads_url', uploads.url);
addOutput('reports_bucket', reports.name);
addDartDefineOutput(
  name: 'mobile_defines',
  only: ['uploads_bucket', 'uploads_url'],
);
addDartDefineOutput(name: 'reports_defines', only: ['reports_bucket']);
```

`terraform output -json mobile_defines` is the mobile app's file and `terraform output -json reports_defines` the reporting tool's. Both build from the same generated reader; a getter of an output their file does not carry throws when called.

## Secrets stay out

Everything compiled into a client can be read by anyone who has the app, so the define file never carries a sensitive output: it is left out of the default set, and synth reports an `InvalidDartDefineOutput` issue when `only` names one. Synth reports the same issue when `only` names an output that is not registered, when two outputs share a variable, and when the file would carry no output at all.

Build a client from the define file, never from the plain `terraform output -json`: that prints every output of the Stack, the sensitive ones in plain text.

The rule is wider than Terraform: a dart-define is compiled into the app binary or its JavaScript, where anyone can extract it, so never pass a secret to a client that way, wherever it comes from — Secret Manager, a GitHub Actions secret, a sensitive output. A client gets only public values, such as an API URL or a Firebase web config, and work that needs a secret runs on a server:

- **A server reads secrets at runtime** from its secret store: a Cloud Run service through a secret environment reference (`source: .valueSource(.new(secretKeyRef: ...))` on `CloudRunV2ServiceEnv`), a Lambda function from AWS Secrets Manager with the SDK, under its execution role.
- **CI secrets are credentials for the pipeline** — reading the state, deploying — not values for the app.

## Servers and scripts

The same reader serves the other places an app runs:

| Where the app runs | How it gets the values | Reader |
| --- | --- | --- |
| A Flutter, web or CLI client | `--dart-define-from-file` with the define file, or `-D` per variable | `AppStackOutputs.fromDartDefine()` |
| A Cloud Run service or a function | its environment, set by the Stack with `outputEnvironment()` | `AppStackOutputs.fromEnvironment(Platform.environment)` |
| A script or test after apply | `terraform output -json` | `AppStackOutputs.fromTerraformJson(...)` |

See [How TerraDart works — the app boundary](/docs/how-it-works/#the-app-boundary-constants-and-outputs) for `addOutput`, `outputEnvironment()` and the constants a Stack knows at synth, which need no define at all.
