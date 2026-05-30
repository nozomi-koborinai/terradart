import 'dart:io';

import 'package:test/test.dart';

void main() {
  group('google_pubsub_schema class-doc derivation guard', () {
    test('override opts into derivation and drops the hand-written doc', () {
      final yaml = File(
        'lib/src/codegen/wrapper_overrides/yaml/google_pubsub_schema.yaml',
      ).readAsStringSync();
      expect(yaml, contains('deriveClassDoc: true'));
      expect(yaml, contains('curatedDoc:'));
      expect(yaml, isNot(contains('classDocComment:')));
    });

    test('generated wrapper shows the derived summary + curated example', () {
      final dart = File(
        '../terradart_google/lib/src/pubsub/google_pubsub_schema.dart',
      ).readAsStringSync();
      expect(
        dart,
        contains('/// Factory wrapper for `google_pubsub_schema`.'),
      );
      expect(
        dart,
        contains('/// A schema is a format that messages must follow,'),
      );
      // curated artisanal block preserved verbatim
      expect(dart, contains('/// Example (Avro schema for an order event):'));
      // dropped boilerplate (convergence-first)
      expect(dart, isNot(contains('/// Required identity:')));
      expect(dart, isNot(contains('Composition pattern:')));
    });
  });
}
