// ignore_for_file: avoid_print
//
// Maintainer gate: schema-documented finite values must not surface as
// TfArg<String> when the wrapper override lacks dartTypeOverrides / prelude
// enum coverage.
//
// Top-level gaps (THIN / PARTIAL) and NESTED_PARTIAL (customSlot helpers
// still using TfArg<String> for schema enums) fail CI by default.
// NESTED_THIN (whole block still TfArg<Map>) prints as advisory unless
// --strict-nested is passed.
//
// Usage:
//   dart tool/check_override_enum_gaps.dart
//   dart tool/check_override_enum_gaps.dart --strict-nested

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/enum_value_parser.dart';
import 'package:yaml/yaml.dart';

final _root = Directory.current.path == '/workspace'
    ? Directory.current
    : Directory(p.join(Directory.current.path));

final _schema = jsonDecode(
  File(
    p.join(
      _root.path,
      'packages/terradart_codegen/test/fixtures/wrap/source/schema.json',
    ),
  ).readAsStringSync(),
) as Map<String, dynamic>;

final _resources = (_schema['provider_schemas']
        as Map<String, dynamic>)['registry.terraform.io/hashicorp/google']
    as Map<String, dynamic>;

final _resourceSchemas = _resources['resource_schemas'] as Map<String, dynamic>;

final _overrideDir = Directory(
  p.join(
    _root.path,
    'packages/terradart_codegen/lib/src/codegen/wrapper_overrides/yaml',
  ),
);

final _genDir = Directory(
  p.join(_root.path, 'packages/terradart_google/lib/src'),
);

typedef _NestedEnumSite = ({
  List<String> blockPath,
  String attr,
  List<String> values,
});

Map<String, dynamic> _loadOverride(String tfType) {
  final file = File(p.join(_overrideDir.path, '$tfType.yaml'));
  return Map<String, dynamic>.from(
    loadYaml(file.readAsStringSync()) as YamlMap,
  );
}

bool _isThin(Map<String, dynamic> ov) {
  const rich = {
    'prelude',
    'dartTypeOverrides',
    'deriveEnums',
    'customSlots',
    'curatedDoc',
    'classDocComment',
  };
  return !ov.keys.any(rich.contains);
}

String _camel(String snake) {
  final parts = snake.split('_');
  return parts.first +
      parts.skip(1).map((p) => p[0].toUpperCase() + p.substring(1)).join();
}

String _blockPathLabel(List<String> blockPath, String attr) =>
    '${blockPath.join('.')}.$attr';

Set<String> _ctorStringFields(String tfType, Map<String, dynamic> ov) {
  final outDir = ov['outputDir'] as String?;
  if (outDir == null) return {};
  final genFile = File(p.join(_genDir.path, outDir, '$tfType.dart'));
  if (!genFile.existsSync()) return {};
  final text = genFile.readAsStringSync();
  final start = text.indexOf('({');
  final end = text.indexOf('}) : super(', start);
  if (start < 0 || end < 0) return {};
  final ctor = text.substring(start, end);
  final fields = <String>{};
  for (final m in RegExp(
    r'(?:required\s+)?TfArg<String>\??\s+(\w+)',
  ).allMatches(ctor)) {
    fields.add(m.group(1)!);
  }
  return fields;
}

String? _generatedSource(String tfType, Map<String, dynamic> ov) {
  final outDir = ov['outputDir'] as String?;
  if (outDir == null) return null;
  final genFile = File(p.join(_genDir.path, outDir, '$tfType.dart'));
  if (!genFile.existsSync()) return null;
  return genFile.readAsStringSync();
}

Set<String> _customSlotTerraformKeys(Map<String, dynamic> ov) {
  final slots = Map<String, dynamic>.from(
    ov['customSlots'] as YamlMap? ?? {},
  );
  final keys = <String>{};
  for (final entry in slots.entries) {
    keys.add(entry.key);
    final slot = Map<String, dynamic>.from(entry.value as Map);
    final argMapEntry = slot['argMapEntry'] as String? ?? '';
    for (final m in RegExp("'([^']+)'\\s*:").allMatches(argMapEntry)) {
      keys.add(m.group(1)!);
    }
  }
  return keys;
}

