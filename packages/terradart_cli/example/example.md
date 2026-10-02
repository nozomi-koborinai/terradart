# Example

A TerraDart package whose `bin/infra.dart` calls `runStack` or `runEnvironments`:

```bash
dart pub add --dev terradart_cli

dart run terradart_cli:terradart plan --env qa
dart run terradart_cli:terradart apply --env qa
flutter run --dart-define-from-file=.terradart/dart_defines.qa.json

# A client build job that may read the state but not change it:
dart run terradart_cli:terradart outputs --env prd
flutter build web --dart-define-from-file=.terradart/dart_defines.prd.json
```

`terradart migrate` does not need a project. From any directory:

```bash
dart pub global activate terradart_cli
terradart migrate --dir infra --out infra_dart
cd infra_dart && dart pub get && terradart plan
```

See [The terradart command](https://terradart.dev/docs/cli/) and [Migrating from HCL](https://terradart.dev/docs/migrate-from-hcl/).
