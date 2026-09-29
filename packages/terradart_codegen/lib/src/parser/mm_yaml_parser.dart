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

  /// The same groups as dotted Terraform paths from the resource root, the
  /// shape `wrap --provider-enums` hints carry (`exactly_one_of_groups`):
  /// list-index segments (`a.0.b`) dropped, camelCase names snake_cased, a
  /// nested property's bare sibling names resolved against its parent.
  /// Deduplicated (every member repeats its group); a group whose members
  /// do not share one parent block is dropped.
  final List<List<String>> exactlyOneOfPaths;

  /// `enum_values` by dotted Terraform path, including the properties of
  /// an `Array` of `NestedObject` (`item_type.properties`), which
  /// [fieldOverrides] leaves out.
  final Map<String, List<String>> enumValuesByPath;

  const MmResourceOverrides({
    required this.fieldOverrides,
    this.description,
    this.product,
    this.exactlyOneOfGroups = const [],
    this.exactlyOneOfPaths = const [],
    this.enumValuesByPath = const {},
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
    final paths = <String, List<String>>{};
    final enums = <String, List<String>>{};

    // Top-level exactly_one_of (applies to direct children).
    final topGroup = _readExactlyOneOf(doc, prefix: '');
    if (topGroup != null) groups.add(topGroup);
    _addExactlyOnePaths(doc, '', paths);

    final props = doc['properties'];
    if (props is YamlList) {
      for (final p in props) {
        _walkProperty(p as YamlMap, '', overrides, groups, paths, enums);
      }
    }
    return MmResourceOverrides(
      fieldOverrides: overrides,
      description: doc['description'] as String?,
      product: doc['product'] as String?,
      exactlyOneOfGroups: groups,
      exactlyOneOfPaths: paths.values.toList(),
      enumValuesByPath: enums,
    );
  }

  /// Adds [node]'s `exactly_one_of`, normalized, to [sink] (keyed by the
  /// sorted members). [parent] is the dotted path of [node]'s parent block.
  void _addExactlyOnePaths(
    YamlMap node,
    String parent,
    Map<String, List<String>> sink,
  ) {
    final raw = node['exactly_one_of'];
    if (raw is! YamlList) return;
    final members = <String>[
      for (final v in raw)
        () {
          final segments = [
            for (final s in v.toString().split('.'))
              if (int.tryParse(s) == null) _toSnakeCase(s),
          ];
          return segments.length == 1 && parent.isNotEmpty
              ? '$parent.${segments.single}'
              : segments.join('.');
        }(),
    ];
    String parentOf(String m) =>
        m.contains('.') ? m.substring(0, m.lastIndexOf('.')) : '';
    if (members.toSet().length < 2 ||
        members.map(parentOf).toSet().length != 1) {
      return;
    }
    sink.putIfAbsent((List.of(members)..sort()).join(','), () => members);
  }

  /// [sink] and [groupSink] are null below an `item_type`: they keep
  /// their historical scope (the google lane's merged IR and lint read
  /// them), while [pathSink] and [enumSink] see every property.
  void _walkProperty(
    YamlMap prop,
    String prefix,
    Map<String, Constraints>? sink,
    List<List<String>>? groupSink,
    Map<String, List<String>> pathSink,
    Map<String, List<String>> enumSink,
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
    if (sink != null && _isMeaningful(c)) {
      sink[fullKey] = c;
    }
    if (c.enumValues case final values?) enumSink[fullKey] = values;

    // Per-property exactly_one_of (siblings of this property's nested kids).
    final propGroup = _readExactlyOneOf(prop, prefix: fullKey);
    if (propGroup != null) groupSink?.add(propGroup);
    _addExactlyOnePaths(prop, prefix, pathSink);

    final nested = prop['properties'];
    if (nested is YamlList) {
      for (final n in nested) {
        _walkProperty(
          n as YamlMap,
          fullKey,
          sink,
          groupSink,
          pathSink,
          enumSink,
        );
      }
    }
    final item = prop['item_type'];
    final itemProps = item is YamlMap ? item['properties'] : null;
    if (itemProps is YamlList) {
      for (final n in itemProps) {
        _walkProperty(n as YamlMap, fullKey, null, null, pathSink, enumSink);
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
