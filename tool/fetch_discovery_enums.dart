// fetch_discovery_enums.dart — refreshes a google lane's checked-in copy of
// the Google API Discovery enums (`<schemaDir>/discovery/`), the machine
// source of the value sets Magic Modules leaves as a plain `String`.
//
// Usage (from repo root, network):
//   dart tool/fetch_discovery_enums.dart --lane google
//   dart tool/fetch_discovery_enums.dart --lane google-beta
//
// Each lane type resolves to one Discovery schema:
//   * a Magic Modules resource: the product's `product.yaml` at the MM ref
//     the lane's YAML was synced at gives the API host and version
//     (`versions[ga|beta].base_url`), and the resource's
//     `api_resource_type_kind` (else `name`) is the schema;
//   * a data source without its own MM YAML: its resource's schema;
//   * a hand-written resource: its entry in tool/discovery_sources.yaml,
//     which also wins over the derived root.
// The tool writes one `<api>.<version>.json` per Discovery document, pruned
// to the properties under those schemas that lead to an `enum` and carrying
// its provenance (`name`, `version`, `revision`, `sourceUrl`), and
// `roots.yaml`, the type → schema record. tool/wrap_lanes.dart re-runs it on
// regen when `roots.yaml` no longer matches the fixture
// ([staleDiscovery]) and fails the wrap gate on a stale record.
// Never hand-edit the output.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;
import 'package:terradart_codegen/src/codegen/wrapper_overrides/yaml_loader.dart';
import 'package:terradart_codegen/src/parser/discovery_enums.dart';
import 'package:terradart_codegen/src/parser/mm_yaml_parser.dart';
import 'package:yaml/yaml.dart';

import 'http_retry.dart';
import 'wrap_lanes.dart';

const discoverySourcesPath = 'tool/discovery_sources.yaml';
const mmYamlSourcesPath = 'tool/mm_yaml_sources.yaml';
const _mmRaw =
    'https://raw.githubusercontent.com/GoogleCloudPlatform/magic-modules';

/// The hand entries of [lane] in tool/discovery_sources.yaml: `types`,
/// Terraform type (`data.<type>` for a data source) → `{api, version,
/// schema?, url?, paths?, passthrough?}`, and `products`, MM product → `{api, version}` for
/// a product whose `base_url` names no version.
({
  Map<String, Map<String, Object?>> types,
  Map<String, Map<String, Object?>> products,
})
handRoots(String yamlText, String lane) {
  final doc = loadYaml(yamlText);
  final section = doc is YamlMap ? doc[lane] : null;
  if (section == null) return (types: const {}, products: const {});
  if (section is! YamlMap) {
    throw FormatException('$discoverySourcesPath: $lane is not a map');
  }
  Map<String, Map<String, Object?>> entries(String key) {
    final raw = section[key];
    if (raw == null) return const {};
    if (raw is! YamlMap) {
      throw FormatException('$discoverySourcesPath: $lane.$key is not a map');
    }
    final out = <String, Map<String, Object?>>{};
    for (final MapEntry(key: name, :value) in raw.entries) {
      if (value case {'api': final String _, 'version': final String _}) {
        out['$name'] = {
          for (final MapEntry(:key, :value) in (value as YamlMap).entries)
            '$key': value is YamlMap
                ? {for (final e in value.entries) '${e.key}': '${e.value}'}
                : '$value',
        };
      } else {
        throw FormatException(
          '$discoverySourcesPath: $lane.$key.$name needs api and version',
        );
      }
    }
    return out;
  }

  return (types: entries('types'), products: entries('products'));
}

/// The digest `roots.yaml` records of [lane]'s hand roots, so an edit to
/// tool/discovery_sources.yaml makes the copy stale.
String handRootsDigest(String yamlText, String lane) {
  final hand = handRoots(yamlText, lane);
  return sha256
      .convert(
        utf8.encode(
          jsonEncode({'types': hand.types, 'products': hand.products}),
        ),
      )
      .toString()
      .substring(0, 16);
}

