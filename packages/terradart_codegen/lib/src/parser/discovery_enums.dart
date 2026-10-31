import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

/// The directory under a google lane's schema fixture that holds its copy of
/// the Google API Discovery enums (`tool/fetch_discovery_enums.dart`).
const discoveryDirName = 'discovery';

/// The record of which Discovery schema each Terraform type is.
const discoveryRootsFile = 'roots.yaml';

/// The Discovery schema a Terraform type is: the document key
/// (`compute.v1`), the schema name (`Address`), and the hand path prefixes
/// (Terraform path prefix → REST field path) for a resource whose Terraform
/// shape is not the REST one.
typedef DiscoveryRoot = ({
  String doc,
  String schema,
  Map<String, List<String>> paths,
});

/// One enum a Discovery document declares for a Terraform input.
typedef DiscoveryEnum = ({List<String> values, String doc, String field});

/// The Google API Discovery enum copy of one google lane.
///
/// Each `<name>.<version>.json` is one Discovery document pruned to the
/// properties that lead to an `enum`, with its provenance (`name`,
/// `version`, `revision`, `sourceUrl`), plus the enum query parameters of
/// the methods that take a root schema as their request body. `roots.yaml`
/// records the schema each Terraform type is.
final class DiscoveryEnums {
  DiscoveryEnums({
    required this.docs,
    required this.resources,
    required this.dataSources,
    this.parameters = const {},
  });

  /// Pruned schemas by document key (`compute.v1`).
  final Map<String, Map<String, Object?>> docs;

  /// Enum query parameters by document key, then request schema, then
  /// parameter name (`apikeys.v2` → `V2Key` → `checkExistingUsage`).
  final Map<String, Map<String, Map<String, List<String>>>> parameters;
  final Map<String, DiscoveryRoot> resources;
  final Map<String, DiscoveryRoot> dataSources;

  static final empty = DiscoveryEnums(
    docs: const {},
    resources: const {},
    dataSources: const {},
  );

  /// The copy under `<sourceDir>/discovery`, or null when there is none.
  /// Throws [FormatException] on a malformed file.
  static DiscoveryEnums? load(String sourceDir) {
    final dir = Directory(p.join(sourceDir, discoveryDirName));
    final rootsFile = File(p.join(dir.path, discoveryRootsFile));
    if (!rootsFile.existsSync()) return null;
    final docs = <String, Map<String, Object?>>{};
    final parameters = <String, Map<String, Map<String, List<String>>>>{};
    for (final f in dir.listSync().whereType<File>()) {
      if (!f.path.endsWith('.json')) continue;
      final doc = jsonDecode(f.readAsStringSync());
      if (doc is! Map<String, Object?> || doc['schemas'] is! Map) {
        throw FormatException('${f.path}: no schemas');
      }
      final key = p.basenameWithoutExtension(f.path);
      docs[key] = (doc['schemas'] as Map).cast<String, Object?>();
      if (doc['parameters'] case final Map<String, Object?> bySchema) {
        parameters[key] = {
          for (final MapEntry(key: schema, value: params) in bySchema.entries)
            schema: {
              for (final MapEntry(key: name, value: param)
                  in (params as Map).entries)
                '$name': [for (final v in (param as Map)['enum'] as List) '$v'],
            },
        };
      }
    }
    final roots = parseDiscoveryRoots(rootsFile.readAsStringSync());
    return DiscoveryEnums(
      docs: docs,
      resources: roots.resources,
      dataSources: roots.dataSources,
      parameters: parameters,
    );
  }

  /// The enum the Discovery schema of [type] declares at Terraform [path],
  /// or null when no property resolves or the one that does is no enum.
  ///
  /// [restPath] is the REST field path Magic Modules records for [path]; it
  /// is followed first. Without one, or when it does not resolve, each
  /// Terraform segment matches the property whose name is the same letters
  /// (`ip_protocol` is `IPProtocol`), or their plural (`node_affinity` is
  /// `nodeAffinities`). A top-level input no property resolves falls back to
  /// an enum query parameter of a method that takes the schema
  /// (`V2Key?checkExistingUsage`).
  DiscoveryEnum? lookup(
    String type,
    String path, {
    bool dataSource = false,
    List<String>? restPath,
  }) {
    final root = (dataSource ? dataSources : resources)[type];
    if (root == null) return null;
    final schemas = docs[root.doc];
    if (schemas == null) return null;
    final segments = path.split('.');
    final candidates = <List<String>>[
      ?_handPath(root.paths, segments),
      ?restPath,
      segments,
    ];
    for (final c in candidates) {
      final found = _resolve(schemas, root.schema, c);
      if (found != null) {
        return (
          values: found.values,
          doc: root.doc,
          field: '${root.schema}.${found.field}',
        );
      }
    }
    if (segments.length == 1) {
      final params = parameters[root.doc]?[root.schema] ?? const {};
      if (_match(params.keys, segments.single) case final name?) {
        return (
          values: params[name]!,
          doc: root.doc,
          field: '${root.schema}?$name',
        );
      }
    }
    return null;
  }

