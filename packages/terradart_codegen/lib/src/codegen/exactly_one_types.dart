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
///    word (`arn`);
/// 3. the enclosing block's name when the group is all of the block's
///    inputs ([wholeBlockName]).
String? deriveSealedConcept(List<String> members, {String? wholeBlockName}) {
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
  return wholeBlockName;
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
/// that clashes, or repeats the derived one, is an error.
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
  return (
    concept: sealedFallbackConcept(members),
    source: SealedNameSource.fallback,
    error: null,
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

/// The concrete variant class of the sealed type [sealed] that sets
/// [member] (`LambdaFunctionCode` + `image_uri` → `LambdaFunctionCodeImageUri`).
/// Callers construct it through the sealed type's factory constructor
/// (`.imageUri(...)`); the class exists for pattern matching.
String exactlyOneVariantName(String sealed, String member) =>
    '$sealed${snakeToPascal(member)}';

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
  bool optional = false,
}) {
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
  for (final v in variants) {
    buf
      ..writeln()
      ..writeln('  /// Sets `${v.tfName}`.');
    if (v.deprecation != null) {
      buf.writeln("  @Deprecated('${dartSingleQuotedBody(v.deprecation!)}')");
    }
    buf.writeln(
      '  const factory $sealed.${v.ident}(${v.fieldType} ${v.ident}) = '
      '${exactlyOneVariantName(sealed, v.tfName)};',
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
  for (final v in variants) {
    final name = exactlyOneVariantName(sealed, v.tfName);
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