/// Why [lane]'s Discovery copy no longer matches what it was fetched for:
/// empty when `roots.yaml` records the fixture's `provider_version.txt`, the
/// MM ref the lane's YAML was synced at, the digest of its hand roots, and
/// exactly the types its overrides wrap.
List<String> staleDiscovery(WrapLane lane, String repoRoot) {
  final record = File(
    p.join(repoRoot, lane.schemaDir, discoveryDirName, discoveryRootsFile),
  );
  const label = '$discoveryDirName/$discoveryRootsFile';
  if (!record.existsSync()) return ['$label is missing'];
  final doc = loadYaml(record.readAsStringSync());
  if (doc is! YamlMap) return ['$label is malformed'];
  final version = File(
    p.join(repoRoot, lane.schemaDir, 'provider_version.txt'),
  ).readAsStringSync().trim();
  final ref = mmSources(lane, repoRoot).ref;
  final digest = handRootsDigest(
    File(p.join(repoRoot, discoverySourcesPath)).readAsStringSync(),
    lane.name,
  );
  final reasons = <String>[
    if ('${doc['provider_version']}' != version)
      '$label records provider ${doc['provider_version']}, the fixture is '
          '$version',
    if ('${doc['upstream_ref']}' != ref)
      '$label records MM ref ${doc['upstream_ref']}, the lane is at $ref',
    if ('${doc['hand_roots']}' != digest)
      '$label predates the $discoverySourcesPath entries of ${lane.name}',
  ];
  final types = laneTypes(p.join(repoRoot, lane.overridesRoot));
  for (final (dataSource, header) in [
    (false, 'resources'),
    (true, 'data_sources'),
  ]) {
    final section = doc[header];
    final listed = {
      if (section is YamlMap)
        for (final k in section.keys) '$k',
    };
    final wrapped = {
      for (final (d, t) in types)
        if (d == dataSource) t,
    };
    final added = wrapped.difference(listed).toList()..sort();
    final removed = listed.difference(wrapped).toList()..sort();
    if (added.isNotEmpty) {
      reasons.add('$label $header lacks ${added.join(', ')}');
    }
    if (removed.isNotEmpty) {
      reasons.add(
        '$label $header lists ${removed.join(', ')}, which no override wraps',
      );
    }
  }
  return reasons;
}

/// The schema of [schemas] that [name] is: itself, else the shortest one
/// whose name ends with it (`GoogleCloudAiplatformV1Endpoint` for
/// `Endpoint`).
String? discoverySchemaNamed(Iterable<String> schemas, String name) {
  if (schemas.contains(name)) return name;
  final suffixed = schemas.where((s) => s.endsWith(name)).toList()
    ..sort((a, b) => a.length.compareTo(b.length));
  return suffixed.firstOrNull;
}

/// The Discovery URLs of [api] at [version]: the API host's own endpoint,
/// then the public directory.
List<Uri> apiUrls(String api, String version) => [
  Uri.parse('https://$api.googleapis.com/\$discovery/rest?version=$version'),
  Uri.parse('https://www.googleapis.com/discovery/v1/apis/$api/$version/rest'),
];

/// The lane's types that the fixture's override registry wraps, as
/// `(dataSource, type)`.
List<(bool, String)> laneTypes(String overridesRoot) {
  final loaded = YamlOverrideLoader(rootDir: overridesRoot).load();
  return [
    for (final t in loaded.resources.keys.toList()..sort()) (false, t),
    for (final t in loaded.dataSources.keys.toList()..sort()) (true, t),
  ];
}

/// The MM ref and MM upstream path per fixture key (`<type>` or
/// `data_<type>`) of [lane].
({String ref, Map<String, String?> upstream}) mmSources(
  WrapLane lane,
  String repoRoot,
) {
  if (lane.mmSync != null) {
    final doc =
        loadYaml(
              File(
                p.join(repoRoot, lane.schemaDir, mmSourcesFile),
              ).readAsStringSync(),
            )
            as YamlMap;
    return (
      ref: '${doc['upstream_ref']}',
      upstream: {
        for (final e in (doc['files'] as YamlMap).entries)
          '${e.key}': e.value as String?,
      },
    );
  }
  final doc =
      loadYaml(File(p.join(repoRoot, mmYamlSourcesPath)).readAsStringSync())
          as YamlMap;
  return (
    ref: File(
      p.join(repoRoot, lane.schemaDir, 'mm_upstream_ref.txt'),
    ).readAsStringSync().trim(),
    upstream: {
      for (final e in (doc['files'] as YamlMap).entries)
        '${e.key}': (e.value as YamlMap)['upstream'] as String?,
    },
  );
}

/// The Discovery URLs to try, in order, for a product `base_url`
/// (`https://{{region}}-aiplatform.googleapis.com/v1/`).
List<Uri> discoveryUrls(String baseUrl) {
  final uri = Uri.parse(baseUrl.replaceAll(RegExp(r'\{\{[^}]+\}\}[-.]'), ''));
  final version = uri.pathSegments.lastWhere(
    (s) => RegExp(r'^v\d').hasMatch(s),
    orElse: () => '',
  );
  if (version.isEmpty) return const [];
  final api = uri.host == 'www.googleapis.com'
      ? uri.pathSegments.first
      : uri.host.split('.').first;
  return [
    if (uri.host != 'www.googleapis.com')
      Uri.parse('https://${uri.host}/\$discovery/rest?version=$version'),
    Uri.parse(
      'https://www.googleapis.com/discovery/v1/apis/$api/$version/rest',
    ),
  ];
}

