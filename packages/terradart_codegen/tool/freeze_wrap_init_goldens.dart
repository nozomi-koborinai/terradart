// Regenerates the 3 wrap-init L2 goldens with FixedClock(2026-01-01).
//
// Run from `packages/terradart_codegen/`:
//   dart run tool/freeze_wrap_init_goldens.dart
//
// Idempotent: same inputs + FixedClock → same bytes.
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_generator.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';

const _fixedDate = '2026-01-01T00:00:00.000Z';

const _scenarios = [
  (
    'google_pubsub_topic',
    'google_pubsub_topic_v7.schema.json',
    'google_pubsub_topic.yaml',
    WrapperOverrideKind.resource,
  ),
  (
    'google_project',
    'google_project_v7.schema.json',
    'google_project.yaml',
    WrapperOverrideKind.dataSource,
  ),
  (
    'google_synthetic_widget',
    'google_no_mm_resource_v7.schema.json',
    null,
    WrapperOverrideKind.resource,
  ),
];

void main() {
  final generator = WrapInitGenerator(
    clock: FixedClock(DateTime.parse(_fixedDate)),
    outputDirResolver: const OutputDirResolver(),
  );
  const emitter = WrapInitEmitter();

  for (final (terraformType, schemaFile, mmFile, kind) in _scenarios) {
    final schemaSrc = File(
      p.join('test', 'fixtures', 'schema', schemaFile),
    ).readAsStringSync();
    final ir = const SchemaJsonParser().parseString(
      schemaSrc,
      providerVersion: '7.31.0',
    );

    final def = kind == WrapperOverrideKind.resource
        ? ir.resources[terraformType]
        : ir.dataSources[terraformType];
    if (def == null) {
      stderr.writeln('Resource $terraformType not in $schemaFile.');
      exit(1);
    }

    MmResourceOverrides? mm;
    if (mmFile != null) {
      final mmSrc = File(
        p.join('test', 'fixtures', 'mm', mmFile),
      ).readAsStringSync();
      mm = const MmYamlParser().parseString(mmSrc);
    }

    final draft = generator.generate(
      terraformType: terraformType,
      def: def,
      kind: kind,
      mm: mm,
    );
    final yaml = emitter.emit(draft);

    final outPath = p.join(
      'test',
      'golden',
      'wrap_init',
      '$terraformType.wrap_init.expected.yaml.golden',
    );
    File(outPath).parent.createSync(recursive: true);
    File(outPath).writeAsStringSync(yaml);
    stdout.writeln('frozen: $outPath');
  }
}
