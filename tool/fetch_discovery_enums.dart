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

Map<String, String> absentApis(String yamlText, String lane) {
  final doc = loadYaml(yamlText);
  final raw = doc is YamlMap && doc[lane] is YamlMap
      ? (doc[lane] as YamlMap)['absent']
      : null;
  if (raw == null) return const {};
  if (raw is! YamlMap) {
    throw FormatException('$discoverySourcesPath: $lane.absent is not a map');
  }
  final out = <String, String>{};
  for (final MapEntry(:key, :value) in raw.entries) {
    if (value is! String || value.isEmpty) {
      throw FormatException(
        '$discoverySourcesPath: $lane.absent.$key needs a reason',
      );
    }
    out['$key'] = value;
  }
  return out;
}

String discoveryApiOf(Uri url) => url.host == 'www.googleapis.com'
    ? '${url.pathSegments[3]}.${url.pathSegments[4]}'
    : '${url.host.split('.').first}.${url.queryParameters['version']}';

String handRootsDigest(String yamlText, String lane) {
  final hand = handRoots(yamlText, lane);
  return sha256
      .convert(
        utf8.encode(
          jsonEncode({
            'types': hand.types,
            'products': hand.products,
            'absent': absentApis(yamlText, lane),
          }),
        ),
      )
      .toString()
      .substring(0, 16);
}

String discoveryDocDigest(String text) =>
    sha256.convert(utf8.encode(text)).toString();

List<String> discoveryDigestDrift(Directory dir, Object? digests) {
  const label = '$discoveryDirName/$discoveryRootsFile';
  final recorded = {
    if (digests is Map)
      for (final MapEntry(:key, :value) in digests.entries) '$key': '$value',
  };
  final onDisk = {
    if (dir.existsSync())
      for (final f in dir.listSync().whereType<File>())
        if (f.path.endsWith('.json')) p.basenameWithoutExtension(f.path): f,
  };
  final reasons = <String>[];
  for (final doc in recorded.keys.toList()..sort()) {
    final f = onDisk[doc];
    if (f == null) {
      reasons.add('$label records $doc.json, which is missing');
    } else if (discoveryDocDigest(f.readAsStringSync()) != recorded[doc]) {
      reasons.add(
        '$discoveryDirName/$doc.json does not match the digest $label '
        'records (edited by hand?)',
      );
    }
  }
  for (final doc in onDisk.keys.toList()..sort()) {
    if (!recorded.containsKey(doc)) {
      reasons.add('$discoveryDirName/$doc.json has no digest in $label');
    }
  }
  return reasons;
}

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
    ...discoveryDigestDrift(record.parent, doc['digests']),
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

// Per-API *.googleapis.com Discovery endpoints return 400/403 or fail DNS when absent; www.googleapis.com returns 404.
bool discoveryAbsent(Uri url, {int? status, String? socketError}) {
  final ownHost =
      url.host.endsWith('.googleapis.com') && url.host != 'www.googleapis.com';
  if (socketError != null) {
    return ownHost && socketError.contains('Failed host lookup');
  }
  return status == 404 || (ownHost && (status == 400 || status == 403));
}

String? discoverySchemaNamed(Iterable<String> schemas, String name) {
  if (schemas.contains(name)) return name;
  final suffixed = schemas.where((s) => s.endsWith(name)).toList()
    ..sort((a, b) => a.length.compareTo(b.length));
  return suffixed.firstOrNull;
}

List<Uri> apiUrls(String api, String version) => [
  Uri.parse('https://$api.googleapis.com/\$discovery/rest?version=$version'),
  Uri.parse('https://www.googleapis.com/discovery/v1/apis/$api/$version/rest'),
];

List<(bool, String)> laneTypes(String overridesRoot) {
  final loaded = YamlOverrideLoader(rootDir: overridesRoot).load();
  return [
    for (final t in loaded.resources.keys.toList()..sort()) (false, t),
    for (final t in loaded.dataSources.keys.toList()..sort()) (true, t),
  ];
}

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
  final absent = absentApis(handText, lane.name);
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
      ok = response.statusCode == 200
          ? body
          : discoveryAbsent(url, status: response.statusCode)
          ? null
          : throw HttpException(
              '$url answered ${response.statusCode}',
              uri: url,
            );
    } on SocketException catch (e) {
      if (!discoveryAbsent(url, socketError: e.message)) {
        throw HttpException('$url: ${e.message}', uri: url);
      }
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
        ({String doc, String schema, Map<String, String> paths})?
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
    }
    if (urls == null || urls.isEmpty || schema == null) {
      roots[(dataSource, type)] = null;
      reasons[(dataSource, type)] = upstream == null
          ? 'no Magic Modules YAML and no hand root'
          : 'no Discovery version in the base_url of ${p.split(upstream)[2]}';
      continue;
    }
    if (absent[discoveryApiOf(urls.last)] case final why?) {
      roots[(dataSource, type)] = null;
      reasons[(dataSource, type)] = why;
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
    roots[(dataSource, type)] = (doc: docKey, schema: schema, paths: paths);
    schemasByDoc.putIfAbsent(docKey, () => {}).add(schema);
  }
  client.close();

  final outDir = Directory(p.join(schemaDir, discoveryDirName));
  if (outDir.existsSync()) outDir.deleteSync(recursive: true);
  outDir.createSync(recursive: true);
  const encoder = JsonEncoder.withIndent('  ');
  final digests = <String, String>{};
  for (final MapEntry(key: docKey, value: schemas) in schemasByDoc.entries) {
    final (body, url) = docBodies[docKey]!;
    final text =
        '${encoder.convert(pruneDiscoveryDoc(body, schemas, sourceUrl: '$url'))}\n';
    File(p.join(outDir.path, '$docKey.json')).writeAsStringSync(text);
    digests[docKey] = discoveryDocDigest(text);
  }
  File(p.join(outDir.path, discoveryRootsFile)).writeAsStringSync(
    renderDiscoveryRoots(
      lane: lane.name,
      providerVersion: version,
      upstreamRef: mm.ref,
      handRoots: handRootsDigest(handText, lane.name),
      digests: digests,
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
  required Map<String, String> digests,
  required Map<
    (bool, String),
    ({String doc, String schema, Map<String, String> paths})?
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
      '$discoverySourcesPath,',
    )
    ..writeln(
      '# and fails the wrap gate when a document no longer matches its '
      'digest.',
    )
    ..writeln('provider_version: $providerVersion')
    ..writeln('upstream_ref: $upstreamRef')
    ..writeln('hand_roots: $handRoots');
  if (digests.isNotEmpty) {
    out.writeln('digests:');
    for (final doc in digests.keys.toList()..sort()) {
      out.writeln('  $doc: ${digests[doc]}');
    }
  }
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
