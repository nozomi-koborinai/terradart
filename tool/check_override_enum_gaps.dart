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

/// Parses schema descriptions that document a finite value set.
List<String>? _parseEnumValues(String? desc) {
  if (desc == null) return null;

  final bracket = RegExp(r'Possible values:\s*(\[[^\]]+\])');
  final m = bracket.firstMatch(desc);
  if (m != null) {
    try {
      final vals = jsonDecode(m.group(1)!.replaceAll("'", '"')) as List;
      final strings = vals.cast<String>();
      return strings.length >= 2 ? strings : null;
    } on FormatException {
      // fall through
    }
  }

  // `Valid values are: "PAGELESS", "PAGINATED".`
  final validAre = RegExp(
    r'Valid values are:\s*([^.]+)\.',
    caseSensitive: false,
  );
  final vm = validAre.firstMatch(desc);
  if (vm != null) {
    final quoted = RegExp(r'"([^"]+)"')
        .allMatches(vm.group(1)!)
        .map((m) => m.group(1)!)
        .toList();
    if (quoted.length >= 2) return quoted;
  }

  // `Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY`
  final loose = RegExp(r'Possible values:\s*([A-Z0-9_,\s]+)');
  final lm = loose.firstMatch(desc);
  if (lm != null) {
    final vals = lm
        .group(1)!
        .split(',')
        .map((v) => v.trim())
        .where((v) => v.isNotEmpty)
        .toList();
    if (vals.length >= 2) return vals;
  }

  return null;
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

bool _customSlotCoversBlock(Map<String, dynamic> ov, List<String> blockPath) {
  if (blockPath.isEmpty) return false;
  final slots = Map<String, dynamic>.from(
    ov['customSlots'] as YamlMap? ?? {},
  );
  return slots.containsKey(blockPath.last);
}

bool _nestedFieldStillTfArgString(String genText, String camel) {
  return RegExp('final TfArg<String>\\??\\s+$camel\\s*;').hasMatch(genText);
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
        final vals = _parseEnumValues(meta['description'] as String?);
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
    final genText = _generatedSource(tfType, ov);

    final attrs =
        ((schema as Map)['block'] as Map)['attributes'] as Map<String, dynamic>;
    for (final entry in attrs.entries) {
      final attr = entry.key;
      final meta = Map<String, dynamic>.from(entry.value as Map);
      if (meta['computed'] == true) continue;

      final vals = _parseEnumValues(meta['description'] as String?);
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
      ((schema as Map)['block'] as Map),
    );
    for (final site in _collectNestedEnumSites(block)) {
      final label = _blockPathLabel(site.blockPath, site.attr);
      final camel = _camel(site.attr);

      if (_customSlotCoversBlock(ov, site.blockPath)) {
        if (_nestedFieldStillTfArgString(genText, camel)) {
          nestedPartialGaps.add(
            'NESTED_PARTIAL\t$tfType.$label\t${site.values.join(", ")}',
          );
        }
        continue;
      }

      nestedThinGaps.add(
        'NESTED_THIN\t$tfType.$label\t${site.values.join(", ")}',
      );
    }
  }

  final nestedThinAdvisory = nestedThinGaps;
  final failing = [
    ...topLevelGaps,
    ...nestedPartialGaps,
    if (strictNested) ...nestedThinAdvisory,
  ];
  final nestedAdvisory = [...nestedPartialGaps, ...nestedThinAdvisory];

  if (failing.isEmpty && nestedThinAdvisory.isEmpty) {
    print(
        'check_override_enum_gaps: OK (0 top-level, 0 nested partial, 0 nested thin)');
    exit(0);
  }

  if (failing.isEmpty) {
    print(
      'check_override_enum_gaps: OK (0 top-level, 0 nested partial; '
      '${nestedThinAdvisory.length} nested thin advisory)',
    );
    for (final g in nestedThinAdvisory) {
      print('  [advisory] $g');
    }
    exit(0);
  }

  print('check_override_enum_gaps: ${failing.length} gap(s):');
  for (final g in failing) {
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
  exit(1);
}