Future<void> main(List<String> args) async {
  final laneName = switch (args) {
    ['--lane', final name] => name,
    [final a] when a.startsWith('--lane=') => a.substring(7),
    _ => null,
  };
  if (laneName == null) {
    print(
      'usage: dart tool/fetch_discovery_enums.dart --lane google|google-beta',
    );
    exit(1);
  }
  final repoRoot = p.normalize(
    p.join(p.dirname(Platform.script.toFilePath()), '..'),
  );
  final lane = parseWrapLanes(
    File(p.join(repoRoot, providersPath)).readAsStringSync(),
  ).firstWhere((l) => l.name == laneName);
  final result = await fetchDiscovery(lane, repoRoot);
  print(
    'fetch_discovery_enums ($laneName): ${result.docs} documents, '
    '${result.resolved} types resolved, ${result.unresolved} without a schema',
  );
}

/// Refreshes `<schemaDir>/discovery` of [lane].
Future<({int docs, int resolved, int unresolved})> fetchDiscovery(
  WrapLane lane,
  String repoRoot,
) async {
  final schemaDir = p.join(repoRoot, lane.schemaDir);
  final version = File(
    p.join(schemaDir, 'provider_version.txt'),
  ).readAsStringSync().trim();
  final beta = lane.resourceProvider == 'google-beta';
  final mm = mmSources(lane, repoRoot);
  final handText = File(
    p.join(repoRoot, discoverySourcesPath),
  ).readAsStringSync();
  final hand = handRoots(handText, lane.name);
  final client = HttpClient();

  final cache = Platform.environment['DISCOVERY_CACHE'];
  Future<String?> get(Uri url) async {
    final cached = cache == null
        ? null
        : File(p.join(cache, base64Url.encode(utf8.encode('$url'))));
    if (cached != null && cached.existsSync()) {
      final text = cached.readAsStringSync();
      return text.isEmpty ? null : text;
    }
    String? ok;
    try {
      final response = await getRetryingTransient(client, url);
      final body = await response.transform(utf8.decoder).join();
      ok = response.statusCode == 200 ? body : null;
    } on SocketException {
      ok = null;
    }
    if (cached != null) {
      cached
        ..createSync(recursive: true)
        ..writeAsStringSync(ok ?? '');
    }
    return ok;
  }

  final products = <String, Future<String?>>{};
  final documents = <String, Future<(Map<String, Object?>, Uri)?>>{};

  Future<(Map<String, Object?>, Uri)?> document(List<Uri> urls) =>
      documents.putIfAbsent(urls.join(' '), () async {
        for (final url in urls) {
          final body = await get(url);
          if (body != null) {
            return (jsonDecode(body) as Map<String, Object?>, url);
          }
        }
        return null;
      });

  Future<List<String>> baseUrls(String product) async {
    final text = await products.putIfAbsent(
      product,
      () => get(
        Uri.parse('$_mmRaw/${mm.ref}/mmv1/products/$product/product.yaml'),
      ),
    );
    if (text == null) return const [];
    final doc = loadYaml(text);
    final versions = doc is YamlMap ? doc['versions'] : null;
    if (versions is! YamlList) return const [];
    YamlMap? pick(String name) => versions
        .whereType<YamlMap>()
        .where((v) => v['name'] == name)
        .firstOrNull;
    final v = (beta ? pick('beta') : null) ?? pick('ga');
    return [
      for (final key in ['base_url', 'cai_base_url'])
        if (v?[key] case final String url) url,
    ];
  }

  final types = laneTypes(p.join(repoRoot, lane.overridesRoot));
  final roots =
      <
        (bool, String),
        ({
          String doc,
          String schema,
          Map<String, String> paths,
          bool passthrough,
        })?
      >{};
  final reasons = <(bool, String), String>{};
  final schemasByDoc = <String, Set<String>>{};
  final docBodies = <String, (Map<String, Object?>, Uri)>{};

  for (final (dataSource, type) in types) {
    final key = dataSource ? 'data_$type' : type;
    final handKey = dataSource ? 'data.$type' : type;
    List<Uri>? urls;
    String? schema;
    var paths = const <String, String>{};
    var passthrough = false;
    final h = hand.types[handKey] ?? (dataSource ? hand.types[type] : null);
    final upstream =
        mm.upstream[key] ?? (dataSource ? mm.upstream[type] : null);
    final mmFile = File(
      p.join(schemaDir, 'mm', '${mm.upstream[key] != null ? key : type}.yaml'),
    );
    if (upstream != null && mmFile.existsSync()) {
      schema = const MmYamlParser()
          .parseString(mmFile.readAsStringSync())
          .apiResource;
      final product = p.split(upstream)[2];
      if (hand.products[product] case final hp?) {
        urls = apiUrls('${hp['api']}', '${hp['version']}');
      } else {
        urls = [
          for (final base in await baseUrls(product)) ...discoveryUrls(base),
        ];
      }
    }
    if (h != null) {
      urls = [
        if (h['url'] case final String url) Uri.parse(url),
        ...apiUrls('${h['api']}', '${h['version']}'),
      ];
      schema = h['schema'] as String? ?? schema;
      paths = (h['paths'] as Map<String, String>?) ?? const {};
      passthrough = h['passthrough'] == 'true';
    }
    if (urls == null || urls.isEmpty || schema == null) {
      roots[(dataSource, type)] = null;
      reasons[(dataSource, type)] = upstream == null
          ? 'no Magic Modules YAML and no hand root'
          : 'no Discovery version in the base_url of ${p.split(upstream)[2]}';
      continue;
    }
    final fetched = await document(urls);
    if (fetched == null) {
      roots[(dataSource, type)] = null;
      reasons[(dataSource, type)] =
          'no public Discovery document at ${urls.join(' or ')}';
      continue;
    }
    final (body, _) = fetched;
    final docKey = '${body['name']}.${body['version']}';
    docBodies[docKey] = fetched;
    final named = discoverySchemaNamed(
      ((body['schemas'] as Map?) ?? const {}).keys.cast<String>(),
      schema,
    );
    if (named == null) {
      roots[(dataSource, type)] = null;
      reasons[(dataSource, type)] = 'no schema $schema in $docKey';
      continue;
    }
    schema = named;
    roots[(dataSource, type)] = (
      doc: docKey,
      schema: schema,
      paths: paths,
      passthrough: passthrough,
    );
    schemasByDoc.putIfAbsent(docKey, () => {}).add(schema);
  }
  client.close();

  final outDir = Directory(p.join(schemaDir, discoveryDirName));
  if (outDir.existsSync()) outDir.deleteSync(recursive: true);
  outDir.createSync(recursive: true);
  const encoder = JsonEncoder.withIndent('  ');
  for (final MapEntry(key: docKey, value: schemas) in schemasByDoc.entries) {
    final (body, url) = docBodies[docKey]!;
    File(p.join(outDir.path, '$docKey.json')).writeAsStringSync(
      '${encoder.convert(pruneDiscoveryDoc(body, schemas, sourceUrl: '$url'))}\n',
    );
  }
  File(p.join(outDir.path, discoveryRootsFile)).writeAsStringSync(
    renderDiscoveryRoots(
      lane: lane.name,
      providerVersion: version,
      upstreamRef: mm.ref,
      handRoots: handRootsDigest(handText, lane.name),
      roots: roots,
      reasons: reasons,
    ),
  );
  return (
    docs: schemasByDoc.length,
    resolved: roots.values.nonNulls.length,
    unresolved: reasons.length,
  );
}

