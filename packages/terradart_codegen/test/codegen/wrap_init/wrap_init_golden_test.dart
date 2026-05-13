import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/providers/google_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_generator.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  const rules = GoogleProviderRules();
  final generator = WrapInitGenerator(
    clock: FixedClock(DateTime.parse('2026-01-01T00:00:00.000Z')),
    outputDirResolver: OutputDirResolver(aliases: rules.outputDirAliases),
    providerRules: rules,
  );
  const emitter = WrapInitEmitter();

  group('WrapInitEmitter golden', () {
    test('L2-1: google_pubsub_topic with MM YAML matches golden', () {
      final yaml = _generate(
        terraformType: 'google_pubsub_topic',
        schemaFile: 'google_pubsub_topic_v7.schema.json',
        mmFile: 'google_pubsub_topic.yaml',
        kind: WrapperOverrideKind.resource,
        generator: generator,
        emitter: emitter,
      );
      final golden = File(
        p.join(
          'test',
          'golden',
          'wrap_init',
          'google_pubsub_topic.wrap_init.expected.yaml.golden',
        ),
      ).readAsStringSync();
      expect(yaml, equals(golden));
    });

    test('L2-2: google_project data source matches golden', () {
      final yaml = _generate(
        terraformType: 'google_project',
        schemaFile: 'google_project_v7.schema.json',
        mmFile: 'google_project.yaml',
        kind: WrapperOverrideKind.dataSource,
        generator: generator,
        emitter: emitter,
      );
      final golden = File(
        p.join(
          'test',
          'golden',
          'wrap_init',
          'google_project.wrap_init.expected.yaml.golden',
        ),
      ).readAsStringSync();
      expect(yaml, equals(golden));
    });

    test(
      'L2-3: google_synthetic_widget (no MM YAML, tier-2/3 fallback) matches golden',
      () {
        final yaml = _generate(
          terraformType: 'google_synthetic_widget',
          schemaFile: 'google_no_mm_resource_v7.schema.json',
          mmFile: null,
          kind: WrapperOverrideKind.resource,
          generator: generator,
          emitter: emitter,
        );
        final golden = File(
          p.join(
            'test',
            'golden',
            'wrap_init',
            'google_synthetic_widget.wrap_init.expected.yaml.golden',
          ),
        ).readAsStringSync();
        expect(yaml, equals(golden));
      },
    );
  });
}

String _generate({
  required String terraformType,
  required String schemaFile,
  required String? mmFile,
  required WrapperOverrideKind kind,
  required WrapInitGenerator generator,
  required WrapInitEmitter emitter,
}) {
  final schemaSrc = File(
    p.join('test', 'fixtures', 'schema', schemaFile),
  ).readAsStringSync();
  final ir = const SchemaJsonParser().parseString(
    schemaSrc,
    providerVersion: '7.31.0',
  );
  final def = kind == WrapperOverrideKind.resource
      ? ir.resources[terraformType]!
      : ir.dataSources[terraformType]!;
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
  return emitter.emit(draft);
}
