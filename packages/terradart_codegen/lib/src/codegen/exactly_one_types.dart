import 'constructor_slots.dart';
import 'exactly_one_placement.dart';
import 'naming.dart';
import 'wrapper_overrides/wrapper_override.dart';

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

  /// The name [deriveSealedConcept] gives the group, if any. A joint
  /// variant's is its key member.
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
    r'\b(?:class|enum|mixin|typedef|extension\s+type(?:\s+const)?)\s+(\w+)',
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
/// `RdsClusterIdentifierPrefix`). When [member] ends with the whole
/// [concept] — the trailing words of [sealed] after its owner — and says
/// more, it takes the concept's place instead of repeating it
/// (`…FilterCloudStorageLocations` + `excluded_cloud_storage_locations` →
/// `…FilterExcludedCloudStorageLocations`). Callers construct it through
/// the sealed type's factory constructor (`.imageUri(...)`); the class
/// exists for pattern matching. [exactlyOneVariantNames] settles a name
/// that is taken, or that [member] only repeats.
String exactlyOneVariantName(String sealed, String member, {String? concept}) {
  final (:base, :rest) = _variantParts(sealed, member, concept).first;
  return base + rest;
}

/// The ways to name [member]'s variant on [sealed], preferred first, each
/// split at the join into the part of [sealed] it keeps and the words it
/// adds: taking the place of [concept] (see [exactlyOneVariantName]) when
/// that applies and repeats no words across the join, then extending
/// [sealed].
List<({String base, String rest})> _variantParts(
  String sealed,
  String member,
  String? concept,
) {
  final joined = joinTypeName(sealed, member);
  final plain = (base: sealed, rest: joined.substring(sealed.length));
  final c = concept ?? '';
  final m = snakeToPascal(member);
  if (c.isEmpty || m.length <= c.length) return [plain];
  if (!m.endsWith(c) || !sealed.endsWith(c)) return [plain];
  if (!RegExp('[A-Z0-9]').hasMatch(m[m.length - c.length])) return [plain];
  final base = sealed.substring(0, sealed.length - c.length);
  final rest = joinTypeName(base, member).substring(base.length);
  if (rest.isEmpty || repeatsAcrossJoin(base, rest)) return [plain];
  return [(base: base, rest: rest), plain];
}

/// Suffixes that set a variant apart from a taken class, in preference
/// order.
const _variantSuffixes = ['Choice', 'Option', 'Variant'];

/// The variant class of each of [members] on the sealed type [sealed], in
/// order: [exactlyOneVariantName] (with [concept]), or — when that is
/// [sealed] itself, a class in [taken] (typically the member block's own
/// class: `MonitoringSloSli` + `request_based_sli` →
/// `MonitoringSloRequestBasedSliChoice`) or another member's
/// variant — the same name with the first of `Choice`, `Option`, `Variant`
/// that is free. A name that [repeatsAcrossJoin] is never free. Null when
/// none is.
List<String>? exactlyOneVariantNames(
  String sealed,
  List<String> members,
  Set<String> taken, {
  String? concept,
}) {
  final out = <String>[];
  final seen = <String>{sealed};
  for (final m in members) {
    final name = [
      for (final (:base, :rest) in _variantParts(sealed, m, concept))
        for (final s in ['', ..._variantSuffixes])
          if (!repeatsAcrossJoin(base, '$rest$s')) '$base$rest$s',
    ].where((n) => !taken.contains(n) && !seen.contains(n)).firstOrNull;
    if (name == null) return null;
    seen.add(name);
    out.add(name);
  }
  return out;
}

/// The PascalCase [concept] when [sealed] ends with it, or null.
String? conceptSuffix(String sealed, String concept) {
  final pascal = snakeToPascal(concept);
  return sealed.endsWith(pascal) ? pascal : null;
}

/// The trailing words of [sealed] after [owner] — the concept a variant
/// may take the place of — or null when [sealed] does not extend [owner].
String? sealedConcept(String owner, String sealed) =>
    sealed.length > owner.length && sealed.startsWith(owner)
    ? sealed.substring(owner.length)
    : null;

