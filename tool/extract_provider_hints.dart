// tool/extract_provider_hints.dart
//
// Extracts enum hints for a plugin-framework provider (cloudflare, appwrite)
// from the provider's Go source at the pinned tag, into a Magic Modules YAML
// subset the wrap pipeline already reads (MmYamlParser → IrMerger):
//
//   <schemaDir>/hints/<resource_type>.yaml
//     provider_version: 5.26.0
//     properties:
//       - api_name: type
//         enum_values: ["A", "AAAA", ...]
//       - api_name: settings
//         properties:
//           - api_name: flatten_cname
//             ...
//
// Source: every `internal/services/<svc>/schema.go` (Stainless, paired with
// the `resource.go` that names the type) or, in a service without one, every
// hand-written `resource.go` / `*_resource.go` (appwrite); data sources are
// not read. A hint is a `stringvalidator.OneOf(...)` or
// `stringvalidator.OneOfCaseInsensitive(...)` validator under an attribute
// key — the value set the provider itself enforces, including list
// elements (`listvalidator.ValueStringsAre(...)`) whose description does
// not spell the values out. The Terraform type name comes from
// `resp.TypeName = ... + "_<name>"`, or a `fmt.Sprintf` pattern matched
// against schema.json when one Go type serves several variants.
//
// hashicorp/aws (SDKv2 and framework, hand-written) is scanned by
// tool/provider_hints_aws.dart instead: resources are the functions its
// `@SDKResource` / `@FrameworkResource` annotations sit on, and a value set
// may name an aws-sdk-go-v2 `types` enum, whose `enums.go` is read at the
// module version the provider's go.mod requires. A map-typed attribute's
// value set is skipped (enums cover string and string-list inputs only).
//
// schema.json at the same version is authoritative: a hint whose path is
// absent there (a service's custom code reshapes the served schema) is
// skipped and listed on stdout, and a path that names a non-string
// attribute fails the tool — that means the scanner misread the Go
// source. The committed output is never hand-edited — re-extract when the
// pin moves (the command is in the emitted hints/README.md).
//
// Usage (repo root):
//   dart tool/extract_provider_hints.dart \
//     --repo=cloudflare/terraform-provider-cloudflare \
//     --version="$(cat packages/terradart_codegen/test/fixtures/wrap/source_cloudflare/provider_version.txt)" \
//     --schema-dir=packages/terradart_codegen/test/fixtures/wrap/source_cloudflare
//
//   --source-dir=<dir>  read an already-extracted source tree (its
//                       internal/services) instead of downloading the tag
//                       tarball from codeload.github.com.
//   --sdk-dir=<dir>     hashicorp/aws only: read aws-sdk-go-v2
//                       `service/<svc>/types/enums.go` from <dir> instead of
//                       downloading them from raw.githubusercontent.com at
//                       the provider's go.mod versions.
//
// Exit codes: 0 success, 64 usage error, 65 a hint names a non-string
// attribute or schema.go does not scan, 69 download / extraction failure.
// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'provider_hints_aws.dart';

const _exitUsage = 64;
const _exitData = 65;
const _exitFetch = 69;

/// One enum validator found under an attribute key.
final class GoEnumHint {
  const GoEnumHint({
    required this.path,
    required this.values,
    required this.caseInsensitive,
  });

  /// Attribute keys from the resource root, e.g. `['settings', 'mode']`.
  final List<String> path;
  final List<String> values;
  final bool caseInsensitive;

  String get dotted => path.join('.');
}

enum GoTok { string, ident, punct }

typedef GoToken = ({GoTok kind, String text});