  static List<String>? _handPath(
    Map<String, List<String>> paths,
    List<String> segments,
  ) {
    for (var i = segments.length; i > 0; i--) {
      final prefix = segments.take(i).join('.');
      if (paths[prefix] case final rest?) {
        return [...rest, ...segments.skip(i)];
      }
    }
    return null;
  }

  static ({List<String> values, String field})? _resolve(
    Map<String, Object?> schemas,
    String root,
    List<String> segments,
  ) {
    Object? node = schemas[root];
    final field = <String>[];
    for (final s in segments) {
      node = _object(schemas, node);
      final props = node is Map ? node['properties'] : null;
      if (props is! Map) return null;
      final key = _match(props.keys.cast<String>(), s);
      if (key == null) return null;
      field.add(key);
      node = props[key];
    }
    final values = _enum(schemas, node);
    return values == null ? null : (values: values, field: field.join('.'));
  }

  /// [node] with `$ref`, `items` and `additionalProperties` followed to the
  /// object that has `properties`.
  static Object? _object(Map<String, Object?> schemas, Object? node) {
    for (var hops = 0; hops < 8 && node is Map; hops++) {
      if (node['properties'] != null) return node;
      node = switch (node) {
        {r'$ref': final String ref} => schemas[ref],
        {'items': final items} => items,
        {'additionalProperties': final value} => value,
        _ => null,
      };
    }
    return node;
  }

  static List<String>? _enum(Map<String, Object?> schemas, Object? node) {
    for (var hops = 0; hops < 8 && node is Map; hops++) {
      if (node['enum'] case final List<Object?> values) {
        return [for (final v in values) '$v'];
      }
      node = switch (node) {
        {r'$ref': final String ref} => schemas[ref],
        {'items': final items} => items,
        _ => null,
      };
    }
    return null;
  }

  static String? _match(Iterable<String> keys, String segment) {
    final want = _norm(segment);
    for (final form in [
      want,
      '${want}s',
      '${want}es',
      if (want.endsWith('y')) '${want.substring(0, want.length - 1)}ies',
    ]) {
      for (final k in keys) {
        if (_norm(k) == form) return k;
      }
    }
    if (want.endsWith('s')) {
      final singular = want.substring(0, want.length - 1);
      for (final k in keys) {
        if (_norm(k) == singular) return k;
      }
    }
    return null;
  }

  static String _norm(String s) =>
      s.toLowerCase().replaceAll(RegExp('[^a-z0-9]'), '');
}

/// Whether [value] is a Discovery enum's unset sentinel
/// (`TYPE_UNSPECIFIED`, `UNSPECIFIED`, `UNSPECIFIED_MODE`).
bool isDiscoverySentinel(String value) =>
    RegExp(r'(^|_)UNSPECIFIED($|_)').hasMatch(value);

/// `roots.yaml`: the `resources:` and `data_sources:` maps of Terraform type
/// to `{doc, schema, paths?}`; a null entry is a type no Discovery schema
/// was found for.
({
  Map<String, DiscoveryRoot> resources,
  Map<String, DiscoveryRoot> dataSources,
  String? providerVersion,
  String? upstreamRef,
})
parseDiscoveryRoots(String yamlText) {
  final doc = loadYaml(yamlText);
  if (doc is! YamlMap) {
    throw const FormatException('$discoveryRootsFile is not a map');
  }
  Map<String, DiscoveryRoot> section(String key) {
    final raw = doc[key];
    if (raw == null) return const {};
    if (raw is! YamlMap) {
      throw FormatException('$discoveryRootsFile: $key is not a map');
    }
    return {
      for (final MapEntry(:key, :value) in raw.entries)
        if (value != null) '$key': _root('$key', value),
    };
  }

  return (
    resources: section('resources'),
    dataSources: section('data_sources'),
    providerVersion: doc['provider_version']?.toString(),
    upstreamRef: doc['upstream_ref']?.toString(),
  );
}

