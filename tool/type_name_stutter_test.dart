// Every type a generated file declares in the package of a tool/providers.yaml
// lane — derived helpers, enums, sealed types and override `prelude` types
// alike — says each word once across the join with its resource stem: no run
// of words repeats in a row where the stem ends (`ComputeSnapshotSnapshotType`
// is `ComputeSnapshotType`). Words Terraform itself repeats past the stem
// (`custom_metric.custom_metric_definition`) do not count.
//
// A doubled name is fine when the name without the repeat is a type the
// package already declares: dropping the words would collide. Any other one
// needs a reasoned entry in tool/type_name_stutter_debt.yaml, and an entry that
// no longer names such a type fails as stale.

import 'dart:io';

import 'package:terradart_codegen/src/codegen/exactly_one_types.dart';
import 'package:terradart_codegen/src/codegen/naming.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'type_name_length_test.dart' show lanePackages;

const _ledgerPath = 'tool/type_name_stutter_debt.yaml';
const _header = '// GENERATED FILE - DO NOT EDIT';
final _decl = RegExp(
  r'^(?:sealed class|final class|abstract class|class|enum|extension type const) (\w+)',
  multiLine: true,
);

/// [name] with each run of words it repeats across the join after [stem]
/// dropped once, or empty when it repeats none.
List<String> dedupedNames(String stem, String name) {
  if (!name.startsWith(stem) ||
      !repeatsAcrossJoin(stem, name.substring(stem.length))) {
    return const [];
  }
  final join = pascalWords(stem).length;
  final w = pascalWords(name);
  final out = <String>[];
  for (var n = 1; 2 * n <= w.length; n++) {
    for (var i = 0; i + 2 * n <= w.length; i++) {
      if (i >= join || i + 2 * n <= join) continue;
      if (List.generate(n, (k) => w[i + k] == w[i + n + k]).every((b) => b)) {
        out.add([...w.take(i + n), ...w.skip(i + 2 * n)].join());
      }
    }
  }
  return out;
}

/// The doubled type names [package]'s generated files declare, each mapped
/// to whether the name without the repeat is declared too.
Map<String, bool> doubledTypes(String package) {
  final declared = <String>{};
  final candidates = <String, List<String>>{};
  for (final f
      in Directory('packages/$package/lib/src')
          .listSync(recursive: true)
          .whereType<File>()
          .where((f) => f.path.endsWith('.dart'))) {
    final src = f.readAsStringSync();
    if (!src.startsWith(_header)) continue;
    final short = shortResourcePascal(
      f.uri.pathSegments.last.replaceAll('.dart', ''),
    );
    for (final m in _decl.allMatches(src)) {
      final name = m[1]!;
      declared.add(name);
      final stem = name.startsWith('Data$short') ? 'Data$short' : short;
      final deduped = dedupedNames(stem, name);
      if (deduped.isNotEmpty) candidates[name] = deduped;
    }
  }
  return {
    for (final MapEntry(:key, :value) in candidates.entries)
      key: value.any(declared.contains),
  };
}

Map<String, String> _ledger() {
  final doc = loadYaml(File(_ledgerPath).readAsStringSync());
  if (doc == null) return const {};
  return {
    for (final MapEntry(:key, :value) in (doc as YamlMap).entries)
      key as String: value as String,
  };
}

void main() {
  test('dedupedNames drops a run repeated across the stem join', () {
    expect(dedupedNames('ComputeSnapshot', 'ComputeSnapshotSnapshotType'), [
      'ComputeSnapshotType',
    ]);
    expect(
      dedupedNames(
        'ComputeSecurityPolicy',
        'ComputeSecurityPolicySecurityPolicyRule',
      ),
      ['ComputeSecurityPolicyRule'],
    );
    expect(dedupedNames('AutoscalingGroupTag', 'AutoscalingGroupTagTag'), [
      'AutoscalingGroupTag',
    ]);
    expect(
      dedupedNames(
        'MonitoringMetricDescriptor',
        'MonitoringMetricDescriptorCustomMetricCustomMetricDefinition',
      ),
      isEmpty,
    );
    expect(dedupedNames('ComputeSnapshot', 'OtherSnapshotSnapshot'), isEmpty);
  });

  final ledger = _ledger();
  final unjustified = <String>{};
  for (final package in lanePackages()) {
    final doubled = doubledTypes(package);
    unjustified.addAll([
      for (final MapEntry(:key, :value) in doubled.entries)
        if (!value) key,
    ]);
    test('$package type names say each word once across the stem', () {
      expect(
        [
          for (final MapEntry(:key, :value) in doubled.entries)
            if (!value && !ledger.containsKey(key)) key,
        ],
        isEmpty,
        reason:
            'drop the repeated words (a prelude rename in the override, or '
            'a generator fix) or add a reasoned entry to $_ledgerPath',
      );
    });
  }

  test('every $_ledgerPath entry names a doubled type', () {
    expect([
      for (final name in ledger.keys)
        if (!unjustified.contains(name)) name,
    ], isEmpty);
  });
}
