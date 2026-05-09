import 'package:yaml/yaml.dart';

import '../ir/constraints.dart';

/// Output of the Magic Modules YAML parser.
///
/// Only the fields we currently consume are populated:
/// - `forceNew` (from `immutable: true`)
/// - `regex`, `minLength`, `maxLength` (from `validation`)
/// - `enumValues` (from `enum_values`)
class MmResourceOverrides {
  /// Top-level YAML `description`, if any.
  final String? description;

  /// Keyed by **Terraform snake_case path**: a flat field is `'name'`, a
  /// nested field is `'schema_settings.encoding'`. Each value carries only
  /// the constraint bits MM YAML actually contributes.
  final Map<String, Constraints> fieldOverrides;

  const MmResourceOverrides({
    required this.fieldOverrides,
    this.description,
  });
}

/// Parses one Magic Modules resource YAML file.
class MmYamlParser {
  const MmYamlParser();

  MmResourceOverrides parseString(String source) {
    final doc = loadYaml(source);
    if (doc is! YamlMap) {
      throw const FormatException('MM YAML root must be a map.');
    }
    final overrides = <String, Constraints>{};
    final props = doc['properties'];
    if (props is YamlList) {
      for (final p in props) {
        _walkProperty(p as YamlMap, '', overrides);
      }
    }
    return MmResourceOverrides(
      fieldOverrides: overrides,
      description: doc['description'] as String?,
    );
  }

  void _walkProperty(
    YamlMap prop,
    String prefix,
    Map<String, Constraints> sink,
  ) {
    final apiName =
        (prop['api_name'] as String?) ?? _toSnakeCase(prop['name'] as String);
    final fullKey = prefix.isEmpty ? apiName : '$prefix.$apiName';

    final c = Constraints(
      forceNew: prop['immutable'] as bool? ?? false,
      regex: (prop['validation'] as YamlMap?)?['regex'] as String?,
      minLength: (prop['validation'] as YamlMap?)?['min_length'] as int?,
      maxLength: (prop['validation'] as YamlMap?)?['max_length'] as int?,
      enumValues: _enumValues(prop),
    );
    if (_isMeaningful(c)) {
      sink[fullKey] = c;
    }

    final nested = prop['properties'];
    if (nested is YamlList) {
      for (final n in nested) {
        _walkProperty(n as YamlMap, fullKey, sink);
      }
    }
  }

  List<String>? _enumValues(YamlMap prop) {
    final ev = prop['enum_values'];
    if (ev is! YamlList) return null;
    return [for (final v in ev) v.toString()];
  }

  bool _isMeaningful(Constraints c) =>
      c.forceNew ||
      c.regex != null ||
      c.minLength != null ||
      c.maxLength != null ||
      c.enumValues != null;

  /// MM YAML uses lowerCamelCase for the `name` field, but the canonical
  /// Terraform JSON name comes from `api_name`. When `api_name` is absent
  /// we synthesise a snake_case from the camelCase name.
  String _toSnakeCase(String camel) {
    final buf = StringBuffer();
    for (var i = 0; i < camel.length; i++) {
      final ch = camel[i];
      if (ch.toUpperCase() == ch && ch != ch.toLowerCase() && i != 0) {
        buf.write('_');
      }
      buf.write(ch.toLowerCase());
    }
    return buf.toString();
  }
}
