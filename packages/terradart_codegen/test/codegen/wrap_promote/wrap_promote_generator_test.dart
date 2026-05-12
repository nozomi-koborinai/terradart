import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_promote/wrap_promote_generator.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  group('WrapPromoteGenerator', () {
    test(
        'returns empty additions when MM has no exactly_one_of + no enum_values',
        () {
      // Minimal MM YAML: just description.
      final mm = const MmYamlParser().parseString('description: empty\n');
      // Use the smallest known schema fixture for a valid IR.
      final schemaSrc = File(p.join(
        'test',
        'fixtures',
        'schema',
        'google_pubsub_topic_v7.schema.json',
      )).readAsStringSync();
      final ir = const SchemaJsonParser()
          .parseString(schemaSrc, providerVersion: '7.31.0');
      final def = ir.resources['google_pubsub_topic']!;

      final generator = WrapPromoteGenerator(
        clock: FixedClock(DateTime.utc(2026, 1, 1)),
      );
      final out = generator.generate(
        terraformType: 'google_pubsub_topic',
        def: def,
        mm: mm,
      );
      // No exactly_one_of and no enum_values means the additions body is
      // empty (generator returns the empty string in that case).
      expect(out, isEmpty);
    });
  });

  group('WrapPromoteGenerator golden', () {
    test('L2-1: google_synthetic_choice matches golden', () {
      final yaml = _generate(
        terraformType: 'google_synthetic_choice',
        schemaFile: 'google_synthetic_choice_v7.schema.json',
        mmFile: 'google_synthetic_choice.yaml',
      );
      final golden = File(p.join(
        'test',
        'golden',
        'wrap_promote',
        'google_synthetic_choice.wrap_promote.expected.yaml.golden',
      )).readAsStringSync();
      expect(yaml, equals(golden));
    });

    test('L2-2: google_pubsub_subscription (enum_values) matches golden', () {
      final yaml = _generate(
        terraformType: 'google_pubsub_subscription',
        schemaFile: 'google_pubsub_subscription_v7.schema.json',
        mmFile: 'google_pubsub_subscription.yaml',
      );
      final golden = File(p.join(
        'test',
        'golden',
        'wrap_promote',
        'google_pubsub_subscription.wrap_promote.expected.yaml.golden',
      )).readAsStringSync();
      expect(yaml, equals(golden));
    });
  });
}

String _generate({
  required String terraformType,
  required String schemaFile,
  required String mmFile,
}) {
  final schemaSrc =
      File(p.join('test', 'fixtures', 'schema', schemaFile)).readAsStringSync();
  final ir = const SchemaJsonParser()
      .parseString(schemaSrc, providerVersion: '7.31.0');
  final def = ir.resources[terraformType]!;
  final mmSrc =
      File(p.join('test', 'fixtures', 'mm', mmFile)).readAsStringSync();
  final mm = const MmYamlParser().parseString(mmSrc);
  final generator = WrapPromoteGenerator(
    clock: FixedClock(DateTime.parse('2026-01-01T00:00:00.000Z')),
  );
  return generator.generate(
    terraformType: terraformType,
    def: def,
    mm: mm,
  );
}
