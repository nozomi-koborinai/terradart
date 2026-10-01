import 'dart:io';

import 'package:test/test.dart';

void main() {
  group('google_pubsub_schema enum derivation guard', () {
    test('override opts into derivation and has no hand-written enum', () {
      final yaml = File(
        'lib/src/codegen/wrapper_overrides/yaml/google_pubsub_schema.yaml',
      ).readAsStringSync();
      expect(yaml, contains('deriveEnums: true'));
      expect(yaml, isNot(contains('enum PubsubSchemaType')));
    });

    test('generated wrapper exposes the derived enum', () {
      // Relative path assumes cwd is the package dir, which `dart test` provides.
      final dart = File(
        '../terradart_google/lib/src/pubsub/google_pubsub_schema.dart',
      ).readAsStringSync();
      expect(
        dart,
        contains('extension type const PubsubSchemaType._(TfArg<String> _)'),
      );
      expect(dart, contains("TfArgLiteral('TYPE_UNSPECIFIED')"));
      expect(dart, contains('static const List<PubsubSchemaType> values'));
    });
  });
}
