import 'constructor_slots.dart';
import 'exactly_one_placement.dart';
import 'naming.dart';
import 'references/resolved_reference.dart';
import 'wrapper_overrides/wrapper_override.dart';

Set<String> sealedGroupKey(String key) => {
  for (final part in key.split(','))
    if (part.trim().isNotEmpty) part.trim(),
};

String sealedGroupKeyOf(List<String> blockPath, Iterable<String> members) => ([
  for (final m in members) [...blockPath, m].join('.'),
]..sort()).join(', ');

enum SealedNameSource { human, derived, fallback }

typedef SealedGroupName = ({
  String key,
  String concept,
  SealedNameSource source,
  String? derived,
  String? error,
});

typedef SealedName = ({String type, SealedGroupName name});

String sealedFallbackConcept(List<String> members) => members.join('_or_');

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

Set<String> declaredTypeNames(String source) => {
  for (final m in RegExp(
    r'\b(?:class|enum|mixin|typedef|extension\s+type(?:\s+const)?)\s+(\w+)',
  ).allMatches(source))
    m.group(1)!,
};

List<String> pascalWords(String name) => RegExp(
  r'[A-Z][a-z0-9]*|[a-z0-9]+',
).allMatches(name).map((m) => m[0]!).toList();

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

String joinTypeName(String prefix, String segment) {
  final words = pascalWords(snakeToPascal(segment));
  final repeated = repeatedWordCount(prefix, words.join());
  return prefix + words.skip(repeated).join();
}

String? sealedTypeName(String prefix, String concept) {
  final name = joinTypeName(prefix, concept);
  return name == prefix ||
          repeatsAcrossJoin(prefix, name.substring(prefix.length))
      ? null
      : name;
}

String exactlyOneVariantName(String sealed, String member, {String? concept}) {
  final (:base, :rest) = _variantParts(sealed, member, concept).first;
  return base + rest;
}

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

const _variantSuffixes = ['Choice', 'Option', 'Variant'];

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

String? conceptSuffix(String sealed, String concept) {
  final pascal = snakeToPascal(concept);
  return sealed.endsWith(pascal) ? pascal : null;
}

String? sealedConcept(String owner, String sealed) =>
    sealed.length > owner.length && sealed.startsWith(owner)
    ? sealed.substring(owner.length)
    : null;

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

Map<String, ResolvedReference> preludeReferences(
  WrapperOverride? override,
  Map<String, ResolvedReference> refs,
) {
  if (override == null) return const {};
  final fields = {
    for (final m in _fieldDeclaration.allMatches(override.prelude ?? ''))
      (type: m[1]!, name: m[2]!),
  };
  return {
    for (final a in override.sealedArguments) ...a.references,
    for (final MapEntry(key: path, value: ref) in refs.entries)
      if (fields.contains((
        type: ref.dartType,
        name: snakeToDartIdent(path.split('.').last),
      )))
        path: ref,
  };
}

final _fieldDeclaration = RegExp(r'final ([A-Za-z_][\w<>, ]*?)\?? (\w+);');
