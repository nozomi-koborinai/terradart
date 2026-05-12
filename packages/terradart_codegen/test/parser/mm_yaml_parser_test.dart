import 'dart:io';

import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:test/test.dart';

void main() {
  group('MmYamlParser', () {
    final yaml = File('test/fixtures/mm/Topic.yaml').readAsStringSync();

    test('top-level description is captured', () {
      final result = const MmYamlParser().parseString(yaml);
      expect(
        result.description,
        contains('named resource to which messages are sent'),
      );
    });

    test('immutable: true is mapped to forceNew via the snake_case key', () {
      final result = const MmYamlParser().parseString(yaml);
      expect(result.fieldOverrides['name']!.forceNew, isTrue);
      expect(result.fieldOverrides['kms_key_name']!.forceNew, isTrue);
      expect(result.fieldOverrides['project']?.forceNew ?? false, isFalse);
    });

    test('validation.regex / minLength / maxLength are surfaced', () {
      final result = const MmYamlParser().parseString(yaml);
      final c = result.fieldOverrides['name']!;
      expect(c.regex, r'^[a-zA-Z][a-zA-Z0-9._~%+-]{2,254}$');
      expect(c.minLength, 3);
      expect(c.maxLength, 255);
    });

    test('Enum properties surface enum_values in MM YAML order', () {
      final result = const MmYamlParser().parseString(yaml);
      // schema_settings is a nested object — its child fields are namespaced
      // with a dot separator: 'schema_settings.encoding'.
      final c = result.fieldOverrides['schema_settings.encoding']!;
      expect(c.enumValues, [
        'ENCODING_UNSPECIFIED',
        'JSON',
        'BINARY',
      ]);
    });

    test('empty YAML produces empty overrides', () {
      final result = const MmYamlParser().parseString('properties: []\n');
      expect(result.fieldOverrides, isEmpty);
      expect(result.description, isNull);
    });

    test('a missing properties key is treated as empty', () {
      final result = const MmYamlParser().parseString('name: Foo\n');
      expect(result.fieldOverrides, isEmpty);
    });
  });

  test('parses top-level `product:` field when present', () {
    final yaml = '''
description: Test resource.
product: pubsub
properties: []
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.product, 'pubsub');
  });

  test('product is null when absent', () {
    final yaml = '''
description: Test resource.
properties: []
''';
    final result = const MmYamlParser().parseString(yaml);
    expect(result.product, isNull);
  });
}
