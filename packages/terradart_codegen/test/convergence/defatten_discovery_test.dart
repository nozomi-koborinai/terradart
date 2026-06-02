@Tags(['convergence'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/ir/resource_def.dart';
import 'package:terradart_codegen/src/parser/ir_merger.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

const _overrideRoot = 'lib/src/codegen/wrapper_overrides/yaml';
const _schemaPath = 'test/fixtures/wrap/source/schema.json';
const _mmDir = 'test/fixtures/wrap/source/mm';

typedef _Setup = ({
  Map<String, ResourceDef> resources,
  LoadedOverrides loaded,
});

_Setup _setup() {
  final schemaSrc = File(_schemaPath).readAsStringSync();
  final baseIr = const SchemaJsonParser().parseString(schemaSrc);

  final mm = <String, MmResourceOverrides>{};
  final mmDirRef = Directory(_mmDir);
  if (mmDirRef.existsSync()) {
    for (final file in mmDirRef.listSync().whereType<File>().where(
          (f) => f.path.endsWith('.yaml'),
        )) {
      final key = p.basenameWithoutExtension(file.path);
      mm[key] = const MmYamlParser().parseString(file.readAsStringSync());
    }
  }

  final ir = mm.isEmpty
      ? baseIr
      : const IrMerger().merge(base: baseIr, overrides: mm);
  final loaded = loadWrapperOverrides(rootDir: _overrideRoot);
  return (resources: ir.resources, loaded: loaded);
}

void main() {
  // -------------------------------------------------------------------------
  // Task 1 — harness loads overrides and IR
  // -------------------------------------------------------------------------
  test('discovery harness loads overrides and IR', () {
    final result = _setup();
    expect(result.loaded.resources, isNotEmpty,
        reason: 'loadWrapperOverrides must return at least one resource entry');
    expect(result.resources, isNotEmpty,
        reason: 'merged IR must contain at least one resource');
  });
}
