---
title: Appwrite
description: terradart_appwrite — the appwrite/appwrite provider as typed Dart, for the backend of a Flutter app.
---

[`terradart_appwrite`](https://pub.dev/packages/terradart_appwrite) wraps the official `appwrite/appwrite` provider — every resource and data source at its pinned version. A Flutter team on Appwrite can declare its project, databases, storage, functions and messaging in Dart, next to the app that uses them.

## Install

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.31.x
  terradart_appwrite: ^0.31.x
```

`AppwriteProvider` takes the endpoint and the project or organization, but no API key, so credentials never enter the synthesized JSON. Apply authenticates with `APPWRITE_API_KEY` (project resources) or `APPWRITE_ORGANIZATION_API_KEY` (organization resources).

## A backend for a Flutter app

```dart
// lib/backend_stack.dart
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/storage.dart';
import 'package:terradart_appwrite/tablesdb.dart';
import 'package:terradart_core/terradart_core.dart';

final class BackendStack extends Stack {
  BackendStack()
    : super(
        providers: [
          const AppwriteProvider(
            endpoint: 'https://cloud.appwrite.io/v1',
            projectId: 'my-project',
          ),
        ],
        appExports: AppExports('lib/generated/backend_stack.app.dart'),
      ) {
    final db = add(AppwriteTablesdb(localName: 'main', name: .literal('main')));
    final notes = add(AppwriteTablesdbTable(
      localName: 'notes',
      databaseId: db.ref, // only an AppwriteTablesdb fits here
      name: .literal('notes'),
      rowSecurity: .literal(true),
    ));
    final uploads = add(AppwriteStorageBucket(
      localName: 'uploads',
      name: .literal('uploads'),
      fileSecurity: .literal(true),
      maximumFileSize: .literal(10485760),
    ));

    addOutput('database_id', db.id);
    addOutput('notes_table_id', notes.id);
    addOutput('uploads_bucket_id', uploads.id);
  }
}
```

Appwrite assigns the IDs on create, so they are outputs: after `terraform apply`, `BackendStackOutputs.fromTerraformJson(...)` reads them from `terraform output -json` — in a build script that passes them to `flutter build` as `--dart-define`s, for example — with a typed getter per ID (`databaseId`, `notesTableId`, `uploadsBucketId`).

Inputs with a fixed value set are Dart enums, taken from the provider's validators. A sensitive input, such as a backup provider's secret key, is best passed as a Terraform variable (`addVariable` and `TfArg.variable`) so its value arrives at apply time rather than in the Dart source.

## Examples

- [`examples/appwrite_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/appwrite_quickstart) — every Appwrite factory in one Stack, with placeholder IDs to replace before applying.

## Reference

- [`terradart_appwrite` API docs](https://pub.dev/documentation/terradart_appwrite/latest/)
- [`lib/src/_catalog.g.dart`](https://github.com/nozomi-koborinai/terradart/blob/main/packages/terradart_appwrite/lib/src/_catalog.g.dart) — Terraform type → Dart class and import, for every factory
