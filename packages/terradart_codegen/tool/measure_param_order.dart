// Standalone tool: applies a candidate paramOrder heuristic to every yaml
// override under lib/src/codegen/wrapper_overrides/yaml/google_*.yaml and
// reports per-resource match statistics.
//
// Run from packages/terradart_codegen/:
//   dart run tool/measure_param_order.dart
//
// Output:
//   - stderr: progress lines per resource
//   - file:   ../../docs/superpowers/specs/2026-05-16-plan5d-paramorder-measurement.md
//             (full report with introduction + decision matrix)

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

const _yamlDir = 'lib/src/codegen/wrapper_overrides/yaml';
const _schemaPath = 'test/fixtures/wrap/source/schema.json';
const _outputPath =
    '../../docs/superpowers/specs/2026-05-16-plan5d-paramorder-measurement.md';

void main() {
  final schemaRoot =
      jsonDecode(File(_schemaPath).readAsStringSync()) as Map<String, dynamic>;
  final resourceSchemas = _extractResourceSchemas(schemaRoot);

  final yamlFiles = Directory(_yamlDir)
      .listSync()
      .whereType<File>()
      .where((f) => p.basename(f.path).startsWith('google_'))
      .where((f) => f.path.endsWith('.yaml'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  stderr.writeln('Found ${yamlFiles.length} yaml override files');

  final results = <_MeasurementRow>[];
  for (final yf in yamlFiles) {
    final resourceName = p.basenameWithoutExtension(yf.path);
    final yamlSource = yf.readAsStringSync();
    final yamlDoc = loadYaml(yamlSource) as Map?;
    if (yamlDoc == null) continue;
    final actual = (yamlDoc['paramOrder'] as YamlList?)
            ?.cast<String>()
            .toList(growable: false) ??
        const <String>[];
    if (actual.isEmpty) {
      stderr.writeln('  $resourceName: no paramOrder -- skipping');
      continue;
    }
    final schema = resourceSchemas[resourceName];
    if (schema == null) {
      stderr.writeln('  $resourceName: schema not in fixture -- skipping');
      continue;
    }
    final candidate = _applyHeuristic(actual, schema);
    final exact = _isExactMatch(candidate, actual);
    final swap = _swapDistance(candidate, actual);
    results.add(_MeasurementRow(
      resourceName: resourceName,
      actual: actual,
      candidate: candidate,
      exactMatch: exact,
      swapDistance: swap,
      totalSlots: actual.length,
    ));
    stderr.writeln(
      '  $resourceName: exact=${exact ? "yes" : "no"} swap=$swap '
      '(${actual.length} slots)',
    );
  }

  _writeReport(results);
  stderr.writeln('Wrote $_outputPath');
}

Map<String, Map<String, dynamic>> _extractResourceSchemas(
  Map<String, dynamic> root,
) {
  final providers =
      root['provider_schemas'] as Map<String, dynamic>? ?? const {};
  for (final entry in providers.entries) {
    final provider = entry.value as Map<String, dynamic>;
    final resources =
        provider['resource_schemas'] as Map<String, dynamic>? ?? const {};
    return resources.map((k, v) => MapEntry(k, v as Map<String, dynamic>));
  }
  return const {};
}

List<String> _applyHeuristic(
  List<String> actual,
  Map<String, dynamic> schema,
) {
  // The heuristic is applied over the slots in actual paramOrder so it
  // predicts the order, not slot existence. (Some yaml customSlots are
  // virtual and not in schema; including them via actual preserves them.)
  final slots = Set<String>.from(actual);
  final schemaAttrs = _schemaAttrsAndNested(schema);

  final identityRe = RegExp(
    r'^(name|.+_id|bucket|topic|subscription|secret|service|database|backend|'
    r'collection|display_name|parameters)$',
  );
  final locationKeys = {'location', 'region', 'zone'};
  const projectKey = 'project';

  String? identity;
  String? location;
  final hasProject = slots.contains(projectKey);
  final required = <String>[];
  final optional = <String>[];

  for (final s in slots) {
    if (s == projectKey) continue;
    if (location == null && locationKeys.contains(s)) {
      location = s;
      continue;
    }
    if (identity == null && identityRe.hasMatch(s)) {
      identity = s;
      continue;
    }
    final attrInfo = schemaAttrs[s];
    final isRequired = (attrInfo?['required'] as bool?) ?? false;
    if (isRequired) {
      required.add(s);
    } else {
      optional.add(s);
    }
  }

  required.sort();
  optional.sort();

  return <String>[
    if (identity != null) identity,
    if (location != null) location,
    ...required,
    ...optional,
    if (hasProject) projectKey,
  ];
}

Map<String, Map<String, dynamic>> _schemaAttrsAndNested(
  Map<String, dynamic> resourceSchema,
) {
  final block = resourceSchema['block'] as Map<String, dynamic>? ?? const {};
  final attrs =
      block['attributes'] as Map<String, dynamic>? ?? const <String, dynamic>{};
  final nested = block['block_types'] as Map<String, dynamic>? ??
      const <String, dynamic>{};
  return {
    for (final e in attrs.entries) e.key: e.value as Map<String, dynamic>,
    for (final e in nested.entries)
      e.key: {
        'required':
            ((e.value as Map<String, dynamic>)['min_items'] as int? ?? 0) > 0,
      },
  };
}

bool _isExactMatch(List<String> candidate, List<String> actual) {
  if (candidate.length != actual.length) return false;
  for (var i = 0; i < candidate.length; i++) {
    if (candidate[i] != actual[i]) return false;
  }
  return true;
}

int _swapDistance(List<String> candidate, List<String> actual) {
  // Minimum number of adjacent swaps to transform candidate into actual.
  // Both lists must be permutations of each other for this to be meaningful;
  // if they differ in length or content, return -1 as a sentinel.
  if (candidate.length != actual.length) return -1;
  final candSet = candidate.toSet();
  final actSet = actual.toSet();
  if (candSet.length != actSet.length || !candSet.containsAll(actSet)) {
    return -1;
  }
  final positions =
      candidate.map((c) => actual.indexOf(c)).toList(growable: false);
  var swaps = 0;
  for (var i = 0; i < positions.length; i++) {
    for (var j = 0; j < positions.length - 1 - i; j++) {
      if (positions[j] > positions[j + 1]) {
        final tmp = positions[j];
        positions[j] = positions[j + 1];
        positions[j + 1] = tmp;
        swaps++;
      }
    }
  }
  return swaps;
}

void _writeReport(List<_MeasurementRow> results) {
  results.sort((a, b) => a.resourceName.compareTo(b.resourceName));

  final exactCount = results.where((r) => r.exactMatch).length;
  final total = results.length;
  final pct = total > 0 ? (100 * exactCount / total).toStringAsFixed(1) : '0.0';
  final totalSlots = results.fold<int>(0, (sum, r) => sum + r.totalSlots);

  final out = StringBuffer()
    ..writeln('# Plan 5.D paramOrder heuristic measurement')
    ..writeln()
    ..writeln('**Date:** 2026-05-17')
    ..writeln(
      '**Generated by:** `packages/terradart_codegen/tool/measure_param_order.dart`',
    )
    ..writeln('**Source corpus:** 49 yaml overrides under '
        '`packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml/`')
    ..writeln(
      '**Schema fixture:** `packages/terradart_codegen/test/fixtures/wrap/source/schema.json`',
    )
    ..writeln()
    ..writeln('## Heuristic under test')
    ..writeln()
    ..writeln('1. **identity_first** — first slot matching regex '
        '`^(name|.+_id|bucket|topic|subscription|secret|service|database|backend|collection|display_name|parameters)\$`')
    ..writeln('2. **location/region/zone** — second')
    ..writeln('3. **schema-required remaining**, alphabetical')
    ..writeln('4. **optional remaining**, alphabetical (nested blocks treated '
        'as required when `min_items > 0`)')
    ..writeln('5. **project** — last')
    ..writeln()
    ..writeln('## Summary')
    ..writeln()
    ..writeln('| Metric | Value |')
    ..writeln('|---|---|')
    ..writeln('| Resources analyzed | $total |')
    ..writeln('| Exact match | $exactCount ($pct%) |')
    ..writeln('| Total slots across corpus | $totalSlots |')
    ..writeln()
    ..writeln('## Per-resource results')
    ..writeln()
    ..writeln('| Resource | Slots | Exact? | Swap dist | Actual order | '
        'Candidate order |')
    ..writeln('|---|---|---|---|---|---|')
    ..writeAll(results.map(_rowToTableLine))
    ..writeln()
    ..writeln('## Wave 5-close decision matrix (NOT applied in this PR)')
    ..writeln()
    ..writeln('Re-run after Wave 5 close (which adds ~22 IAM-completion + '
        'Cloud SQL resources). Apply this matrix to the combined 71-resource '
        'corpus:')
    ..writeln()
    ..writeln('| Exact-match rate | Decision |')
    ..writeln('|---|---|')
    ..writeln('| ≥ 60% (≥43/71) | Ship as `terradart wrap-promote '
        '--suggest-param-order` subcommand |')
    ..writeln('| 30-60% (22-42/71) | Ship as wrap-init scaffold-only '
        '(initial paramOrder in wrap-init output) |')
    ..writeln('| < 30% (<22/71) | Do NOT ship; curator hand-authoring remains '
        'canonical |')
    ..writeln()
    ..writeln('## Notes')
    ..writeln()
    ..writeln("- Per Expert 5's analysis during Plan 5.D brainstorming, "
        'paramOrder governs constructor declaration order only (constructors '
        'are named-parameter-only in all 49 curated wrappers); call-site '
        'impact is zero. Wrong-order harm is limited to autocomplete '
        'ordering and dartdoc layout.')
    ..writeln('- This document is regenerable by re-running '
        '`cd packages/terradart_codegen && dart run tool/measure_param_order.dart`. '
        'Update the matrix above only after Wave 5 close and re-run.');

  File(_outputPath).writeAsStringSync(out.toString());
}

String _rowToTableLine(_MeasurementRow r) {
  final actualStr = r.actual.join(', ');
  final candidateStr = r.candidate.join(', ');
  final exactMark = r.exactMatch ? '✓' : '';
  final swapStr = r.swapDistance < 0 ? 'n/a' : r.swapDistance.toString();
  return '| `${r.resourceName}` | ${r.totalSlots} | $exactMark | '
      '$swapStr | `$actualStr` | `$candidateStr` |\n';
}

class _MeasurementRow {
  _MeasurementRow({
    required this.resourceName,
    required this.actual,
    required this.candidate,
    required this.exactMatch,
    required this.swapDistance,
    required this.totalSlots,
  });
  final String resourceName;
  final List<String> actual;
  final List<String> candidate;
  final bool exactMatch;
  final int swapDistance;
  final int totalSlots;
}