DiscoveryRoot _root(String type, Object? value) {
  if (value case {'doc': final String doc, 'schema': final String schema}) {
    final paths = (value as Map)['paths'];
    return (
      doc: doc,
      schema: schema,
      paths: {
        if (paths is Map)
          for (final MapEntry(:key, :value) in paths.entries)
            '$key': '$value'.split('.'),
      },
    );
  }
  throw FormatException('$discoveryRootsFile: $type needs doc and schema');
}

/// [doc] (a Discovery REST document) reduced to the schemas and properties
/// under [roots] that lead to an `enum`: each kept property is `enum`,
/// `$ref`, `items`, `additionalProperties` or `properties`, nothing else.
/// The provenance fields stay, and `parameters` keeps the enum query
/// parameters of every method whose request body is one of [roots], by
/// root (the first method in name order wins a name two methods share).
Map<String, Object?> pruneDiscoveryDoc(
  Map<String, Object?> doc,
  Iterable<String> roots, {
  required String sourceUrl,
}) {
  final schemas = (doc['schemas'] as Map? ?? const {}).cast<String, Object?>();
  final hasEnum = <String, bool>{};
  final kept = <String, Object?>{};

  bool leadsToEnum(Object? node, Set<String> seen) {
    if (node is! Map) return false;
    if (node['enum'] is List) return true;
    if (node[r'$ref'] case final String ref) {
      if (hasEnum[ref] case final known?) return known;
      if (!seen.add(ref)) return false;
      final result = leadsToEnum(schemas[ref], seen);
      hasEnum[ref] = result;
      return result;
    }
    if (leadsToEnum(node['items'], seen)) return true;
    if (leadsToEnum(node['additionalProperties'], seen)) return true;
    final props = node['properties'];
    if (props is Map) {
      for (final v in props.values) {
        if (leadsToEnum(v, seen)) return true;
      }
    }
    return false;
  }

  Object? prune(Object? node) {
    if (node is! Map) return null;
    if (node['enum'] case final List<Object?> values) {
      return {'enum': values};
    }
    if (node[r'$ref'] case final String ref) {
      if (!leadsToEnum(node, {})) return null;
      if (!kept.containsKey(ref)) {
        kept[ref] = null;
        kept[ref] = prune(schemas[ref]);
      }
      return {r'$ref': ref};
    }
    for (final key in ['items', 'additionalProperties']) {
      if (node[key] != null) {
        final inner = prune(node[key]);
        return inner == null ? null : {key: inner};
      }
    }
    final props = node['properties'];
    if (props is Map) {
      final out = <String, Object?>{
        for (final MapEntry(:key, :value) in props.entries)
          '$key': ?prune(value),
      };
      return out.isEmpty ? null : {'properties': out};
    }
    return null;
  }

  for (final root in roots) {
    if (schemas[root] == null || kept.containsKey(root)) continue;
    kept[root] = null;
    kept[root] =
        prune(schemas[root]) ?? const {'properties': <String, Object?>{}};
  }
  final rootSet = roots.toSet();
  final methods = <(String, String, Map<Object?, Object?>)>[];
  void walkResources(Object? resources) {
    if (resources is! Map) return;
    for (final resource in resources.values) {
      if (resource is! Map) continue;
      if (resource['methods'] case final Map<Object?, Object?> byName) {
        for (final MapEntry(key: name, value: method) in byName.entries) {
          if (method case {
            'request': {r'$ref': final String ref},
            'parameters': final Map<Object?, Object?> params,
          } when rootSet.contains(ref)) {
            methods.add((ref, '$name', params));
          }
        }
      }
      walkResources(resource['resources']);
    }
  }

  walkResources(doc['resources']);
  methods.sort((a, b) => a.$2.compareTo(b.$2));
  final parameters = <String, Map<String, Object?>>{};
  for (final (ref, _, params) in methods) {
    for (final MapEntry(key: name, value: param) in params.entries) {
      if (param case {'enum': final List<Object?> values}) {
        (parameters[ref] ??= {}).putIfAbsent('$name', () => {'enum': values});
      }
    }
  }
  return {
    'name': doc['name'],
    'version': doc['version'],
    'revision': doc['revision'],
    'sourceUrl': sourceUrl,
    'schemas': {
      for (final k in kept.keys.toList()..sort())
        if (kept[k] != null) k: kept[k],
    },
    if (parameters.isNotEmpty)
      'parameters': {
        for (final k in parameters.keys.toList()..sort())
          k: {
            for (final n in parameters[k]!.keys.toList()..sort())
              n: parameters[k]![n],
          },
      },
  };
}