/// Why the group [members] cannot take the sealed type named [concept] on
/// [prefix] — or [named], when the type's name was chosen elsewhere — or
/// null: the concept only repeats [prefix], or the sealed type's or a
/// variant's class name is in [taken].
String? sealedNameClash(
  String prefix,
  String concept,
  List<String> members,
  Set<String> taken, {
  String? named,
}) {
  final sealed = named ?? sealedTypeName(prefix, concept);
  if (sealed == null) {
    return 'the sealed type name repeats a segment of $prefix';
  }
  if (taken.contains(sealed)) return 'the class $sealed is taken';
  if (exactlyOneVariantNames(
        sealed,
        members,
        taken,
        concept: named != null
            ? conceptSuffix(sealed, concept)
            : sealedConcept(prefix, sealed),
      ) ==
      null) {
    return 'the variants of $sealed clash with taken classes';
  }
  return null;
}

/// The argument [joint] seals into, on [owner]'s types: its concept, its
/// sealed type, its variants (a [JointVariant] for the
/// [JointPlacement.parts], then a [SoloVariant] per shared member), and the
/// names of the argument, the joint factory, and each nested choice, keyed
/// at [blockPath].
///
/// [human] holds the block's `sealedNames` by bare [sealedGroupKeyOf] key,
/// and [variants] each member's variant. The new types avoid [taken];
/// [slotClash] says why the argument cannot take a concept, and [namedType]
/// is the type a block's concise names chose for a concept, if any.
///
/// The joint factory takes the `sealedNames` entry for the members it sets,
/// else its key member's name (`.adminUsername`).
({
  String concept,
  String sealedClass,
  List<SealedVariant> variants,
  List<SealedGroupName> names,
})
sealJoint(
  JointPlacement joint, {
  required List<String> blockPath,
  required String owner,
  required Map<String, String> human,
  required Map<String, ExactlyOneVariant> variants,
  required Set<String> taken,
  required String? Function(String concept) slotClash,
  required String? Function(String concept) namedType,
}) {
  String typeOf(String concept) =>
      namedType(concept) ??
      sealedTypeName(owner, concept) ??
      owner + snakeToPascal(concept);
  String? conceptOf(String concept, String type) => namedType(concept) == type
      ? conceptSuffix(type, concept)
      : sealedConcept(owner, type);
  List<String> classesOf(
    String type,
    String concept,
    List<String> members,
    Set<String> used,
  ) =>
      exactlyOneVariantNames(
        type,
        members,
        used,
        concept: conceptOf(concept, type),
      ) ??
      [
        for (final m in members)
          exactlyOneVariantName(type, m, concept: conceptOf(concept, type)),
      ];
  SealedGroupName name(
    List<String> members, {
    required String? derived,
    required String? Function(String concept) clashes,
  }) {
    final resolved = resolveSealedName(
      members: members,
      human: human[sealedGroupKeyOf(const [], members)],
      derived: derived,
      clashes: clashes,
    );
    return (
      key: sealedGroupKeyOf(blockPath, members),
      concept: resolved.concept,
      source: resolved.source,
      derived: derived,
      error: resolved.error,
    );
  }

  final solos = {for (final s in joint.shared) variants[s]!.ident};
  final jointName = name(
    joint.jointMembers,
    derived: joint.keyMember,
    clashes: (c) => solos.contains(snakeToDartIdent(c))
        ? 'the variant .${snakeToDartIdent(c)} is taken'
        : null,
  );
  final naming = [jointName.concept, ...joint.shared];
  final outer = name(
    joint.members,
    derived: deriveSealedConcept(joint.members),
    clashes: (c) =>
        slotClash(c) ??
        sealedNameClash(owner, c, naming, taken, named: namedType(c)),
  );
  final sealed = typeOf(outer.concept);
  final classes = classesOf(sealed, outer.concept, naming, taken);
  final used = {...taken, sealed, ...classes};
  final fields = {
    for (final part in joint.parts)
      if (part case [final m]) variants[m]!.ident,
  };
  final parts = <JointPart>[];
  final choices = <SealedGroupName>[];
  for (final part in joint.parts) {
    if (part case [final m]) {
      parts.add(MemberPart(variants[m]!));
      continue;
    }
    final choice = name(
      part,
      derived: deriveSealedConcept(part),
      clashes: (c) => fields.contains(snakeToDartIdent(c))
          ? 'the field ${snakeToDartIdent(c)} is taken'
          : sealedNameClash(owner, c, part, used, named: namedType(c)),
    );
    final type = typeOf(choice.concept);
    final choiceClasses = classesOf(type, choice.concept, part, used);
    final ident = snakeToDartIdent(choice.concept);
    fields.add(ident);
    used
      ..add(type)
      ..addAll(choiceClasses);
    choices.add(choice);
    parts.add(
      ChoicePart(
        ident: ident,
        sealedClass: type,
        variants: [
          for (final (i, m) in part.indexed)
            SoloVariant(variants[m]!, className: choiceClasses[i]),
        ],
      ),
    );
  }
  return (
    concept: outer.concept,
    sealedClass: sealed,
    variants: [
      JointVariant(
        ident: snakeToDartIdent(jointName.concept),
        className: classes.first,
        parts: parts,
      ),
      for (final (i, s) in joint.shared.indexed)
        SoloVariant(variants[s]!, className: classes[i + 1]),
    ],
    names: [outer, jointName, ...choices],
  );
}

