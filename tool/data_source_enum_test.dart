import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/enum_value_parser.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'check_google_enum_gaps.dart' show ctorRawStringFields;
import 'wrap_lanes.dart';

/// The top-level inputs of a data source that list a fixed value set (the
/// description dialects a `providerEnums` lane reads, or a hint file's
/// `enum_values`) but that [generatedSource]'s constructor still takes as
/// `TfArg<String>` or `TfArg<List<String>>`.
List<String> rawValueSetInputs(
  Map<String, dynamic> block,
  String generatedSource, {
  Set<String> hinted = const {},
}) {
  final raw = ctorRawStringFields(generatedSource);
  final attrs = block['attributes'] as Map<String, dynamic>? ?? const {};
  return [
    for (final MapEntry(:key, :value) in attrs.entries)
      if (value case final Map<String, dynamic> meta
          when !_computedOnly(meta) &&
              (hinted.contains(key) ||
                  _values(meta['description'] as String?) != null) &&
              raw.contains(_camel(key)))
        key,
  ];
}

bool _computedOnly(Map<String, dynamic> meta) =>
    meta['computed'] == true &&
    meta['optional'] != true &&
    meta['required'] != true;

List<String>? _values(String? description) =>
    parseEnumValuesFromDescription(description) ??
    parseAvailableValues(description);

String _camel(String snake) {
  final parts = snake.split('_');
  return parts.first +
      parts.skip(1).map((s) => s[0].toUpperCase() + s.substring(1)).join();
}

Set<String> _hintedInputs(String schemaDir, String type) {
  final file = File(p.join(schemaDir, 'hints', 'data', '$type.yaml'));
  if (!file.existsSync()) return const {};
  final doc = loadYaml(file.readAsStringSync());
  final props = doc is YamlMap ? doc['properties'] : null;
  return {
    if (props is YamlList)
      for (final prop in props)
        if (prop is YamlMap && prop['enum_values'] != null)
          '${prop['api_name']}',
  };
}

void main() {
  test(
    'a data-source value set the constructor takes as a string is named',
    () {
      final block = {
        'attributes': {
          'direction': {
            'type': 'string',
            'optional': true,
            'description': 'Available values: "asc", "desc".',
          },
          'mode': {'type': 'string', 'optional': true, 'description': 'Mode.'},
          'order': {
            'type': 'string',
            'optional': true,
            'description': 'Available values: "mode", "notes".',
          },
          'status': {
            'type': 'string',
            'computed': true,
            'description': 'Available values: "on", "off".',
          },
        },
      };
      const source = '''
DataCloudflareAccessRules(super.localName, {
  TfArg<String>? direction,
  TfArg<String>? mode,
  DataAccessRulesOrder? order,
}) : super(
''';
      expect(rawValueSetInputs(block, source), ['direction']);
      expect(rawValueSetInputs(block, source, hinted: {'mode'}), [
        'direction',
        'mode',
      ]);
    },
  );

  test(
    'every providerEnums lane data source takes an enum for a value set',
    () {
      final lanes = parseWrapLanes(
        File(providersPath).readAsStringSync(),
      ).where((l) => l.providerEnums).toList();
      expect(lanes, isNotEmpty);
      final gaps = <String>[];
      for (final lane in lanes) {
        final schema =
            jsonDecode(
                  File(
                    p.join(lane.schemaDir, 'schema.json'),
                  ).readAsStringSync(),
                )
                as Map<String, dynamic>;
        final provider =
            (schema['provider_schemas'] as Map<String, dynamic>).values.single
                as Map<String, dynamic>;
        final dataSources =
            provider['data_source_schemas'] as Map<String, dynamic>? ??
            const {};
        for (final MapEntry(key: type, :value) in dataSources.entries) {
          final file = File(
            p.join(lane.outputPackage, 'lib', 'src', 'data', '$type.dart'),
          );
          if (!file.existsSync()) continue;
          for (final input in rawValueSetInputs(
            (value as Map<String, dynamic>)['block'] as Map<String, dynamic>,
            file.readAsStringSync(),
            hinted: _hintedInputs(lane.schemaDir, type),
          )) {
            gaps.add('${lane.name}: $type.$input');
          }
        }
      }
      expect(
        gaps,
        isEmpty,
        reason:
            'a data-source input with a fixed value set takes an enum: set '
            'deriveEnums: true on its override and re-run wrap',
      );
    },
  );
}