/// Tokenizes Go source into string literals (decoded), identifiers and
/// single-character punctuation; comments, numbers and whitespace are
/// dropped. Enough for Stainless's schema literals, not a Go parser.
List<GoToken> tokenizeGo(String src) {
  final out = <GoToken>[];
  var i = 0;
  bool isIdentStart(int c) =>
      (c >= 0x41 && c <= 0x5a) || (c >= 0x61 && c <= 0x7a) || c == 0x5f;
  bool isIdentPart(int c) => isIdentStart(c) || (c >= 0x30 && c <= 0x39);
  while (i < src.length) {
    final c = src.codeUnitAt(i);
    if (c == 0x2f && i + 1 < src.length && src[i + 1] == '/') {
      final end = src.indexOf('\n', i);
      i = end < 0 ? src.length : end + 1;
    } else if (c == 0x2f && i + 1 < src.length && src[i + 1] == '*') {
      final end = src.indexOf('*/', i + 2);
      i = end < 0 ? src.length : end + 2;
    } else if (c == 0x22) {
      final buf = StringBuffer();
      i++;
      while (i < src.length && src[i] != '"') {
        if (src[i] == r'\' && i + 1 < src.length) {
          final e = src[i + 1];
          switch (e) {
            case 'n':
              buf.write('\n');
            case 't':
              buf.write('\t');
            case 'u':
              buf.writeCharCode(
                int.parse(src.substring(i + 2, i + 6), radix: 16),
              );
              i += 4;
            default:
              buf.write(e);
          }
          i += 2;
        } else {
          buf.write(src[i]);
          i++;
        }
      }
      i++;
      out.add((kind: GoTok.string, text: buf.toString()));
    } else if (c == 0x27) {
      i++;
      while (i < src.length && src[i] != "'") {
        i += src[i] == r'\' ? 2 : 1;
      }
      i++;
    } else if (c == 0x60) {
      final end = src.indexOf('`', i + 1);
      out.add((kind: GoTok.string, text: src.substring(i + 1, end)));
      i = end + 1;
    } else if (isIdentStart(c)) {
      final start = i;
      while (i < src.length && isIdentPart(src.codeUnitAt(i))) {
        i++;
      }
      out.add((kind: GoTok.ident, text: src.substring(start, i)));
    } else if (c >= 0x30 && c <= 0x39) {
      while (
          i < src.length && (isIdentPart(src.codeUnitAt(i)) || src[i] == '.')) {
        i++;
      }
    } else if (' \t\r\n'.contains(src[i])) {
      i++;
    } else {
      out.add((kind: GoTok.punct, text: src[i]));
      i++;
    }
  }
  return out;
}

const goClosers = {'{': '}', '(': ')', '[': ']'};
final goSchemaNode = RegExp(r'(Attribute|Block)$');

/// Scans one `schema.go` for enum validators under attribute keys. A
/// frame opens at `"key": pkg.SomethingAttribute{` (or `...Block{`); the
/// keys of the open frames are the hint's path.
List<GoEnumHint> scanSchemaGo(String src) {
  final toks = tokenizeGo(src);
  final frames = <({String? key, String closer})>[];
  final byPath = <String, GoEnumHint>{};
  bool punct(int i, String t) =>
      i < toks.length && toks[i].kind == GoTok.punct && toks[i].text == t;
  bool ident(int i, [String? t]) =>
      i < toks.length &&
      toks[i].kind == GoTok.ident &&
      (t == null || toks[i].text == t);

  var i = 0;
  while (i < toks.length) {
    final t = toks[i];
    if (t.kind == GoTok.string &&
        punct(i + 1, ':') &&
        ident(i + 2) &&
        punct(i + 3, '.') &&
        ident(i + 4) &&
        goSchemaNode.hasMatch(toks[i + 4].text) &&
        punct(i + 5, '{')) {
      frames.add((key: t.text, closer: '}'));
      i += 6;
      continue;
    }
    if (ident(i, 'stringvalidator') &&
        punct(i + 1, '.') &&
        (ident(i + 2, 'OneOf') || ident(i + 2, 'OneOfCaseInsensitive')) &&
        punct(i + 3, '(')) {
      final caseInsensitive = toks[i + 2].text == 'OneOfCaseInsensitive';
      final values = <String>[];
      var depth = 1;
      var j = i + 4;
      for (; j < toks.length && depth > 0; j++) {
        final u = toks[j];
        if (u.kind == GoTok.punct && goClosers.containsKey(u.text)) depth++;
        if (u.kind == GoTok.punct && goClosers.containsValue(u.text)) depth--;
        if (u.kind == GoTok.string && depth == 1) values.add(u.text);
      }
      final path = [
        for (final f in frames)
          if (f.key != null) f.key!,
      ];
      if (path.isNotEmpty && values.isNotEmpty) {
        byPath.putIfAbsent(
          path.join('.'),
          () => GoEnumHint(
            path: path,
            values: values,
            caseInsensitive: caseInsensitive,
          ),
        );
      }
      i = j;
      continue;
    }
    if (t.kind == GoTok.punct) {
      final closer = goClosers[t.text];
      if (closer != null) {
        frames.add((key: null, closer: closer));
      } else if (goClosers.containsValue(t.text)) {
        if (frames.isEmpty || frames.last.closer != t.text) {
          throw FormatException('unbalanced "${t.text}" in schema.go');
        }
        frames.removeLast();
      }
    }
    i++;
  }
  if (frames.isNotEmpty) {
    throw const FormatException('unclosed bracket in schema.go');
  }
  return byPath.values.toList();
}

