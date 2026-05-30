import 'dart:io';

import 'package:test/test.dart';

void main() {
  group('google_pubsub_schema output-getter derivation guard', () {
    test('override opts into derivation and has no hand-written getters', () {
      final yaml = File(
        'lib/src/codegen/wrapper_overrides/yaml/google_pubsub_schema.yaml',
      ).readAsStringSync();
      expect(yaml, contains('deriveOutputGetters: true'));
      expect(yaml, isNot(contains('extraGetters:')));
    });

    test('generated wrapper exposes the derived getters', () {
      final dart = File(
        '../terradart_google/lib/src/pubsub/google_pubsub_schema.dart',
      ).readAsStringSync();
      expect(
        dart,
        contains(
          "TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');",
        ),
      );
      expect(
        dart,
        contains("TfRef<String> get id => TfRef.attribute<String>(this, 'id');"),
      );
      expect(dart, contains('/// Reference to `name` attribute.'));
    });
  });
}
