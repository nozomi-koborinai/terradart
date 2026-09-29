import 'naming.dart';

/// One member of an exactly-one group as its sealed variant holds it.
typedef ExactlyOneVariant = ({
  /// Terraform argument name, which is also the variant's `blockKey`.
  String tfName,

  /// Dart field name.
  String ident,

  /// Non-nullable Dart field type.
  String fieldType,

  /// The wire value `encode()` writes under [tfName].
  String encodeExpr,

  /// The `TfArg` a resource's `argMap` holds under [tfName]; null for a
  /// variant inside a nested helper, which only encodes.
  String? argMapExpr,

  /// `@Deprecated` message of the member, if any.
  String? deprecation,
});

/// The member paths a `sealedNames` key lists (`"b, a"` → `{a, b}`).
Set<String> sealedGroupKey(String key) => {
  for (final part in key.split(','))
    if (part.trim().isNotEmpty) part.trim(),
};

/// The canonical `sealedNames` key of a group whose members sit in the
/// block at [blockPath] (empty for the resource itself): the members'
/// dotted paths, sorted, joined with `, `.
String sealedGroupKeyOf(List<String> blockPath, Iterable<String> members) => ([
  for (final m in members) [...blockPath, m].join('.'),
]..sort()).join(', ');

/// Where a sealed slot's concept name came from.
enum SealedNameSource {
  /// The override's `sealedNames` entry.
  human,

  /// [deriveSealedConcept].
  derived,

  /// The members joined with `_or_`, pending a human name
  /// (`tool/sealed_name_debt.yaml`).
  fallback,
}

/// One sealed group's name, as `wrap` chose it.
typedef SealedGroupName = ({
  /// The group's canonical [sealedGroupKeyOf] key.
  String key,

  /// Snake-case concept name of the slot or field.
  String concept,
  SealedNameSource source,

  /// The name [deriveSealedConcept] gives the group, if any.
  String? derived,

  /// Why the group's `sealedNames` entry cannot be used, if it cannot.
  String? error,
});

/// A [SealedGroupName] of the resource [type].
typedef SealedName = ({String type, SealedGroupName name});

/// Snake-case slot name of a group no rule names: its members joined with
/// `_or_` (`filename_or_image_uri`).
String sealedFallbackConcept(List<String> members) => members.join('_or_');

/// Leading segments too generic to name a group on their own
/// (`enable_x` / `enable_y` share `enable` but are not "an enable").
const _genericPrefixes = {
  'allow',
  'auto',
  'custom',
  'default',
  'disable',
  'enable',
  'enabled',
  'exclude',
  'from',
  'has',
  'include',
  'is',
  'max',
  'min',
  'no',
  'use',
};

/// Trailing segments too generic to name a group on their own
/// (`role_arn` / `user_arn` share `arn`, which says nothing about them).
const _genericSuffixes = {
  'arn',
  'arns',
  'config',
  'configuration',
  'configs',
  'id',
  'ids',
  'key',
  'list',
  'name',
  'names',
  'settings',
  'spec',
  'type',
  'uri',
  'url',
  'value',
  'values',
};

/// The concept name the members of one group share, or null when nothing
/// names them:
///
/// 1. their common leading segments (`content_base64`, `content_file` →
///    `content`; `name`, `name_prefix` → `name`), unless that is one generic
///    word (`enable`);
/// 2. their common trailing segments (`mysql_source_config`,
///    `oracle_source_config` → `source_config`), unless that is one generic
///    word (`arn`).
///
/// A group that is all of a block's inputs needs no concept: the block's
/// own class becomes the sealed type.
String? deriveSealedConcept(List<String> members) {
  final split = [for (final m in members) m.split('_')];
  final prefix = _commonRun(split);
  while (prefix.isNotEmpty && _connectors.contains(prefix.last)) {
    prefix.removeLast();
  }
  if (prefix.isNotEmpty &&
      !(prefix.length == 1 && _genericPrefixes.contains(prefix.single))) {
    return prefix.join('_');
  }
  final suffix = _commonRun([
    for (final s in split) s.reversed.toList(),
  ]).reversed.toList();
  while (suffix.isNotEmpty && _connectors.contains(suffix.first)) {
    suffix.removeAt(0);
  }
  if (suffix.isNotEmpty &&
      !(suffix.length == 1 && _genericSuffixes.contains(suffix.single)) &&
      split.every((s) => s.length > suffix.length)) {
    return suffix.join('_');
  }
  return null;
}