bool _customSlotCoversBlock(Map<String, dynamic> ov, List<String> blockPath) {
  if (blockPath.isEmpty) return false;
  final slotKeys = _customSlotTerraformKeys(ov);
  // A top-level customSlot (e.g. `rules` → schema `rule`) types the subtree.
  for (var i = blockPath.length; i > 0; i--) {
    if (slotKeys.contains(blockPath[i - 1])) return true;
  }
  return false;
}

/// Collapses runs of whitespace (including newlines) to a single space.
///
/// `dart_style` wraps a field declaration across multiple lines once its
/// type name is long enough (routine for `deriveNestedTypes` classes, whose
/// names are `ResourcePrefix + full block path + attr name` chains) — e.g.
/// `final TfArg<\n  VeryLongEnumClassName\n>?\n  fieldName;`, sometimes with
/// the wrap landing INSIDE the generic's angle brackets (`TfArg<\n  Foo\n>?`,
/// three whitespace-separated tokens even after normalizing). The field
/// -detection regexes below (`[^;]+?` for the type, not `\S+`) tolerate an
/// arbitrarily-wrapped type as long as it contains no literal semicolon
/// (true of every Dart type), so normalizing first just keeps the captured
/// type text comparable to its un-wrapped form (see `_declaredFieldType`).
String _normalizeWhitespace(String s) => s.replaceAll(RegExp(r'\s+'), ' ');

/// The declared type(s) of every `final <type> <camel>;` field named [camel]
/// in [genText] (already whitespace-normalized), with internal whitespace
/// stripped so a wrap-then-normalize round trip (`TfArg< Foo >?`) reads the
/// same as the never-wrapped form (`TfArg<Foo>?`). Empty when no such field
/// exists. More than one entry is possible — and INTENTIONALLY not resolved
/// to "the right one" — when an unrelated block reuses the same attr name
/// (e.g. top-level `type` vs a nested block's own `type`); see
/// `_nestedEnumFieldIsGap`'s doc for why that's the accepted heuristic.
Iterable<String> _declaredFieldTypes(String genText, String camel) sync* {
  for (final m in RegExp('final ([^;]+?)\\s+$camel\\s*;').allMatches(genText)) {
    yield m.group(1)!.replaceAll(' ', '');
  }
}

bool _nestedFieldDeclared(String genText, String camel) {
  return _declaredFieldTypes(genText, camel).isNotEmpty;
}

bool _nestedEnumFieldIsGap(String genText, String camel) {
  const rawString = {'TfArg<String>', 'TfArg<String>?'};
  var sawRawString = false;
  for (final type in _declaredFieldTypes(genText, camel)) {
    if (!rawString.contains(type)) {
      // A typed non-string field (enum / helper) with this name means
      // covered, even when another unrelated `TfArg<String> foo` shares the
      // same name elsewhere in the generated file (e.g. top-level `type` vs
      // nested `type`).
      return false;
    }
    sawRawString = true;
  }
  return sawRawString;
}

/// Whether [blockPath] (or an ancestor of it) is one of [ov]'s
/// `nestedTypeExcludes` entries — i.e. a NESTED_THIN site the maintainer
/// deliberately froze when flipping `deriveNestedTypes: true`, rather than
/// one nobody has migrated yet. Only meaningful when [ov] actually sets
/// `deriveNestedTypes: true`; an override that never turned the gate on has
/// no "frozen" sites, only not-yet-migrated ones.
bool _isFrozenByExclude(Map<String, dynamic> ov, List<String> blockPath) {
  if (ov['deriveNestedTypes'] != true) return false;
  final excludesRaw = ov['nestedTypeExcludes'] as YamlList?;
  if (excludesRaw == null || excludesRaw.isEmpty) return false;
  final excludes = excludesRaw.map((e) => e.toString()).toSet();
  for (var i = blockPath.length; i > 0; i--) {
    if (excludes.contains(blockPath.sublist(0, i).join('.'))) return true;
  }
  return false;
}

