@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_emitter.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_generator.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart'
    as registry;
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

void main() {
  test(
      'L4-f: wrap-init output passes YamlOverrideLoader for all 13 production schemas',
      () async {
    final schemaDir = Directory(p.join('test', 'fixtures', 'schema'));
    final entries = schemaDir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('_v7.schema.json'))
        .toList();

    // 13 known production resources + 1 synthetic = 14 fixtures total.
    expect(entries.length, greaterThanOrEqualTo(13));

    final generator = WrapInitGenerator(
      clock: FixedClock(DateTime.parse('2026-01-01T00:00:00.000Z')),
      outputDirResolver: const OutputDirResolver(),
    );
    const emitter = WrapInitEmitter();

    final tmpDir = await Directory.systemTemp.createTemp('phase4_loader_inv_');
    try {
      for (final f in entries) {
        final src = f.readAsStringSync();
        final ir = const SchemaJsonParser()
            .parseString(src, providerVersion: '7.31.0');
        // Pick the first resource OR data source in this fixture.
        final terraformType =
            ir.resources.keys.followedBy(ir.dataSources.keys).firstOrNull;
        if (terraformType == null) continue;
        final kind = ir.resources.containsKey(terraformType)
            ? WrapperOverrideKind.resource
            : WrapperOverrideKind.dataSource;
        final def =
            ir.resources[terraformType] ?? ir.dataSources[terraformType]!;

        final draft = generator.generate(
          terraformType: terraformType,
          def: def,
          kind: kind,
          mm: null,
        );
        final yaml = emitter.emit(draft);
        File(p.join(tmpDir.path, '$terraformType.yaml'))
            .writeAsStringSync(yaml);
      }

      // Loader must read every emitted yaml without raising.
      expect(() {
        registry.loadWrapperOverrides(rootDir: tmpDir.path);
      }, returnsNormally);
    } finally {
      await tmpDir.delete(recursive: true);
    }
  });
}