/// Segments that join words and never end (or start) a name: `size_in`
/// of `size_in_bytes` / `size_in_megabytes` is `size`.
const _connectors = {
  'and',
  'as',
  'by',
  'for',
  'from',
  'in',
  'of',
  'on',
  'or',
  'per',
  'to',
  'with',
};

/// The segments every list shares from its start. A segment matches its
/// plural (`key` / `keys`, `address` / `addresses`) and yields the
/// singular: `public_key` / `public_keys` share `public_key`.
List<String> _commonRun(List<List<String>> lists) {
  final out = <String>[];
  for (var i = 0; ; i++) {
    if (lists.any((l) => i >= l.length)) return out;
    final seg = lists.first[i];
    if (lists.every((l) => l[i] == seg)) {
      out.add(seg);
      continue;
    }
    final singular = _singular(seg);
    if (lists.every((l) => _singular(l[i]) == singular)) {
      out.add(singular);
    }
    return out;
  }
}

String _singular(String seg) {
  if (RegExp(r'(s|x|ch|sh)es$').hasMatch(seg)) {
    return seg.substring(0, seg.length - 2);
  }
  if (seg.endsWith('s') && !seg.endsWith('ss') && seg.length > 2) {
    return seg.substring(0, seg.length - 1);
  }
  return seg;
}

/// The name one sealed group takes, and any error: a human [human] name
/// wins; otherwise the [derived] one; otherwise [sealedFallbackConcept].
/// [clashes] says why a candidate cannot be used (its slot or a class name
/// is taken), or null. A derived name that clashes falls back; a human name
/// that clashes, or repeats the derived one, is an error, and so is a
/// fallback that clashes (it would repeat a segment or take a class), which
/// only a `sealedNames` entry can fix.
({String concept, SealedNameSource source, String? error}) resolveSealedName({
  required List<String> members,
  required String? human,
  required String? derived,
  required String? Function(String concept) clashes,
}) {
  if (human != null) {
    final clash = clashes(human);
    if (clash != null) {
      return (
        concept: sealedFallbackConcept(members),
        source: SealedNameSource.fallback,
        error: 'sealedNames "$human" clashes: $clash',
      );
    }
    return (
      concept: human,
      source: SealedNameSource.human,
      error: human == derived
          ? 'sealedNames "$human" repeats the derived name; remove it'
          : null,
    );
  }
  if (derived != null && clashes(derived) == null) {
    return (concept: derived, source: SealedNameSource.derived, error: null);
  }
  final fallback = sealedFallbackConcept(members);
  final clash = clashes(fallback);
  return (
    concept: fallback,
    source: SealedNameSource.fallback,
    error: clash == null
        ? null
        : 'no usable name for [${members.join(', ')}] ($fallback: $clash); '
              'name it in sealedNames',
  );
}

/// Class names a Dart source declares (`class`, `enum`, `mixin`,
/// `extension type`, `typedef`).
Set<String> declaredTypeNames(String source) => {
  for (final m in RegExp(
    r'\b(?:class|enum|mixin|typedef|extension\s+type)\s+(\w+)',
  ).allMatches(source))
    m.group(1)!,
};

/// The PascalCase words of [name] (`RdsClusterIdentifier` → `Rds`,
/// `Cluster`, `Identifier`).
List<String> pascalWords(String name) => RegExp(
  r'[A-Z][a-z0-9]*|[a-z0-9]+',
).allMatches(name).map((m) => m[0]!).toList();

/// How many leading words of [segment] repeat the trailing words of
/// [prefix] (`RdsCluster` + `ClusterIdentifier` → 1).
int repeatedWordCount(String prefix, String segment) {
  final p = pascalWords(prefix);
  final s = pascalWords(segment);
  for (var k = s.length < p.length ? s.length : p.length; k > 0; k--) {
    var same = true;
    for (var i = 0; i < k; i++) {
      if (p[p.length - k + i] != s[i]) {
        same = false;
        break;
      }
    }
    if (same) return k;
  }
  return 0;
}