final _typeNameRe = RegExp(
  r'resp\.TypeName\s*=\s*req\.ProviderTypeName\s*\+\s*"(_[a-z0-9_]+)"',
);

/// `resp.TypeName = fmt.Sprintf("%s_%s_database", req.ProviderTypeName,
/// r.engine)`: one Go type registered once per variant (appwrite's
/// dedicated database engines).
final _typeNameFormatRe = RegExp(
  r'resp\.TypeName\s*=\s*fmt\.Sprintf\(\s*"%s((?:_[a-z0-9]+|_%s)+)"\s*,'
  r'\s*req\.ProviderTypeName\s*,',
);

/// The resource's Terraform type from `resource.go`, or null when the
/// service registers no resource.
String? resourceTypeName(String resourceGo, {required String provider}) {
  final m = _typeNameRe.firstMatch(resourceGo);
  return m == null ? null : '$provider${m.group(1)}';
}

/// Every Terraform type in [knownTypes] a resource file registers: the
/// literal `TypeName` suffix, or each type a `fmt.Sprintf` variant pattern
/// matches.
List<String> resourceTypeNames(
  String resourceGo, {
  required String provider,
  required Iterable<String> knownTypes,
}) {
  final literal = resourceTypeName(resourceGo, provider: provider);
  if (literal != null) return [literal];
  final m = _typeNameFormatRe.firstMatch(resourceGo);
  if (m == null) return const [];
  final pattern = RegExp(
    '^${RegExp.escape('$provider${m.group(1)}').replaceAll('%s', '[a-z0-9]+')}\$',
  );
  return [
    for (final t in knownTypes)
      if (pattern.hasMatch(t)) t,
  ]..sort();
}

/// The files of one `internal/services/<svc>` directory that declare a
/// resource schema: Stainless's `schema.go` (paired with the `resource.go`
/// that names the type), or else every hand-written `resource.go` /
/// `*_resource.go`, which carries its type name and schema together.
List<({File schema, File typeName})> resourceSources(Directory dir) {
  final schemaGo = File(p.join(dir.path, 'schema.go'));
  final resourceGo = File(p.join(dir.path, 'resource.go'));
  if (schemaGo.existsSync()) {
    return resourceGo.existsSync()
        ? [(schema: schemaGo, typeName: resourceGo)]
        : const [];
  }
  final files = dir.listSync().whereType<File>().where((f) {
    final name = p.basename(f.path);
    return name == 'resource.go' || name.endsWith('_resource.go');
  }).toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  return [for (final f in files) (schema: f, typeName: f)];
}

enum HintResolution { string, missing, map, notString }

/// Whether [path] names a string (or list / set of string) attribute of
/// the schema.json resource [block].
HintResolution resolveHint(Map<String, dynamic> block, List<String> path) {
  var current = block;
  for (var k = 0; k < path.length; k++) {
    final key = path[k];
    final last = k == path.length - 1;
    final attrs = (current['attributes'] as Map?)?.cast<String, dynamic>();
    final blocks = (current['block_types'] as Map?)?.cast<String, dynamic>();
    final attr = (attrs?[key] as Map?)?.cast<String, dynamic>();
    if (last) {
      if (attr == null) return HintResolution.missing;
      final type = attr['type'];
      final stringish = type == 'string' ||
          (type is List &&
              type.length == 2 &&
              (type[0] == 'list' || type[0] == 'set') &&
              type[1] == 'string');
      if (stringish) return HintResolution.string;
      return type is List && type.first == 'map'
          ? HintResolution.map
          : HintResolution.notString;
    }
    final nested = (attr?['nested_type'] as Map?)?.cast<String, dynamic>();
    final blockBody =
        ((blocks?[key] as Map?)?['block'] as Map?)?.cast<String, dynamic>();
    final next = nested ?? blockBody;
    if (next == null) return HintResolution.missing;
    current = next;
  }
  return HintResolution.missing;
}

