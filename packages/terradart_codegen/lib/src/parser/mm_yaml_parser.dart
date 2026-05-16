import 'package:yaml/yaml.dart';

import '../ir/constraints.dart';

/// Output of the Magic Modules YAML parser.
///
/// Only the fields we currently consume are populated:
/// - `forceNew` (from `immutable: true`)
/// - `regex`, `minLength`, `maxLength` (from `validation`)
/// - `enumValues` (from `enum_values`)
/// - `deprecationMessage` (from `deprecation_message`)
class MmResourceOverrides {
  /// Top-level YAML `description`, if any.
  final String? description;

  /// Top-level YAML `product` field, if any. Used by `terradart wrap-init` to
  /// derive `outputDir` defaults from the Magic Modules product folder.
  final String? product;

  /// Keyed by **Terraform snake_case path**: a flat field is `'name'`, a
  /// nested field is `'schema_settings.encoding'`. Each value carries only
  /// the constraint bits MM YAML actually contributes.
  final Map<String, Constraints> fieldOverrides;

  /// `exactly_one_of` groups (top-level + nested merged into one flat list).
  /// Each inner list is one mutually-exclusive set of property names,
  /// recorded in snake_case Terraform path form (e.g. `'foo.foo_a'` for a
  /// nested group). Consumed by `terradart wrap-promote` to generate
  /// sealed-class skeletons in the prelude block.
  final List<List<String>> exactlyOneOfGroups;

  const MmResourceOverrides({
    required this.fieldOverrides,
    this.description,
    this.product,
    this.exactlyOneOfGroups = const [],
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
    final groups = <List<String>>[];

    // Top-level exactly_one_of (applies to direct children).
    final topGroup = _readExactlyOneOf(doc, prefix: '');
    if (topGroup != null) groups.add(topGroup);

    final props = doc['properties'];
    if (props is YamlList) {
      for (final p in props) {
        _walkProperty(p as YamlMap, '', overrides, groups);
      }
    }
    return MmResourceOverrides(
      fieldOverrides: overrides,
      description: doc['description'] as String?,
      product: doc['product'] as String?,
      exactlyOneOfGroups: groups,
    );
  }

  void _walkProperty(
    YamlMap prop,
    String prefix,
    Map<String, Constraints> sink,
    List<List<String>> groupSink,
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
      deprecationMessage: prop['deprecation_message'] as String?,
    );
    if (_isMeaningful(c)) {
      sink[fullKey] = c;
    }

    // Per-property exactly_one_of (siblings of this property's nested kids).
    final propGroup = _readExactlyOneOf(prop, prefix: fullKey);
    if (propGroup != null) groupSink.add(propGroup);

    final nested = prop['properties'];
    if (nested is YamlList) {
      for (final n in nested) {
        _walkProperty(n as YamlMap, fullKey, sink, groupSink);
      }
    }
  }

  List<String>? _readExactlyOneOf(YamlMap node, {required String prefix}) {
    final raw = node['exactly_one_of'];
    if (raw is! YamlList) return null;
    return [
      for (final v in raw)
        prefix.isEmpty ? v.toString() : '$prefix.${v.toString()}',
    ];
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
      c.enumValues != null ||
      c.deprecationMessage != null;

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