/// Whether [prefix] followed by [rest] says a run of words twice in a row
/// across the join (`AssessmentRuleSampleRule` + `Sample` →
/// `…RuleSampleRuleSample`). Runs wholly inside [prefix] are Terraform's
/// own block names and do not count.
bool repeatsAcrossJoin(String prefix, String rest) {
  final w = [...pascalWords(prefix), ...pascalWords(rest)];
  final join = pascalWords(prefix).length;
  for (var n = 1; 2 * n <= w.length; n++) {
    for (var i = 0; i + 2 * n <= w.length; i++) {
      if (i >= join || i + 2 * n <= join) continue;
      var same = true;
      for (var k = 0; k < n; k++) {
        if (w[i + k] != w[i + n + k]) {
          same = false;
          break;
        }
      }
      if (same) return true;
    }
  }
  return false;
}

/// [prefix] followed by the snake-case [segment] in PascalCase, minus the
/// leading words of [segment] that repeat the end of [prefix]
/// (`RdsCluster` + `cluster_identifier` → `RdsClusterIdentifier`), so no
/// type name says one segment twice. Returns [prefix] itself when
/// [segment] only repeats it.
String joinTypeName(String prefix, String segment) {
  final words = pascalWords(snakeToPascal(segment));
  final repeated = repeatedWordCount(prefix, words.join());
  return prefix + words.skip(repeated).join();
}

/// The sealed type a group named [concept] takes on [prefix] (the resource
/// stem, or the helper class of the block holding the group), or null when
/// [concept] only repeats the end of [prefix] or the name
/// [repeatsAcrossJoin].
String? sealedTypeName(String prefix, String concept) {
  final name = joinTypeName(prefix, concept);
  return name == prefix ||
          repeatsAcrossJoin(prefix, name.substring(prefix.length))
      ? null
      : name;
}

/// The concrete variant class of the sealed type [sealed] that sets
/// [member] (`LambdaFunctionCode` + `image_uri` → `LambdaFunctionCodeImageUri`),
/// with the words [member] repeats from the end of [sealed] dropped
/// (`RdsClusterIdentifier` + `cluster_identifier_prefix` →
/// `RdsClusterIdentifierPrefix`). Callers construct it through the sealed
/// type's factory constructor (`.imageUri(...)`); the class exists for
/// pattern matching. [exactlyOneVariantNames] settles a name that is
/// taken, or that [member] only repeats.
String exactlyOneVariantName(String sealed, String member) =>
    joinTypeName(sealed, member);

/// Suffixes that set a variant apart from a taken class, in preference
/// order.
const _variantSuffixes = ['Choice', 'Option', 'Variant'];

/// The variant class of each of [members] on the sealed type [sealed], in
/// order: [exactlyOneVariantName], or — when that is [sealed] itself, a
/// class in [taken] (typically the member block's own helper:
/// `MskconnectConnectorCapacity` + `autoscaling` →
/// `MskconnectConnectorCapacityAutoscalingChoice`) or another member's
/// variant — the same name with the first of `Choice`, `Option`, `Variant`
/// that is free. A name that [repeatsAcrossJoin] is never free. Null when
/// none is.
List<String>? exactlyOneVariantNames(
  String sealed,
  List<String> members,
  Set<String> taken,
) {
  final out = <String>[];
  final seen = <String>{sealed};
  bool free(String name) =>
      !taken.contains(name) &&
      !seen.contains(name) &&
      !repeatsAcrossJoin(sealed, name.substring(sealed.length));
  for (final m in members) {
    final base = exactlyOneVariantName(sealed, m);
    final name = [
      base,
      for (final s in _variantSuffixes) '$base$s',
    ].where(free).firstOrNull;
    if (name == null) return null;
    seen.add(name);
    out.add(name);
  }
  return out;
}