/// Renders one resource's hints file: the MM YAML subset
/// (`properties[].api_name` / `enum_values` / nested `properties`).
String renderHintsYaml({
  required String repo,
  required String version,
  required String sourcePath,
  required List<GoEnumHint> hints,
}) {
  final tree = <String, Object?>{};
  for (final h in [...hints]..sort((a, b) => a.dotted.compareTo(b.dotted))) {
    var node = tree;
    for (final key in h.path.take(h.path.length - 1)) {
      node = (node.putIfAbsent(key, () => <String, Object?>{})
          as Map<String, Object?>);
    }
    (node.putIfAbsent(h.path.last, () => <String, Object?>{})
        as Map<String, Object?>)['\u0000enum'] = h.values;
  }
  final buf = StringBuffer()
    ..writeln('# Generated by tool/extract_provider_hints.dart from $repo')
    ..writeln(
      '# v$version $sourcePath. Never hand-edit;',
    )
    ..writeln('# re-extract with the command in README.md.')
    ..writeln('provider_version: ${jsonEncode(version)}');
  void writeProps(Map<String, Object?> node, String indent) {
    buf.writeln('${indent}properties:');
    final keys = node.keys.where((k) => !k.startsWith('\u0000')).toList()
      ..sort();
    for (final key in keys) {
      final child = node[key]! as Map<String, Object?>;
      buf.writeln('$indent  - api_name: $key');
      final values = child['\u0000enum'] as List<String>?;
      if (values != null) {
        buf.writeln('$indent    enum_values:');
        for (final v in values) {
          buf.writeln('$indent      - ${jsonEncode(v)}');
        }
      }
      if (child.keys.any((k) => !k.startsWith('\u0000'))) {
        writeProps(child, '$indent    ');
      }
    }
  }

  writeProps(tree, '');
  return buf.toString();
}

String _readme({
  required String repo,
  required String schemaDir,
  required bool aws,
}) =>
    '''
# Provider enum hints — $repo

One file per resource type: the enum value sets the provider's Go source
enforces (${aws ? _awsSources : _frameworkSources}), as a Magic Modules YAML subset
(`properties[].api_name` / `enum_values`). `terradart wrap
--provider-enums` merges them into the schema IR (top-level attributes)
and the nested helper types. `provider_version` must match
`../provider_version.txt`; `wrap` fails otherwise.

Never hand-edit. Re-extract at the fixture's pin with:

```bash
dart tool/extract_provider_hints.dart \\
  --repo=$repo \\
  --version="\$(cat $schemaDir/provider_version.txt)" \\
  --schema-dir=$schemaDir
```
''';

const _frameworkSources =
    '`stringvalidator.OneOf` / `OneOfCaseInsensitive` in the resource\n'
    'schemas under `internal/services/`';
const _awsSources = '`enum.Validate[T]`, `fwtypes.StringEnumType[T]`,\n'
    '`validation.StringInSlice` and `stringvalidator.OneOf` in the resource\n'
    'schemas under `internal/service/`, with `T`\'s members read from the\n'
    'aws-sdk-go-v2 `types/enums.go` at the version the provider\'s `go.mod`\n'
    'requires';

Never _fail(int code, String message) {
  stderr.writeln('extract_provider_hints: $message');
  exit(code);
}

Future<Directory> _download(String repo, String version) async {
  final tmp = await Directory.systemTemp.createTemp('provider_hints_');
  final tarball = File(p.join(tmp.path, 'src.tar.gz'));
  final url =
      Uri.parse('https://codeload.github.com/$repo/tar.gz/refs/tags/v$version');
  final client = HttpClient();
  try {
    final response = await (await client.getUrl(url)).close();
    if (response.statusCode != 200) {
      _fail(_exitFetch, 'GET $url: HTTP ${response.statusCode}');
    }
    await response.pipe(tarball.openWrite());
  } finally {
    client.close();
  }
  final tar = await Process.run(
    'tar',
    ['xzf', tarball.path, '-C', tmp.path, '--strip-components=1'],
  );
  if (tar.exitCode != 0) _fail(_exitFetch, 'tar: ${tar.stderr}');
  return tmp;
}

