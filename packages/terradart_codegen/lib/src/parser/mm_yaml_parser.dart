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

  /// Dotted Terraform paths of the `output: true` properties, and of every
  /// property below one.
  final Set<String> outputPaths;

  /// Dotted Terraform paths of the `min_version: beta` properties, and of
  /// every property below one: inputs only the google-beta provider has.
  final Set<String> betaPaths;

  /// The resource's MM `name` (`RouterNat`), which [resourceRefs] resolve
  /// their `resource` against.
  final String? name;

  /// `type: ResourceRef` properties and parameters (and `Array`s of them)
  /// by dotted Terraform path: the MM resource they name in the same
  /// product and the attribute they import, both as written upstream
  /// (`Router`, `selfLink`).
  final Map<String, MmResourceRef> resourceRefs;

  /// The REST schema the resource is, in the API's Discovery document:
  /// `api_resource_type_kind` when upstream sets it, else [name].
  final String? apiResource;

  /// The REST field path (Discovery property names, `flatten_object` levels
  /// kept) of every property, by dotted Terraform path: `purpose` of
  /// `google_compute_address` is `[purpose]`, a `flatten_object` child is
  /// `[parentApiName, childApiName]` at its lifted Terraform path.
  final Map<String, List<String>> restPathsByPath;

  const MmResourceOverrides({
    required this.fieldOverrides,
    this.description,
    this.product,
    this.name,
    this.apiResource,
    this.restPathsByPath = const {},
    this.exactlyOneOfGroups = const [],
    this.exactlyOneOfPaths = const [],
    this.atMostOneOfPaths = const [],
    this.enumValuesByPath = const {},
    this.outputPaths = const {},
    this.betaPaths = const {},
    this.resourceRefs = const {},
  });
}