String renderDiscoveryRoots({
  required String lane,
  required String providerVersion,
  required String upstreamRef,
  required String handRoots,
  required Map<
    (bool, String),
    ({String doc, String schema, Map<String, String> paths, bool passthrough})?
  >
  roots,
  required Map<(bool, String), String> reasons,
}) {
  final out = StringBuffer()
    ..writeln(
      '# GENERATED by `dart tool/fetch_discovery_enums.dart --lane $lane` - '
      'never hand-edit.',
    )
    ..writeln(
      '# The Discovery schema each wrapped type is (doc = <api>.<version>.json '
      'beside this file);',
    )
    ..writeln(
      '# null when none was found. tool/wrap_lanes.dart re-fetches when this '
      'record no longer',
    )
    ..writeln(
      '# matches provider_version.txt, the MM ref, the wrapped types or '
      '$discoverySourcesPath.',
    )
    ..writeln('provider_version: $providerVersion')
    ..writeln('upstream_ref: $upstreamRef')
    ..writeln('hand_roots: $handRoots');
  for (final (dataSource, header) in [
    (false, 'resources'),
    (true, 'data_sources'),
  ]) {
    final entries = roots.entries.where((e) => e.key.$1 == dataSource).toList()
      ..sort((a, b) => a.key.$2.compareTo(b.key.$2));
    if (entries.isEmpty) continue;
    out.writeln('$header:');
    for (final MapEntry(key: (_, type), value: root) in entries) {
      if (root == null) {
        out.writeln('  $type: null  # ${reasons[(dataSource, type)]}');
        continue;
      }
      out.writeln('  $type:');
      out.writeln('    doc: ${root.doc}');
      out.writeln('    schema: ${root.schema}');
      if (root.passthrough) out.writeln('    passthrough: true');
      if (root.paths.isNotEmpty) {
        out.writeln('    paths:');
        for (final MapEntry(:key, :value) in root.paths.entries) {
          out.writeln('      $key: $value');
        }
      }
    }
  }
  return out.toString();
}