/// Why the group [members] cannot take the sealed type named [concept] on
/// [prefix], or null: the concept only repeats [prefix], or the sealed
/// type's or a variant's class name is in [taken].
String? sealedNameClash(
  String prefix,
  String concept,
  List<String> members,
  Set<String> taken,
) {
  final sealed = sealedTypeName(prefix, concept);
  if (sealed == null) {
    return 'the sealed type name repeats a segment of $prefix';
  }
  if (taken.contains(sealed)) return 'the class $sealed is taken';
  if (exactlyOneVariantNames(sealed, members, taken) == null) {
    return 'the variants of $sealed clash with taken classes';
  }
  return null;
}

/// Renders the sealed type for one exactly-one group — or, when [optional],
/// one at-most-one group, held by a nullable slot — and one variant per
/// member, in [variants] order. [where] names the block the members belong
/// to in the doc comments.
///
/// Each variant is reachable as a `const factory` constructor on the sealed
/// type named after its member, taking the member's value positionally, so
/// a caller writes the dot shorthand `slot: .imageUri(...)`. The concrete
/// classes follow the shape `migrate/helper_class_extractor.dart`
/// recognises: a `blockKey` getter and a field-per-key `encode()` (plus
/// `argMap` for a resource-level group).
String renderExactlyOneTypes({
  required String sealed,
  required List<String> members,
  required String where,
  required List<ExactlyOneVariant> variants,
  List<String>? variantClasses,
  bool optional = false,
}) {
  final classes =
      variantClasses ??
      exactlyOneVariantNames(sealed, [
        for (final v in variants) v.tfName,
      ], const {})!;
  final topLevel = variants.first.argMapExpr != null;
  final list = members.map((m) => '`$m`').join(', ');
  final buf = StringBuffer();
  if (optional) {
    buf
      ..writeln('/// At most one of $list on $where: the provider rejects')
      ..writeln('/// more than one, so each variant sets one of them and a')
      ..writeln('/// null choice sets none.');
  } else {
    buf
      ..writeln('/// Exactly one of $list on $where: the provider rejects')
      ..writeln(
        '/// none and more than one, so each variant sets one of them.',
      );
  }
  buf
    ..writeln('///')
    ..writeln(
      '/// Pick one with a dot shorthand: `.${variants.first.ident}(...)`.',
    )
    ..writeln('sealed class $sealed {')
    ..writeln('  const $sealed();');
  for (final (i, v) in variants.indexed) {
    buf
      ..writeln()
      ..writeln('  /// Sets `${v.tfName}`.');
    if (v.deprecation != null) {
      buf.writeln("  @Deprecated('${dartSingleQuotedBody(v.deprecation!)}')");
    }
    buf.writeln(
      '  const factory $sealed.${v.ident}(${v.fieldType} ${v.ident}) = '
      '${classes[i]};',
    );
  }
  buf
    ..writeln()
    ..writeln('  /// The Terraform argument this choice sets.')
    ..writeln('  String get blockKey;')
    ..writeln()
    ..writeln('  Map<String, Object?> encode();');
  if (topLevel) {
    buf
      ..writeln()
      ..writeln(
        '  /// The resource arguments behind [encode], as the caller\'s',
      )
      ..writeln('  /// [TfArg]s.')
      ..writeln('  Map<String, TfArg<Object?>> get argMap;');
  }
  buf.writeln('}');
  for (final (i, v) in variants.indexed) {
    final name = classes[i];
    buf
      ..writeln()
      ..writeln('/// The [$sealed.${v.ident}] choice: sets `${v.tfName}`.');
    if (v.deprecation != null) {
      buf.writeln("@Deprecated('${dartSingleQuotedBody(v.deprecation!)}')");
    }
    buf
      ..writeln('final class $name extends $sealed {')
      ..writeln('  const $name(this.${v.ident});')
      ..writeln()
      ..writeln('  final ${v.fieldType} ${v.ident};')
      ..writeln()
      ..writeln('  @override')
      ..writeln("  String get blockKey => '${v.tfName}';")
      ..writeln()
      ..writeln('  @override')
      ..writeln(
        "  Map<String, Object?> encode() => {'${v.tfName}': ${v.encodeExpr}};",
      );
    if (topLevel) {
      buf
        ..writeln()
        ..writeln('  @override')
        ..writeln('  Map<String, TfArg<Object?>> get argMap =>')
        ..writeln("      {'${v.tfName}': ${v.argMapExpr}};");
    }
    buf.writeln('}');
  }
  return buf.toString();
}