Future<void> main(List<String> args) async {
  String? repo;
  String? version;
  String? schemaDir;
  String? sourceDir;
  String? sdkDir;
  for (final a in args) {
    if (a.startsWith('--repo=')) {
      repo = a.substring(7);
    } else if (a.startsWith('--version=')) {
      version = a.substring(10);
    } else if (a.startsWith('--schema-dir=')) {
      schemaDir = a.substring(13);
    } else if (a.startsWith('--source-dir=')) {
      sourceDir = a.substring(13);
    } else if (a.startsWith('--sdk-dir=')) {
      sdkDir = a.substring(10);
    } else {
      _fail(_exitUsage, 'unknown argument $a');
    }
  }
  if (repo == null || version == null || schemaDir == null) {
    _fail(_exitUsage, '--repo, --version and --schema-dir are required');
  }

  final schema = jsonDecode(
    File(p.join(schemaDir, 'schema.json')).readAsStringSync(),
  ) as Map<String, dynamic>;
  final providerSchemas =
      (schema['provider_schemas'] as Map).cast<String, dynamic>();
  final resources = <String, Map<String, dynamic>>{
    for (final body in providerSchemas.values)
      for (final MapEntry(:key, :value)
          in ((body as Map)['resource_schemas'] as Map? ?? const {}).entries)
        key as String: ((value as Map)['block'] as Map).cast<String, dynamic>(),
  };
  final provider = repo.split('/').last.replaceFirst('terraform-provider-', '');

  final root =
      sourceDir != null ? Directory(sourceDir) : await _download(repo, version);
  final aws = isAwsProviderSource(root);
  final found = <String, ({String sourcePath, List<GoEnumHint> hints})>{};
  if (aws) {
    var sdk = sdkDir;
    if (sdk == null) {
      sdk = (await Directory.systemTemp.createTemp('aws_sdk_enums_')).path;
      try {
        await downloadAwsSdkEnums(awsSdkTypesModules(root), sdk);
      } on IOException catch (e) {
        _fail(_exitFetch, 'aws-sdk-go-v2 enums: $e');
      }
    }
    final scan = scanAwsProvider(root, sdkDir: sdk);
    found.addAll(scan.byType);
    print('extract_provider_hints: ${scan.validators} value-set validator(s) '
        'in resource schemas, ${scan.unresolved} not evaluable (dropped)');
  } else {
    final services = Directory(p.join(root.path, 'internal', 'services'));
    if (!services.existsSync()) {
      _fail(_exitFetch, 'no internal/services under ${root.path}');
    }
    final dirs = services.listSync().whereType<Directory>().toList()
      ..sort((a, b) => a.path.compareTo(b.path));
    for (final dir in dirs) {
      for (final source in resourceSources(dir)) {
        final types = resourceTypeNames(
          source.typeName.readAsStringSync(),
          provider: provider,
          knownTypes: resources.keys,
        );
        if (types.isEmpty) continue;
        final sourcePath = p.relative(source.schema.path, from: root.path);
        final List<GoEnumHint> hints;
        try {
          hints = scanSchemaGo(source.schema.readAsStringSync());
        } on FormatException catch (e) {
          _fail(_exitData, '$sourcePath: ${e.message}');
        }
        for (final type in types) {
          found[type] = (sourcePath: sourcePath, hints: hints);
        }
      }
    }
  }

  final out = Directory(p.join(schemaDir, 'hints'));
  if (out.existsSync()) out.deleteSync(recursive: true);
  out.createSync(recursive: true);

  final notString = <String>[];
  final skipped = <String>[];
  var files = 0;
  var hintCount = 0;
  for (final type in found.keys.toList()..sort()) {
    final block = resources[type];
    if (block == null) continue;
    final (:sourcePath, :hints) = found[type]!;
    final kept = <GoEnumHint>[];
    for (final h in hints) {
      switch (resolveHint(block, h.path)) {
        case HintResolution.string:
          kept.add(h);
        case HintResolution.missing:
          skipped.add('$type.${h.dotted}');
        case HintResolution.map:
          skipped.add('$type.${h.dotted} (a map: the set constrains keys)');
        case HintResolution.notString:
          notString.add('$type.${h.dotted}');
      }
    }
    if (kept.isEmpty) continue;
    File(p.join(out.path, '$type.yaml')).writeAsStringSync(
      renderHintsYaml(
        repo: repo,
        version: version,
        sourcePath: sourcePath,
        hints: kept,
      ),
    );
    files++;
    hintCount += kept.length;
  }
  if (notString.isNotEmpty) {
    out.deleteSync(recursive: true);
    _fail(
      _exitData,
      '${notString.length} hint(s) name a non-string attribute in '
      'schema.json:\n${notString.map((u) => '  $u').join('\n')}',
    );
  }
  for (final s in skipped) {
    print('skipped (not in schema.json): $s');
  }
  File(p.join(out.path, 'README.md')).writeAsStringSync(
    _readme(repo: repo, schemaDir: schemaDir, aws: aws),
  );
  print('extract_provider_hints: wrote $hintCount enum hint(s) for $files '
      'resource(s) to ${out.path}');
}
