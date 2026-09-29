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
// against schema.json when one Go type serves several variants. The same
// files' relation validators become `exactly_one_of_groups`: every
// `ExactlyOneOf` set (`<kind>validator.ExactlyOneOf` counts the attribute
// it sits on, `resourcevalidator.ExactlyOneOf` in `ConfigValidators` does
// not), and every `AtLeastOneOf` set whose members all pairwise
// `ConflictsWith` / `Conflicting`. The other conflicts become
// `at_most_one_of_groups`: each set of one block's inputs that pairwise
// conflict with each other and with nothing else, outside every
// exactly-one group (`exclusiveGroups` in terradart_codegen, shared with
// the Magic Modules `conflicts` reader). A conflict no group expresses is
// listed on stdout.
//
// hashicorp/aws (SDKv2 and framework, hand-written) is scanned by
// tool/provider_hints_aws.dart instead: resources are the functions its
// `@SDKResource` / `@FrameworkResource` annotations sit on, and a value set
// may name an aws-sdk-go-v2 `types` enum, whose `enums.go` is read at the
// module version the provider's go.mod requires. A map-typed attribute's
// value set is skipped (enums cover string and string-list inputs only),
// and so is one inside `validation.Any(...)` / `stringvalidator.Any(...)`,
// where it is one alternative beside `""`, an ARN or a name pattern.
// Its `ExactlyOneOf` groups (SDKv2 schema fields, framework
// `*validator.ExactlyOneOf` and `resourcevalidator.ExactlyOneOf` in
// `ConfigValidators`) are written as `exactly_one_of_groups`; a group whose
// members are not sibling inputs in schema.json is skipped and listed.
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
import 'package:terradart_codegen/src/codegen/exclusive_groups.dart';

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
List<GoEnumHint> scanSchemaGo(String src) => scanFrameworkSchema(src).hints;

/// The framework validators that relate an attribute to other inputs
/// (`<kind>validator.X(paths...)`, which counts the attribute itself as a
/// member) or relate inputs to each other (`resourcevalidator.X(paths...)`
/// in `ConfigValidators`).
const _relationValidators = {
  'ExactlyOneOf',
  'AtLeastOneOf',
  'ConflictsWith',
  'Conflicting',
};

/// The plugin-framework `<kind>validator` packages whose relation
/// validators sit on an attribute (and count it as a member).
const attributeValidatorKinds = {
  'boolvalidator',
  'dynamicvalidator',
  'float32validator',
  'float64validator',
  'int32validator',
  'int64validator',
  'listvalidator',
  'mapvalidator',
  'numbervalidator',
  'objectvalidator',
  'setvalidator',
  'stringvalidator',
};

/// What [scanFrameworkSchema] found in one plugin-framework source file.
typedef FrameworkSchemaScan = ({
  /// Enum value sets under attribute keys.
  List<GoEnumHint> hints,

  /// The input sets the provider requires exactly one of, as member paths
  /// from the resource root: an `ExactlyOneOf` set, or an `AtLeastOneOf`
  /// set whose members all pairwise `ConflictsWith` / `Conflicting`.
  List<List<List<String>>> groups,

  /// Pairwise conflicting sets no rule requires one of (at most one): the
  /// provider accepts none of their members ([exclusiveGroups]).
  List<List<List<String>>> atMostOne,

  /// Conflicts neither kind of group expresses, with the reason.
  List<String> unsealed,

  /// Relation validators whose paths are not literal path expressions.
  int unresolved,
});

