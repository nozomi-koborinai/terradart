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

    test('generated wrapper exposes the derived TerraformEnum', () {
      // Relative path assumes cwd is the package dir, which `dart test` provides.
      final dart = File(
        '../terradart_google/lib/src/pubsub/google_pubsub_schema.dart',
      ).readAsStringSync();
      expect(
          dart, contains('enum PubsubSchemaType implements TerraformEnum {'));
      expect(dart, contains("typeUnspecified('TYPE_UNSPECIFIED'),"));
      expect(dart, contains('final String terraformValue;'));
    });
  });
}
