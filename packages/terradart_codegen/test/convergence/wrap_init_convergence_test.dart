@Tags(['convergence'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/providers/google_provider_rules.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/clock.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/output_dir_resolver.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_draft.dart';
import 'package:terradart_codegen/src/codegen/wrap_init/wrap_init_generator.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/_registry.dart';
import 'package:terradart_codegen/src/codegen/wrapper_overrides/wrapper_override.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:terradart_codegen/src/parser/schema_parser.dart';
import 'package:test/test.dart';

const _overrideRoot = 'lib/src/codegen/wrapper_overrides/yaml';
const _schemaPath = 'test/fixtures/wrap/source/schema.json';
const _mmDir = 'test/fixtures/wrap/source/mm';

/// Reads axis [key] from a draft, or null if the axis was not emitted
/// (resources omit `kind`/`schemaStubBodyMode` at their defaults).
String? _axis(WrapInitDraft draft, String key) {
  for (final a in draft.axes) {
    if (a.key == key && a is FilledAxis) return a.value as String;
  }
  return null;
}

/// Derived axis values, normalized to the WrapperOverride default when
/// wrap-init omitted them (resources do not emit kind/schemaStubBodyMode).
String _derivedKind(WrapInitDraft d) => _axis(d, 'kind') ?? 'resource';
String _derivedStub(WrapInitDraft d) =>
    _axis(d, 'schemaStubBodyMode') ?? 'nosuchmethod';
String? _derivedOutputDir(WrapInitDraft d) => _axis(d, 'outputDir');

/// Committed [WrapperOverrideKind] mapped to the wrap-init emit spelling
/// (`resource` -> `'resource'`, `dataSource` -> `'data_source'`), so it lines
/// up with [_derivedKind] / wrap-init's `FilledAxis('kind', 'data_source')`.
String _committedKind(WrapperOverrideKind k) =>
    k == WrapperOverrideKind.dataSource ? 'data_source' : 'resource';

void main() {
  const rules = GoogleProviderRules();
  final generator = WrapInitGenerator(
    clock: FixedClock(DateTime.parse('2026-01-01T00:00:00.000Z')),
    outputDirResolver: OutputDirResolver(aliases: rules.outputDirAliases),
    providerRules: rules,
  );

  final ir = const SchemaJsonParser()
      .parseString(File(_schemaPath).readAsStringSync());
  final loaded = loadWrapperOverrides(rootDir: _overrideRoot);

  test(
      'TRACER: committed vs wrap-init drift on kind/outputDir/schemaStubBodyMode',
      () {
    final mismatches = <String>[];
    var skipped = 0;
    var checked = 0;

    for (final entry in loaded.entries) {
      final tfType = entry.key;
      final committed = entry.value;
      final kind = committed.kind;

      final def = kind == WrapperOverrideKind.resource
          ? ir.resources[tfType]
          : ir.dataSources[tfType];
      if (def == null) {
        skipped++;
        continue; // no schema fixture for this override
      }

      final mmFile = File(p.join(_mmDir, '$tfType.yaml'));
      final mm = mmFile.existsSync()
          ? const MmYamlParser().parseString(mmFile.readAsStringSync())
          : null;

      final draft = generator.generate(
        terraformType: tfType,
        def: def,
        kind: kind,
        mm: mm,
      );

      final cKind = committed.kind.name;
      final cDir = committed.outputDir;
      final cStub = committed.schemaStubBodyMode.name;
      final dKind = _derivedKind(draft);
      final dDir = _derivedOutputDir(draft);
      final dStub = _derivedStub(draft);

      final diffs = <String>[];
      if (cKind != dKind) diffs.add('kind: committed=$cKind derived=$dKind');
      if (cDir != dDir) diffs.add('outputDir: committed=$cDir derived=$dDir');
      if (cStub != dStub) {
        diffs.add('schemaStubBodyMode: committed=$cStub derived=$dStub');
      }
      if (diffs.isNotEmpty) mismatches.add('$tfType -> ${diffs.join('; ')}');
      checked++;
    }

    // ignore: avoid_print
    print('CONVERGENCE TRACER: checked=$checked skipped=$skipped '
        'mismatches=${mismatches.length}');
    for (final m in mismatches) {
      // ignore: avoid_print
      print('  MISMATCH $m');
    }
    // Tracer never fails — it only measures. The asserting test below now guards
    // all three axes (kind + outputDir + schemaStubBodyMode). The one residual
    // tracer mismatch is google_project's raw kind spelling (committed
    // `dataSource` vs wrap-init emit `data_source`); the assertion normalizes it
    // via `_committedKind`, so it is not a real drift.
    expect(true, isTrue);
  });

  // Phase D assertion. Scope: kind + outputDir + schemaStubBodyMode.
  //
  // outputDir joins the anchor here: OutputDirResolver folds each resource into
  // its product directory (e.g. `cloud_run`, `firebase_app_check`,
  // `artifact_registry`) via the GoogleProviderRules alias map, matching the
  // committed outputDir of every override. A regression in the resolver or the
  // alias map (or a new product whose prefix is missing) trips this assertion
  // even though `wrap --check` stays green (it reads the override as truth).
  test(
      'committed overrides match the wrap-init anchor (kind + outputDir + schemaStubBodyMode)',
      () {
    final offenders = <String>[];
    var skipped = 0;

    for (final entry in loaded.entries) {
      final tfType = entry.key;
      final committed = entry.value;
      final kind = committed.kind;

      final def = kind == WrapperOverrideKind.resource
          ? ir.resources[tfType]
          : ir.dataSources[tfType];
      if (def == null) {
        skipped++;
        continue;
      }

      final mmFile = File(p.join(_mmDir, '$tfType.yaml'));
      final mm = mmFile.existsSync()
          ? const MmYamlParser().parseString(mmFile.readAsStringSync())
          : null;

      final draft = generator.generate(
        terraformType: tfType,
        def: def,
        kind: kind,
        mm: mm,
      );

      final diffs = <String>[];
      if (_committedKind(committed.kind) != _derivedKind(draft)) {
        diffs.add('kind: committed=${_committedKind(committed.kind)} '
            'derived=${_derivedKind(draft)}');
      }
      if (committed.outputDir != _derivedOutputDir(draft)) {
        diffs.add('outputDir: committed=${committed.outputDir} '
            'derived=${_derivedOutputDir(draft)}');
      }
      if (committed.schemaStubBodyMode.name != _derivedStub(draft)) {
        diffs.add(
            'schemaStubBodyMode: committed=${committed.schemaStubBodyMode.name} '
            'derived=${_derivedStub(draft)}');
      }
      if (diffs.isNotEmpty) offenders.add('$tfType -> ${diffs.join('; ')}');
    }

    // ignore: avoid_print
    print('CONVERGENCE (kind+outputDir+stub): skipped=$skipped '
        '(no schema fixture)');
    expect(
      offenders,
      isEmpty,
      reason: 'These overrides drifted from the wrap-init anchor on '
          'kind/schemaStubBodyMode: $offenders. Fix the override or the '
          'derivation; do not silence by narrowing scope.',
    );
  });
}
