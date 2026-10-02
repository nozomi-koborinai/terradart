---
title: Appwrite
description: terradart_appwrite — the appwrite/appwrite provider as typed Dart, for the backend of a Flutter app.
---

[`terradart_appwrite`](https://pub.dev/packages/terradart_appwrite) wraps the official `appwrite/appwrite` provider — every resource and data source at its pinned version. A Flutter team on Appwrite can declare its project, databases, storage, functions and messaging in Dart, next to the app that uses them.

## Install

```yaml
# pubspec.yaml
dependencies:
  terradart_core: ^0.33.x
  terradart_appwrite: ^0.33.x
```

`AppwriteProvider` takes the endpoint and the project or organization, but no API key, so credentials never enter the synthesized JSON. Apply authenticates with `APPWRITE_API_KEY` (project resources) or `APPWRITE_ORGANIZATION_API_KEY` (organization resources).

## A backend for a Flutter app

```dart
// lib/backend_stack.dart
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/storage.dart';
import 'package:terradart_appwrite/tablesdb.dart';

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
    final db = add(AppwriteTablesdb('main', name: .literal('main')));
    final notes = add(AppwriteTablesdbTable(
      'notes',
      databaseId: db.ref, // only an AppwriteTablesdb fits here
      name: .literal('notes'),
      rowSecurity: .literal(true),
    ));
    final uploads = add(AppwriteStorageBucket(
      'uploads',
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

Appwrite assigns the IDs on create, so they are outputs, each with a typed getter on `BackendStackOutputs` (`databaseId`, `notesTableId`, `uploadsBucketId`). For the Flutter app, add `addDartDefineOutput()` to the Stack: `terradart apply` (or `terradart outputs`) then writes the define file `flutter build --dart-define-from-file` reads, and `const BackendStackOutputs.fromDartDefine()` reads the IDs in the app — see [Outputs in client apps](/docs/client-outputs/). A script reads them from `terraform output -json` with `BackendStackOutputs.fromTerraformJson(...)`.

Who may read or change a bucket, file, table or row is a list of `AppwritePermission` (from `package:terradart_appwrite/auth.dart`), one per action and role, so a misspelled role does not compile:

```dart
// lib/uploads_stack.dart
import 'package:terradart_appwrite/auth.dart';
import 'package:terradart_appwrite/provider.dart';
import 'package:terradart_appwrite/storage.dart';

final class UploadsStack extends Stack {
  UploadsStack()
    : super(
        providers: [
          const AppwriteProvider(
            endpoint: 'https://cloud.appwrite.io/v1',
            projectId: 'my-project',
          ),
        ],
      ) {
    final editors = add(
      AppwriteAuthTeam('editors', name: .literal('Editors')),
    );
    add(AppwriteStorageBucket(
      'uploads',
      name: .literal('uploads'),
      permissions: .literal([
        .read(.any),
        .create(.users(verified: true)),
        .write(.team(editors.ref, role: 'owner')),
      ]),
    ));
  }
}
```

It synthesizes to the provider's strings (`read("any")`, `write("team:${appwrite_auth_team.editors.id}/owner")`). The roles are `.any`, `.guests`, `.users()`, `.user(user.ref)`, `.team(team.ref)`, `.member(id)` and `.label(name)`; `.literal('read("any")')` takes a permission string as it is.

Inputs with a fixed value set are Dart enums, taken from the provider's validators. A sensitive input, such as a backup provider's secret key, is best passed as a Terraform variable (`final key = variable<String>('backup_secret_key', sensitive: true)`, then `secretKey: key`) so its value arrives at apply time rather than in the Dart source.

## Examples

- [`examples/appwrite_quickstart`](https://github.com/nozomi-koborinai/terradart/tree/main/examples/appwrite_quickstart) — every Appwrite factory in one Stack, with placeholder IDs to replace before applying.

## Reference

- [`terradart_appwrite` API docs](https://pub.dev/documentation/terradart_appwrite/latest/)
- [Appwrite coverage](/docs/coverage/appwrite/) — every factory, its barrel and its example
- [`lib/src/_catalog.g.dart`](https://github.com/nozomi-koborinai/terradart/blob/main/packages/terradart_appwrite/lib/src/_catalog.g.dart) — Terraform type → Dart class and import, for every factory
