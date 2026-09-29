import 'package:yaml/yaml.dart';

import '../codegen/exclusive_groups.dart';
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
  /// do not share one parent block is dropped. An `at_least_one_of` set
  /// whose members all pairwise `conflicts` counts too ([exclusiveGroups]).
  final List<List<String>> exactlyOneOfPaths;

  /// The `conflicts` sets no `exactly_one_of` covers, in the shape of
  /// [exactlyOneOfPaths]: inputs of one block that pairwise conflict, which
  /// the provider also accepts none of (`at_most_one_of_groups`).
  final List<List<String>> atMostOneOfPaths;

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
    this.atMostOneOfPaths = const [],
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
    final paths = _Relations();
    final enums = <String, List<String>>{};

    // Top-level exactly_one_of (applies to direct children).
    final topGroup = _readExactlyOneOf(doc, prefix: '');
    if (topGroup != null) groups.add(topGroup);
    _addRelations(doc, '', null, paths);

    final props = doc['properties'];
    if (props is YamlList) {
      for (final p in props) {
        _walkProperty(p as YamlMap, '', overrides, groups, paths, enums);
      }
    }
    final combined = exclusiveGroups(
      exactlyOne: paths.exactlyOne,
      atLeastOne: paths.atLeastOne,
      conflicts: paths.conflicts,
    );
    return MmResourceOverrides(
      fieldOverrides: overrides,
      description: doc['description'] as String?,
      product: doc['product'] as String?,
      exactlyOneOfGroups: groups,
      exactlyOneOfPaths: combined.exactlyOne,
      atMostOneOfPaths: combined.atMostOne,
      enumValuesByPath: enums,
    );
  }

  /// Adds [node]'s `exactly_one_of`, `at_least_one_of` and `conflicts`,
  /// normalized, to [sink]. [parent] is the dotted path of [node]'s parent
  /// block and [self] the path of [node] (null for the resource root).
  void _addRelations(
    YamlMap node,
    String parent,
    String? self,
    _Relations sink,
  ) {
    List<String>? members(String key) {
      final raw = node[key];
      if (raw is! YamlList) return null;
      return [
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
    }

    String parentOf(String m) =>
        m.contains('.') ? m.substring(0, m.lastIndexOf('.')) : '';
    bool siblings(List<String> ms) =>
        ms.toSet().length >= 2 && ms.map(parentOf).toSet().length == 1;
    if (members('exactly_one_of') case final ms? when siblings(ms)) {
      sink.exactlyOne.add(ms);
    }
    if (members('at_least_one_of') case final ms? when siblings(ms)) {
      sink.atLeastOne.add(ms);
    }
    if (self != null) {
      for (final m in members('conflicts') ?? const <String>[]) {
        sink.conflicts.add((self, m));
      }
    }
  }

  /// [sink] and [groupSink] are null below an `item_type`: they keep
  /// their historical scope (the google lane's merged IR and lint read
  /// them), while [pathSink] and [enumSink] see every property.
  void _walkProperty(
    YamlMap prop,
    String prefix,
    Map<String, Constraints>? sink,
    List<List<String>>? groupSink,
    _Relations pathSink,
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
    _addRelations(prop, prefix, fullKey, pathSink);

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

/// The relation rules of one resource, as dotted Terraform paths.
final class _Relations {
  final exactlyOne = <List<String>>[];
  final atLeastOne = <List<String>>[];
  final conflicts = <(String, String)>[];
}