/// The sealed types [placement] declares when no name clashes, each as its
/// members, its concept ([human] for those members, else
/// [deriveSealedConcept]), and the names its variants take. A type with no
/// concept is left out.
List<({List<String> members, String concept, List<String> variants})>
preferredSealedTypes(
  GroupPlacement placement,
  String? Function(List<String> members) human,
) {
  String? conceptOf(List<String> members) =>
      human(members) ?? deriveSealedConcept(members);
  return switch (placement) {
    SinglePlacement(:final group) => [
      if (conceptOf(group.members) case final concept?)
        (members: group.members, concept: concept, variants: group.members),
    ],
    JointPlacement(
      :final members,
      :final jointMembers,
      :final keyMember,
      :final shared,
      :final parts,
    ) =>
      [
        if (conceptOf(members) case final concept?)
          (
            members: members,
            concept: concept,
            variants: [human(jointMembers) ?? keyMember, ...shared],
          ),
        for (final part in parts)
          if (part.length > 1)
            if (conceptOf(part) case final concept?)
              (members: part, concept: concept, variants: part),
      ],
  };
}

/// Renders the sealed type for one exactly-one group — or, when [optional],
/// one at-most-one group, held by a nullable slot — and its [variants], in
/// order. [where] names the block the members belong to in the doc
/// comments.
///
/// Each variant is reachable as a `const factory` constructor on the sealed
/// type. A [SoloVariant]'s is named after its member and takes the member's
/// value positionally, so a caller writes the dot shorthand
/// `slot: .imageUri(...)`; a [JointVariant]'s takes one required named
/// argument per part, and each [ChoicePart]'s own sealed type follows the
/// variants. The concrete classes follow the shape
/// `migrate/helper_class_extractor.dart` recognises: a `blockKey` getter
/// and a field-per-key `encode()` that spreads a nested choice (plus
/// `argMap` for a resource-level group).
String renderExactlyOneTypes({
  required String sealed,
  required String where,
  required List<SealedVariant> variants,
  bool optional = false,
}) {
  final topLevel = variants.first.leaves.first.argMapExpr != null;
  final joint = variants.any((v) => v is JointVariant);
  final buf = StringBuffer();
  if (joint) {
    buf
      ..writeln(
        '/// Exactly one of these input sets on $where. The provider rejects any other mix of them.',
      )
      ..writeln('///');
    for (final v in variants) {
      buf.writeln('/// - `.${v.ident}` sets ${_sets(v)}.');
    }
  } else {
    final list = [
      for (final v in variants)
        for (final l in v.leaves) '`${l.tfName}`',
    ].join(', ');
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
  }
  buf
    ..writeln('///')
    ..writeln(
      '/// Pick one with a dot shorthand: `.${variants.first.ident}(...)`.',
    )
    ..writeln('sealed class $sealed {')
    ..writeln('  const $sealed();');
  for (final variant in variants) {
    switch (variant) {
      case SoloVariant(member: final v, :final className):
        buf
          ..writeln()
          ..writeln('  /// Sets `${v.tfName}`.');
        if (v.deprecation != null) {
          buf.writeln(
            "  @Deprecated('${dartSingleQuotedBody(v.deprecation!)}')",
          );
        }
        final parameters = ConstructorSlots.variantConstructor((
          fieldType: v.fieldType,
          ident: v.ident,
          defaultValue: v.defaultValue,
        ));
        buf.writeln(
          '  const factory $sealed.${v.ident}(${parameters.factoryParameters}) = $className;',
        );
      case JointVariant(:final ident, :final className):
        final parameters = [
          for (final p in _jointParameters(variant)) p.factoryParameter,
        ].join(', ');
        buf
          ..writeln()
          ..writeln('  /// Sets ${_sets(variant)}.')
          ..writeln(
            '  const factory $sealed.$ident({$parameters}) = $className;',
          );
    }
  }
  buf
    ..writeln()
    ..writeln(
      joint
          ? '  /// The Terraform argument that identifies this choice.'
          : '  /// The Terraform argument this choice sets.',
    )
    ..writeln('  @internal')
    ..writeln('  String get blockKey;')
    ..writeln()
    ..writeln('  @internal')
    ..writeln('  Map<String, Object?> encode();');
  if (topLevel) {
    buf
      ..writeln()
      ..writeln(
        '  /// The resource arguments behind [encode], as the caller\'s',
      )
      ..writeln('  /// [TfArg]s.')
      ..writeln('  @internal')
      ..writeln('  Map<String, TfArg<Object?>> get argMap;');
  }
  buf.writeln('}');
  for (final variant in variants) {
    switch (variant) {
      case SoloVariant(member: final v, className: final name):
        buf
          ..writeln()
          ..writeln('/// The [$sealed.${v.ident}] choice: sets `${v.tfName}`.');
        if (v.deprecation != null) {
          buf.writeln("@Deprecated('${dartSingleQuotedBody(v.deprecation!)}')");
        }
        final parameters = ConstructorSlots.variantConstructor((
          fieldType: v.fieldType,
          ident: v.ident,
          defaultValue: v.defaultValue,
        ));
        buf
          ..writeln('final class $name extends $sealed {')
          ..writeln('  const $name(${parameters.variantParameters});')
          ..writeln()
          ..writeln('  final ${v.fieldType} ${v.ident};')
          ..writeln()
          ..writeln('  @internal')
          ..writeln('  @override')
          ..writeln("  String get blockKey => '${v.tfName}';")
          ..writeln()
          ..writeln('  @internal')
          ..writeln('  @override')
          ..writeln(
            "  Map<String, Object?> encode() => {'${v.tfName}': ${v.encodeExpr}};",
          );
        if (topLevel) {
          buf
            ..writeln()
            ..writeln('  @internal')
            ..writeln('  @override')
            ..writeln('  Map<String, TfArg<Object?>> get argMap =>')
            ..writeln("      {'${v.tfName}': ${v.argMapExpr}};");
        }
        buf.writeln('}');
      case JointVariant(:final ident, className: final name, :final parts):
        final parameters = [
          for (final p in _jointParameters(variant)) p.variantParameter,
        ].join(', ');
        final encode = [
          for (final part in parts)
            switch (part) {
              MemberPart(member: final m) => "'${m.tfName}': ${m.encodeExpr}",
              ChoicePart(:final ident) => '...$ident.encode()',
            },
        ].join(', ');
        buf
          ..writeln()
          ..writeln('/// The [$sealed.$ident] choice: sets ${_sets(variant)}.')
          ..writeln('final class $name extends $sealed {')
          ..writeln('  const $name({$parameters});')
          ..writeln();
        for (final part in parts) {
          final type = switch (part) {
            MemberPart(:final member) => member.fieldType,
            ChoicePart(:final sealedClass) => sealedClass,
          };
          buf
            ..writeln('  final $type ${part.ident};')
            ..writeln();
        }
        buf
          ..writeln('  @internal')
          ..writeln('  @override')
          ..writeln("  String get blockKey => '${variant.blockKey}';")
          ..writeln()
          ..writeln('  @internal')
          ..writeln('  @override')
          ..writeln('  Map<String, Object?> encode() => {$encode};');
        if (topLevel) {
          final argMap = [
            for (final part in parts)
              switch (part) {
                MemberPart(member: final m) => "'${m.tfName}': ${m.argMapExpr}",
                ChoicePart(:final ident) => '...$ident.argMap',
              },
          ].join(', ');
          buf
            ..writeln()
            ..writeln('  @internal')
            ..writeln('  @override')
            ..writeln('  Map<String, TfArg<Object?>> get argMap =>')
            ..writeln('      {$argMap};');
        }
        buf.writeln('}');
    }
  }
  for (final v in variants.whereType<JointVariant>()) {
    for (final choice in v.parts.whereType<ChoicePart>()) {
      buf
        ..writeln()
        ..write(
          renderExactlyOneTypes(
            sealed: choice.sealedClass,
            where: '[$sealed.${v.ident}]',
            variants: choice.variants,
          ),
        );
    }
  }
  return buf.toString();
}

