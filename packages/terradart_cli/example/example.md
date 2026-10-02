# Example

A TerraDart package whose `bin/infra.dart` calls `runStack` or `runEnvironments`:

```bash
dart pub global activate terradart_cli

terradart plan --env qa
terradart apply --env qa
flutter run --dart-define-from-file=.terradart/dart_defines.qa.json

# A client build job that may read the state but not change it:
terradart outputs --env prd
flutter build web --dart-define-from-file=.terradart/dart_defines.prd.json
```

To pin the version per project, `dart pub add --dev terradart_cli` and run each command as `dart run terradart_cli:terradart <command>`.

`terradart migrate` does not need a project. From any directory:

```bash
terradart migrate --dir infra --out infra_dart
cd infra_dart && dart pub get && terradart plan
```

See [The terradart command](https://terradart.dev/docs/cli/), [Environments](https://terradart.dev/docs/environments/) and [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/).