typedef MmResourceRef = ({String resource, String imports});

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
    final beta = <String>{};
    final rest = <String, List<String>>{};
    for (final list in [doc['parameters'], doc['properties']]) {
      if (list is YamlList) {
        _terraformPaths(list, const [], paths.known, beta);
        _enumPaths(list, const [], enums);
        _restPaths(list, const [], const [], rest);
      }
    }

    final topGroup = _readExactlyOneOf(doc, prefix: '');
    if (topGroup != null) groups.add(topGroup);
    _addRelations(doc, '', null, paths);

    final props = doc['properties'];
    if (props is YamlList) {
      for (final p in props) {
        _walkProperty(p as YamlMap, '', overrides, groups, paths);
      }
    }
    final refs = <String, MmResourceRef>{};
    for (final list in [doc['parameters'], props]) {
      if (list is YamlList) _collectResourceRefs(list, const [], refs);
    }
    List<List<String>> inputsOnly(List<List<String>> groups) => [
      for (final g in groups)
        if (g.where((m) => !paths.outputs.contains(m)).toList() case final kept
            when kept.toSet().length >= 2)
          kept,
    ];
    final combined = exclusiveGroups(
      exactlyOne: inputsOnly(paths.withWriteOnlySiblings(paths.exactlyOne)),
      atLeastOne: inputsOnly(paths.withWriteOnlySiblings(paths.atLeastOne)),
      conflicts: [
        for (final c in paths.conflicts)
          if (!paths.outputs.contains(c.$1) && !paths.outputs.contains(c.$2)) c,
        for (final m in paths.writeOnly) (m, '${m}_wo'),
      ],
    );
    return MmResourceOverrides(
      fieldOverrides: overrides,
      description: doc['description'] as String?,
      product: doc['product'] as String?,
      name: doc['name'] as String?,
      apiResource:
          doc['api_resource_type_kind'] as String? ?? doc['name'] as String?,
      restPathsByPath: rest,
      resourceRefs: refs,
      exactlyOneOfGroups: groups,
      exactlyOneOfPaths: combined.exactlyOne,
      atMostOneOfPaths: combined.atMostOne,
      enumValuesByPath: enums,
      outputPaths: {
        for (final o in paths.outputs) paths.terraformPath(o.split('.')),
      },
      betaPaths: beta,
    );
  }

  void _terraformPaths(
    YamlList props,
    List<String> prefix,
    Set<String> sink,
    Set<String> beta, {
    bool inBeta = false,
  }) {
    for (final raw in props) {
      if (raw is! YamlMap || raw['name'] is! String) continue;
      final flat = raw['flatten_object'] == true;
      final path = flat
          ? prefix
          : [...prefix, _toSnakeCase(raw['name'] as String)];
      final isBeta = inBeta || raw['min_version'] == 'beta';
      if (!flat) {
        sink.add(path.join('.'));
        if (isBeta) beta.add(path.join('.'));
      }
      final item = raw['item_type'];
      for (final nested in [
        raw['properties'],
        if (item is YamlMap) item['properties'],
      ]) {
        if (nested is YamlList) {
          _terraformPaths(nested, path, sink, beta, inBeta: isBeta);
        }
      }
    }
  }

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
          sink.resolve(
            [
              for (final s in v.toString().split('.'))
                if (int.tryParse(s) == null) _toSnakeCase(s),
            ],
            parent: parent,
            self: self,
          ),
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

  void _walkProperty(
    YamlMap prop,
    String prefix,
    Map<String, Constraints>? sink,
    List<List<String>>? groupSink,
    _Relations pathSink,
  ) {
    final tfName = _terraformName(prop);
    final fullKey = prefix.isEmpty ? tfName : '$prefix.$tfName';
    final childPrefix = prop['flatten_object'] == true ? prefix : fullKey;
    if (prop['flatten_object'] == true) pathSink.flattened.add(fullKey);

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

    if (prop['output'] == true || pathSink.outputs.contains(prefix)) {
      pathSink.outputs.add(fullKey);
    } else {
      if (prop['write_only'] == true) {
        final path = pathSink.terraformPath([
          ...prefix.split('.').where((s) => s.isNotEmpty),
          _toSnakeCase(prop['name'] as String),
        ]);
        pathSink.writeOnly.add(path);
        if (prop['required'] == true) {
          pathSink.exactlyOne.add([path, '${path}_wo']);
        }
      }
      final propGroup = _readExactlyOneOf(prop, prefix: childPrefix);
      if (propGroup != null) groupSink?.add(propGroup);
      _addRelations(prop, prefix, fullKey, pathSink);
    }

    final nested = prop['properties'];
    if (nested is YamlList) {
      for (final n in nested) {
        _walkProperty(n as YamlMap, childPrefix, sink, groupSink, pathSink);
      }
      if (nested.isNotEmpty &&
          prop['allow_empty_object'] != true &&
          nested.every(
            (n) => pathSink.outputs.contains(
              [
                if (childPrefix.isNotEmpty) childPrefix,
                _terraformName(n as YamlMap),
              ].join('.'),
            ),
          )) {
        pathSink.outputs.add(fullKey);
      }
    }
    final item = prop['item_type'];
    final itemProps = item is YamlMap ? item['properties'] : null;
    if (itemProps is YamlList) {
      for (final n in itemProps) {
        _walkProperty(n as YamlMap, childPrefix, null, null, pathSink);
      }
    }
  }

  void _enumPaths(
    YamlList props,
    List<String> prefix,
    Map<String, List<String>> sink,
  ) {
    for (final raw in props) {
      if (raw is! YamlMap || raw['name'] is! String) continue;
      final path = raw['flatten_object'] == true
          ? prefix
          : [...prefix, _toSnakeCase(raw['name'] as String)];
      if (_enumValues(raw) case final values? when path != prefix) {
        sink[path.join('.')] = values;
      }
      final item = raw['item_type'];
      final value = raw['value_type'];
      for (final nested in [
        raw['properties'],
        if (item is YamlMap) item['properties'],
        if (value is YamlMap) value['properties'],
      ]) {
        if (nested is YamlList) _enumPaths(nested, path, sink);
      }
    }
  }

  void _restPaths(
    YamlList props,
    List<String> prefix,
    List<String> restPrefix,
    Map<String, List<String>> sink,
  ) {
    for (final raw in props) {
      if (raw is! YamlMap || raw['name'] is! String) continue;
      final name = raw['name'] as String;
      final flat = raw['flatten_object'] == true;
      final path = flat ? prefix : [...prefix, _toSnakeCase(name)];
      final restPath = [...restPrefix, raw['api_name'] as String? ?? name];
      if (!flat) sink[path.join('.')] = restPath;
      final item = raw['item_type'];
      final value = raw['value_type'];
      for (final nested in [
        raw['properties'],
        if (item is YamlMap) item['properties'],
        if (value is YamlMap) value['properties'],
      ]) {
        if (nested is YamlList) _restPaths(nested, path, restPath, sink);
      }
    }
  }

  void _collectResourceRefs(
    YamlList props,
    List<String> prefix,
    Map<String, MmResourceRef> sink,
  ) {
    for (final raw in props) {
      if (raw is! YamlMap || raw['output'] == true) continue;
      final name = raw['name'];
      if (name is! String) continue;
      final path = raw['flatten_object'] == true
          ? prefix
          : [...prefix, _toSnakeCase(name)];
      final item = raw['item_type'];
      final ref = switch (raw['type']) {
        'ResourceRef' => raw,
        'Array' when item is YamlMap && item['type'] == 'ResourceRef' => item,
        _ => null,
      };
      if (ref case {'resource': final String r, 'imports': final String i}) {
        sink[path.join('.')] = (resource: r, imports: i);
      }
      if (raw['properties'] case final YamlList nested) {
        _collectResourceRefs(nested, path, sink);
      }
      if (item is YamlMap && item['properties'] is YamlList) {
        _collectResourceRefs(item['properties'] as YamlList, path, sink);
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
    final item = prop['item_type'];
    final ev =
        prop['enum_values'] ??
        (prop['type'] == 'Array' && item is YamlMap && item['type'] == 'Enum'
            ? item['enum_values']
            : null);
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

  String _terraformName(YamlMap prop) => prop['name'] is String
      ? _toSnakeCase(prop['name'] as String)
      : prop['api_name'] as String;

  // Matches Magic Modules' google.Underscore (keeps acronym runs together, e.g.
  // IPProtocol -> ip_protocol).
  String _toSnakeCase(String camel) => camel
      .replaceAllMapped(
        RegExp('([A-Z]+)([A-Z][a-z])'),
        (m) => '${m[1]}_${m[2]}',
      )
      .replaceAllMapped(RegExp(r'([a-z\d])([A-Z])'), (m) => '${m[1]}_${m[2]}')
      .replaceFirst('-', '_')
      .replaceFirst('.', '_')
      .toLowerCase();
}

final class _Relations {
  final exactlyOne = <List<String>>[];
  final atLeastOne = <List<String>>[];
  final conflicts = <(String, String)>[];
  final outputs = <String>{};

  // Magic Modules generates a <name>_wo sibling for write_only properties that
  // conflicts with and shares exclusivity groups with the original.
  final writeOnly = <String>{};

  List<List<String>> withWriteOnlySiblings(List<List<String>> groups) => [
    for (final g in groups)
      [
        for (final m in g) ...[m, if (writeOnly.contains(m)) '${m}_wo'],
      ],
  ];

  // Magic Modules' flatten_object levels do not exist in Terraform, but
  // upstream relation rules still reference them.
  final flattened = <String>{};

  String terraformPath(List<String> segments) {
    final out = <String>[];
    for (final s in segments) {
      if (!flattened.contains([...out, s].join('.'))) out.add(s);
    }
    return out.join('.');
  }

  final known = <String>{};

  // Upstream Magic Modules relation paths are inconsistently anchored
  // (sibling, root, ancestor-relative, or child); probe in priority order.
  String resolve(
    List<String> segments, {
    required String parent,
    required String? self,
  }) {
    final absolute = terraformPath(segments);
    final reading = segments.length == 1 && parent.isNotEmpty
        ? '$parent.${segments.single}'
        : absolute;
    if (known.contains(reading)) return reading;
    final ancestors = parent.isEmpty ? const <String>[] : parent.split('.');
    final candidates = [
      absolute,
      for (var i = ancestors.length; i > 0; i--)
        '${ancestors.take(i).join('.')}.$absolute',
      if (parent.isNotEmpty) '$parent.${segments.last}',
      if (self != null) '$self.${segments.last}',
    ];
    return candidates.firstWhere(known.contains, orElse: () => reading);
  }
}
