// Regenerates the 2 wrap-promote L2 goldens with FixedClock(2026-01-01).
//
// Run from `packages/terradart_codegen/`:
//   dart run tool/freeze_wrap_promote_goldens.dart
//
// Idempotent: same inputs + FixedClock → byte-identical bytes.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_promote/wrap_promote_generator.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';

const _fixedDate = '2026-01-01T00:00:00.000Z';

const _scenarios = [
  (
    'google_synthetic_choice',
    'google_synthetic_choice_v7.schema.json',
    'google_synthetic_choice.yaml',
  ),
  (
    'google_pubsub_subscription',
    'google_pubsub_subscription_v7.schema.json',
    'google_pubsub_subscription.yaml',
  ),
];

void main() {
  final generator = WrapPromoteGenerator(
    clock: FixedClock(DateTime.parse(_fixedDate)),
  );

  for (final (terraformType, schemaFile, mmFile) in _scenarios) {
    final schemaSrc = File(p.join('test', 'fixtures', 'schema', schemaFile))
        .readAsStringSync();
    final ir = const SchemaJsonParser()
        .parseString(schemaSrc, providerVersion: '7.31.0');
    final def = ir.resources[terraformType];
    if (def == null) {
      stderr.writeln('Resource $terraformType not in $schemaFile.');
      exit(1);
    }
    final mmSrc =
        File(p.join('test', 'fixtures', 'mm', mmFile)).readAsStringSync();
    final mm = const MmYamlParser().parseString(mmSrc);

    final yaml = generator.generate(
      terraformType: terraformType,
      def: def,
      mm: mm,
    );

    final outPath = p.join(
      'test',
      'golden',
      'wrap_promote',
      '$terraformType.wrap_promote.expected.yaml.golden',
    );
    File(outPath).parent.createSync(recursive: true);
    File(outPath).writeAsStringSync(yaml);
    stdout.writeln('frozen: $outPath');
  }
}