List<_NestedEnumSite> _collectNestedEnumSites(Map<String, dynamic> block) {
  final sites = <_NestedEnumSite>[];

  void walk(Map<String, dynamic> node, List<String> path) {
    final blockTypes = node['block_types'] as Map<String, dynamic>? ?? {};
    for (final entry in blockTypes.entries) {
      final name = entry.key;
      final nested = Map<String, dynamic>.from(
        (entry.value as Map)['block'] as Map,
      );
      final nextPath = [...path, name];

      final attrs = nested['attributes'] as Map<String, dynamic>? ?? {};
      for (final attrEntry in attrs.entries) {
        final meta = Map<String, dynamic>.from(attrEntry.value as Map);
        if (meta['computed'] == true) continue;
        final vals = parseEnumValuesFromDescription(
          meta['description'] as String?,
        );
        if (vals == null) continue;
        sites.add((blockPath: nextPath, attr: attrEntry.key, values: vals));
      }

      walk(nested, nextPath);
    }
  }

  walk(block, []);
  return sites;
}

void main(List<String> args) {
  final strictNested = args.contains('--strict-nested');

  final topLevelGaps = <String>[];
  final nestedPartialGaps = <String>[];
  final nestedThinGaps = <String>[];
  final frozenByExcludeGaps = <String>[];

  for (final ent in _overrideDir.listSync().whereType<File>()) {
    if (!ent.path.endsWith('.yaml')) continue;
    final tfType = p.basenameWithoutExtension(ent.path);
    if (tfType == 'google_project') continue;
    final schema = _resourceSchemas[tfType];
    if (schema == null) continue;

    final ov = _loadOverride(tfType);
    final dto = Map<String, dynamic>.from(
      ov['dartTypeOverrides'] as YamlMap? ?? {},
    );
    final thin = _isThin(ov);
    final stringFields = _ctorStringFields(tfType, ov);
    final genTextRaw = _generatedSource(tfType, ov);
    final genText =
        genTextRaw == null ? null : _normalizeWhitespace(genTextRaw);

    final attrs =
        ((schema as Map)['block'] as Map)['attributes'] as Map<String, dynamic>;
    for (final entry in attrs.entries) {
      final attr = entry.key;
      final meta = Map<String, dynamic>.from(entry.value as Map);
      if (meta['computed'] == true) continue;

      final vals = parseEnumValuesFromDescription(
        meta['description'] as String?,
      );
      if (vals == null) continue;

      final camel = _camel(attr);
      if (!stringFields.contains(camel)) continue;
      if (dto.containsKey(attr)) continue;

      topLevelGaps.add(
        '${thin ? "THIN" : "PARTIAL"}\t$tfType.$attr\t${vals.join(", ")}',
      );
    }

    if (genText == null) continue;

    final block = Map<String, dynamic>.from(
      ((schema)['block'] as Map),
    );
    for (final site in _collectNestedEnumSites(block)) {
      final label = _blockPathLabel(site.blockPath, site.attr);
      final camel = _camel(site.attr);
      final frozen = _isFrozenByExclude(ov, site.blockPath);

      if (!_nestedFieldDeclared(genText, camel)) {
        final gap = 'NESTED_THIN\t$tfType.$label\t${site.values.join(", ")}';
        (frozen ? frozenByExcludeGaps : nestedThinGaps).add(gap);
        continue;
      }

      if (!_nestedEnumFieldIsGap(genText, camel)) {
        continue;
      }

      if (_customSlotCoversBlock(ov, site.blockPath)) {
        nestedPartialGaps.add(
          'NESTED_PARTIAL\t$tfType.$label\t${site.values.join(", ")}',
        );
      } else {
        final gap = 'NESTED_THIN\t$tfType.$label\t${site.values.join(", ")}';
        (frozen ? frozenByExcludeGaps : nestedThinGaps).add(gap);
      }
    }
  }

  final nestedThinAdvisory = nestedThinGaps;
  final failing = [
    ...topLevelGaps,
    ...nestedPartialGaps,
    if (strictNested) ...nestedThinAdvisory,
  ];

  // tool/enum_gap_debt.yaml suppresses KNOWN gaps with a reviewed reason
  // (e.g. typed-enum narrowing is a breaking change, so paying a top-level
  // gap down waits for a breaking minor). Same ledger contract as
  // example_debt.yaml: adding a line is a reviewed decision, and a stale
  // line (no longer matching any reported gap) fails so it cannot rot.
  final debt = _gapDebt();
  String keyOf(String gap) => gap.split('\t')[1];
  final allGapKeys = {
    ...failing.map(keyOf),
    ...nestedThinAdvisory.map(keyOf),
    ...frozenByExcludeGaps.map(keyOf),
  };
  final staleDebt = debt.keys.where((k) => !allGapKeys.contains(k)).toList();
  if (staleDebt.isNotEmpty) {
    print(
      'check_override_enum_gaps: stale tool/enum_gap_debt.yaml entries '
      '(no longer a gap — remove the lines):',
    );
    for (final k in staleDebt) {
      print('  $k');
    }
    exit(1);
  }
  final suppressed = failing.where((g) => debt.containsKey(keyOf(g))).length;
  final effective = failing.where((g) => !debt.containsKey(keyOf(g))).toList();
  final debtNote =
      suppressed == 0 ? '' : '; $suppressed in tool/enum_gap_debt.yaml';

  // `frozenByExcludeGaps` never fails, even under --strict-nested — it's a
  // maintainer's reviewed `nestedTypeExcludes` decision (recorded on the
  // override, not this ledger), not migration debt to chase down. Still
  // printed in every branch so "why is this one still a Map" is one command
  // away, matching the advisory list's visibility.
  void printFrozen() {
    if (frozenByExcludeGaps.isEmpty) return;
    print(
      '  (${frozenByExcludeGaps.length} frozen-by-exclude — nestedTypeExcludes, never fails)',
    );
    for (final g in frozenByExcludeGaps) {
      print('  [frozen-by-exclude] $g');
    }
  }

  if (effective.isEmpty && nestedThinAdvisory.isEmpty) {
    print(
      'check_override_enum_gaps: OK (0 top-level, 0 nested partial, '
      '0 nested thin$debtNote; ${frozenByExcludeGaps.length} frozen-by-exclude)',
    );
    printFrozen();
    exit(0);
  }

  if (effective.isEmpty) {
    print(
      'check_override_enum_gaps: OK (0 failing$debtNote; '
      '${nestedThinAdvisory.length} nested thin advisory; '
      '${frozenByExcludeGaps.length} frozen-by-exclude)',
    );
    for (final g in nestedThinAdvisory) {
      print('  [advisory] $g');
    }
    printFrozen();
    exit(0);
  }

  print('check_override_enum_gaps: ${effective.length} gap(s)$debtNote:');
  for (final g in effective) {
    print('  $g');
  }
  if (!strictNested && nestedThinAdvisory.isNotEmpty) {
    print(
      '  (${nestedThinAdvisory.length} NESTED_THIN advisory — pass --strict-nested to fail)',
    );
    for (final g in nestedThinAdvisory) {
      print('  [advisory] $g');
    }
  }
  printFrozen();
  exit(1);
}

/// Parses `tool/enum_gap_debt.yaml` (`<tfType>.<attrPath>: <reason>` lines).
Map<String, String> _gapDebt() {
  final file = File(p.join(_root.path, 'tool', 'enum_gap_debt.yaml'));
  if (!file.existsSync()) return const {};
  final entries = <String, String>{};
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    final sep = line.indexOf(': ');
    if (sep <= 0) {
      print('tool/enum_gap_debt.yaml: unparsable line "$raw"');
      exit(1);
    }
    final key = line.substring(0, sep).trim();
    final reason = line.substring(sep + 2).trim();
    if (reason.isEmpty) {
      print('tool/enum_gap_debt.yaml: $key needs a reason');
      exit(1);
    }
    entries[key] = reason;
  }
  return entries;
}