/// Scans one plugin-framework source file (`schema.go`, or a hand-written
/// `resource.go`) for enum validators and exactly-one groups. A frame opens
/// at `"key": pkg.SomethingAttribute{` (or `...Block{`); the keys of the
/// open frames are the path of the attribute a validator sits on.
FrameworkSchemaScan scanFrameworkSchema(String src) {
  final toks = tokenizeGo(src);
  final frames = <({String? key, String closer})>[];
  final byPath = <String, GoEnumHint>{};
  final exact = <List<String>>[];
  final atLeast = <List<String>>[];
  final conflicts = <(String, String)>[];
  var unresolved = 0;
  bool punct(int i, String t) =>
      i < toks.length && toks[i].kind == GoTok.punct && toks[i].text == t;
  bool ident(int i, [String? t]) =>
      i < toks.length &&
      toks[i].kind == GoTok.ident &&
      (t == null || toks[i].text == t);

  var i = 0;
  while (i < toks.length) {
    final t = toks[i];
    if (t.kind == GoTok.ident &&
        (t.text == 'resourcevalidator' ||
            attributeValidatorKinds.contains(t.text)) &&
        punct(i + 1, '.') &&
        ident(i + 2) &&
        _relationValidators.contains(toks[i + 2].text) &&
        punct(i + 3, '(')) {
      final close = _matchingTok(toks, i + 3);
      final here = [
        for (final f in frames)
          if (f.key != null) f.key!,
      ];
      final self = t.text != 'resourcevalidator';
      final paths = parseFrameworkPaths(toks, i + 4, close, here);
      if (paths == null || (self && here.isEmpty)) {
        unresolved++;
      } else {
        final members = [
          for (final m in [if (self) here, ...paths]) m.join('.'),
        ];
        switch (toks[i + 2].text) {
          case 'ExactlyOneOf':
            exact.add(members);
          case 'AtLeastOneOf':
            atLeast.add(members);
          default:
            conflicts.addAll(conflictPairs(members, anchored: self));
        }
      }
      i = close + 1;
      continue;
    }
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
  final groups = exclusiveGroups(
    exactlyOne: exact,
    atLeastOne: atLeast,
    conflicts: conflicts,
  );
  List<List<List<String>>> split(List<List<String>> gs) => [
        for (final g in gs) [for (final m in g) m.split('.')],
      ];
  return (
    hints: byPath.values.toList(),
    groups: split(groups.exactlyOne),
    atMostOne: split(groups.atMostOne),
    unsealed: groups.unsealed,
    unresolved: unresolved,
  );
}

/// The conflicting pairs one relation validator declares over [members]
/// (dotted paths): an attribute's `ConflictsWith` ([anchored], the
/// attribute first) conflicts with each other member, a
/// `resourcevalidator.Conflicting` set pairwise.
List<(String, String)> conflictPairs(
  List<String> members, {
  required bool anchored,
}) =>
    [
      for (var a = 0; a < (anchored ? 1 : members.length); a++)
        for (var b = a + 1; b < members.length; b++) (members[a], members[b]),
    ];

/// Index of the bracket closing the one at [open].
int _matchingTok(List<GoToken> t, int open) {
  var depth = 0;
  for (var k = open; k < t.length; k++) {
    final u = t[k];
    if (u.kind != GoTok.punct) continue;
    if (goClosers.containsKey(u.text)) depth++;
    if (goClosers.containsValue(u.text) && --depth == 0) return k;
  }
  throw const FormatException('unclosed validator call');
}

/// The comma-separated framework path expressions from [i] up to [close],
/// optionally wrapped in `path.Expressions{...}` (and spread with `...`):
/// `path.MatchRoot("k")` (from the resource root) or `path.MatchRelative()`
/// (from [here], the attribute the validator sits on), each followed by
/// `.AtParent()` / `.AtName("k")` / list-index steps. Null when any part is
/// something else (a Go constant, a helper call).
List<List<String>>? parseFrameworkPaths(
  List<GoToken> t,
  int i,
  int close,
  List<String> here,
) {
  bool punct(int k, String s) =>
      k < t.length && t[k].kind == GoTok.punct && t[k].text == s;
  bool ident(int k, [String? s]) =>
      k < t.length && t[k].kind == GoTok.ident && (s == null || t[k].text == s);
  if (ident(i, 'path') &&
      punct(i + 1, '.') &&
      ident(i + 2, 'Expressions') &&
      punct(i + 3, '{')) {
    final inner = _matchingTok(t, i + 3);
    var k = inner + 1;
    if (punct(k, '.') && punct(k + 1, '.') && punct(k + 2, '.')) k += 3;
    if (punct(k, ',')) k++;
    if (k != close) return null;
    return parseFrameworkPaths(t, i + 4, inner, here);
  }
  final out = <List<String>>[];
  while (i < close) {
    if (!ident(i, 'path') || !punct(i + 1, '.')) return null;
    final List<String> path;
    if (ident(i + 2, 'MatchRoot') &&
        punct(i + 3, '(') &&
        i + 4 < t.length &&
        t[i + 4].kind == GoTok.string &&
        punct(i + 5, ')')) {
      path = [t[i + 4].text];
      i += 6;
    } else if (ident(i + 2, 'MatchRelative') &&
        punct(i + 3, '(') &&
        punct(i + 4, ')')) {
      path = [...here];
      i += 5;
    } else {
      return null;
    }
    while (punct(i, '.') && ident(i + 1) && punct(i + 2, '(')) {
      final step = t[i + 1].text;
      final end = _matchingTok(t, i + 2);
      if (step == 'AtParent' && end == i + 3) {
        if (path.isEmpty) return null;
        path.removeLast();
      } else if (step == 'AtName' &&
          end == i + 4 &&
          t[i + 3].kind == GoTok.string) {
        path.add(t[i + 3].text);
      } else if (step != 'AtListIndex' &&
          step != 'AtAnyListIndex' &&
          step != 'AtAnySetValue' &&
          step != 'AtAnyMapKey' &&
          step != 'AtMapKey') {
        return null;
      }
      i = end + 1;
    }
    if (path.isEmpty) return null;
    out.add(path);
    if (punct(i, ',')) {
      i++;
    } else if (i != close) {
      return null;
    }
  }
  return out;
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
  List<List<List<String>>> groups = const [],
  List<List<List<String>>> atMostOne = const [],
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

  if (tree.isNotEmpty) writeProps(tree, '');
  for (final (key, list) in [
    ('exactly_one_of_groups', groups),
    ('at_most_one_of_groups', atMostOne),
  ]) {
    if (list.isEmpty) continue;
    buf.writeln('$key:');
    final sorted = [
      for (final g in list) [for (final m in g) m.join('.')],
    ]..sort((a, b) => a.join(',').compareTo(b.join(',')));
    for (final g in sorted) {
      buf.writeln('  - [${g.map(jsonEncode).join(', ')}]');
    }
  }
  return buf.toString();
}

/// Why an exactly-one or at-most-one group of the schema.json resource
/// [block] cannot be typed, or null: every member must be an input of the
/// same block.
String? groupSkipReason(Map<String, dynamic> block, List<List<String>> group) {
  final parent = group.first.sublist(0, group.first.length - 1).join('.');
  for (final m in group) {
    if (m.sublist(0, m.length - 1).join('.') != parent) {
      return 'members in different blocks';
    }
    var current = block;
    for (final key in m.sublist(0, m.length - 1)) {
      final attrs = (current['attributes'] as Map?)?.cast<String, dynamic>();
      final blocks = (current['block_types'] as Map?)?.cast<String, dynamic>();
      final nested = ((attrs?[key] as Map?)?['nested_type'] as Map?)
          ?.cast<String, dynamic>();
      final body =
          ((blocks?[key] as Map?)?['block'] as Map?)?.cast<String, dynamic>();
      final next = nested ?? body;
      if (next == null) return '${m.join('.')} is not in schema.json';
      current = next;
    }
    final attr = ((current['attributes'] as Map?)?[m.last] as Map?);
    final blk = (current['block_types'] as Map?)?[m.last];
    if (attr == null && blk == null) {
      return '${m.join('.')} is not in schema.json';
    }
    if (attr != null &&
        attr['computed'] == true &&
        attr['optional'] != true &&
        attr['required'] != true) {
      return '${m.join('.')} is computed-only';
    }
  }
  return null;
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
`../provider_version.txt`; `wrap` fails otherwise.${aws ? _awsGroups : _frameworkGroups}

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
const _frameworkGroups =
    '\n\n`exactly_one_of_groups` lists the input sets the provider requires\n'
    'exactly one of (`<kind>validator.ExactlyOneOf` on an attribute or\n'
    '`resourcevalidator.ExactlyOneOf` in `ConfigValidators`, or an\n'
    '`AtLeastOneOf` set whose members all pairwise `ConflictsWith` /\n'
    '`Conflicting`), as dotted paths that share one parent block; `wrap`\n'
    'turns each into a required sealed type. `at_most_one_of_groups` lists\n'
    'the other sets of one block\'s inputs that pairwise `ConflictsWith` /\n'
    '`Conflicting` (and conflict with nothing else): the provider accepts\n'
    'none of them, so `wrap` turns each into a nullable sealed type. A\n'
    'conflict neither expresses is listed on stdout.';
const _awsGroups =
    '\n\n`exactly_one_of_groups` lists the input sets the provider requires\n'
    'exactly one of (`ExactlyOneOf` in SDKv2 schemas, `*validator.ExactlyOneOf`\n'
    'in framework schemas and `ConfigValidators`, or an `AtLeastOneOf` set\n'
    'whose members all pairwise `ConflictsWith` / `Conflicting`), as dotted\n'
    'paths that share one parent block; `wrap` turns each into a required\n'
    'sealed type. `at_most_one_of_groups` lists the other sets of one\n'
    'block\'s inputs that pairwise `ConflictsWith` / `Conflicting` (and\n'
    'conflict with nothing else): the provider accepts none of them, so\n'
    '`wrap` turns each into a nullable sealed type. A conflict neither\n'
    'expresses is listed on stdout.';
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
  final found = <String, AwsTypeHints>{};
  final unsealed = <String>[];
  var groupValidators = 0;
  var unresolvedGroups = 0;
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
    unsealed.addAll(scan.unsealed);
    print('extract_provider_hints: ${scan.validators} value-set validator(s) '
        'in resource schemas, ${scan.unresolved} not evaluable (dropped); '
        '${scan.openSets} Any(...) alternative(s) skipped');
    print('extract_provider_hints: ${scan.groupValidators} exactly-one '
        'validator(s), ${scan.unresolvedGroups} relation validator(s) not '
        'evaluable (dropped)');
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
        final FrameworkSchemaScan scan;
        try {
          scan = scanFrameworkSchema(source.schema.readAsStringSync());
        } on FormatException catch (e) {
          _fail(_exitData, '$sourcePath: ${e.message}');
        }
        groupValidators += scan.groups.length + scan.atMostOne.length;
        unresolvedGroups += scan.unresolved;
        for (final type in types) {
          found[type] = (
            sourcePath: sourcePath,
            hints: scan.hints,
            groups: scan.groups,
            atMostOne: scan.atMostOne,
          );
          for (final s in scan.unsealed) {
            unsealed.add('$type $s');
          }
        }
      }
    }
    print('extract_provider_hints: $groupValidators exactly-one / '
        'at-most-one group(s) in resource schemas, $unresolvedGroups '
        'relation validator(s) not evaluable (dropped)');
  }

  final out = Directory(p.join(schemaDir, 'hints'));
  if (out.existsSync()) out.deleteSync(recursive: true);
  out.createSync(recursive: true);

  final notString = <String>[];
  final skipped = <String>[];
  var files = 0;
  var hintCount = 0;
  var groupCount = 0;
  var atMostOneCount = 0;
  for (final type in found.keys.toList()..sort()) {
    final block = resources[type];
    if (block == null) continue;
    final (:sourcePath, :hints, :groups, :atMostOne) = found[type]!;
    List<List<List<String>>> keep(List<List<List<String>>> gs, String kind) {
      final kept = <List<List<String>>>[];
      for (final g in gs) {
        final reason = groupSkipReason(block, g);
        if (reason == null) {
          kept.add(g);
        } else {
          skipped.add(
            '$type $kind [${g.map((m) => m.join('.')).join(', ')}] '
            '($reason)',
          );
        }
      }
      return kept;
    }

    final keptGroups = keep(groups, 'exactly_one_of');
    final keptAtMostOne = keep(atMostOne, 'at_most_one_of');
    final kept = <GoEnumHint>[];
    for (final h in hints) {
      switch (resolveHint(block, h.path)) {
        case HintResolution.string:
          kept.add(h);
        case HintResolution.missing:
          skipped.add('$type.${h.dotted} (not in schema.json)');
        case HintResolution.map:
          skipped.add('$type.${h.dotted} (a map: the set constrains keys)');
        case HintResolution.notString:
          notString.add('$type.${h.dotted}');
      }
    }
    if (kept.isEmpty && keptGroups.isEmpty && keptAtMostOne.isEmpty) continue;
    File(p.join(out.path, '$type.yaml')).writeAsStringSync(
      renderHintsYaml(
        repo: repo,
        version: version,
        sourcePath: sourcePath,
        hints: kept,
        groups: keptGroups,
        atMostOne: keptAtMostOne,
      ),
    );
    files++;
    hintCount += kept.length;
    groupCount += keptGroups.length;
    atMostOneCount += keptAtMostOne.length;
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
    print('skipped: $s');
  }
  for (final s in unsealed) {
    print('conflict not sealed: $s');
  }
  File(p.join(out.path, 'README.md')).writeAsStringSync(
    _readme(repo: repo, schemaDir: schemaDir, aws: aws),
  );
  print('extract_provider_hints: wrote $hintCount enum hint(s), '
      '$groupCount exactly-one group(s) and $atMostOneCount at-most-one '
      'group(s) for $files resource(s) to ${out.path}');
}