String _sets(SealedVariant variant) => switch (variant) {
  SoloVariant(:final member) => '`${member.tfName}`',
  JointVariant(:final parts) => _series([
    for (final part in parts)
      switch (part) {
        MemberPart(:final member) => '`${member.tfName}`',
        ChoicePart(:final members) =>
          'one of ${_series([for (final m in members) '`$m`'], 'or')}',
      },
  ], 'and'),
};

String _series(List<String> items, String conjunction) => items.length < 3
    ? items.join(' $conjunction ')
    : '${items.take(items.length - 1).join(', ')}, $conjunction ${items.last}';

List<({String factoryParameter, String variantParameter})> _jointParameters(
  JointVariant variant,
) => [
  for (final part in variant.parts)
    switch (part) {
      MemberPart(member: final m) => _deprecated(
        ConstructorSlots.jointParameter((
          fieldType: m.fieldType,
          ident: m.ident,
          defaultValue: m.defaultValue,
        )),
        m.deprecation,
      ),
      ChoicePart(:final ident, :final sealedClass) =>
        ConstructorSlots.jointParameter((
          fieldType: sealedClass,
          ident: ident,
          defaultValue: null,
        )),
    },
];

({String factoryParameter, String variantParameter}) _deprecated(
  ({String factoryParameter, String variantParameter}) parameter,
  String? deprecation,
) {
  if (deprecation == null) return parameter;
  final annotation = "@Deprecated('${dartSingleQuotedBody(deprecation)}') ";
  return (
    factoryParameter: '$annotation${parameter.factoryParameter}',
    variantParameter: '$annotation${parameter.variantParameter}',
  );
}

/// The prelude both wrapper emitters write for [terraformType]: the
/// override's hand-written prelude, then each sealed argument's
/// declarations after a blank line.
String? emittedPrelude(WrapperOverride? override, String terraformType) {
  if (override == null || override.sealedArguments.isEmpty) {
    return override?.prelude;
  }
  final buf = StringBuffer(override.prelude ?? '');
  for (final a in override.sealedArguments) {
    buf
      ..writeln()
      ..write(
        renderExactlyOneTypes(
          sealed: a.sealedClass,
          where: '`${override.kind.label(terraformType)}`',
          variants: a.variants,
          optional: a.optional,
        ),
      );
  }
  return buf.toString();
}
