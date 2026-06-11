// ignore_for_file: avoid_print
//
// Maintainer gate: schema-documented finite values must not surface as
// TfArg<String> when the wrapper override lacks dartTypeOverrides / prelude
// enum coverage.
//
// Usage: dart tool/check_override_enum_gaps.dart

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

void main() {
  final gaps = <String>[];

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

      gaps.add(
        '${thin ? "THIN" : "PARTIAL"}\t$tfType.$attr\t${vals.join(", ")}',
      );
    }
  }

  if (gaps.isEmpty) {
    print('check_override_enum_gaps: OK (0 gaps)');
    exit(0);
  }

  print('check_override_enum_gaps: ${gaps.length} gap(s):');
  for (final g in gaps) {
    print('  $g');
  }
  exit(1);
}
