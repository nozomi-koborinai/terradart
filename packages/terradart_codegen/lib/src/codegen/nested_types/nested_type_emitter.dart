import '../constructor_slots.dart';
import '../enum_emitter.dart';
import '../exactly_one_placement.dart';
import '../exactly_one_types.dart';
import '../naming.dart';
import '../provider_enums.dart';
import '../references/reference_targets.dart';
import '../wrapper_overrides/wrapper_override.dart';
import 'nested_type_collector.dart';

/// Renders the Dart source for a resource's derived nested-block helper
/// classes and their attribute enums — the render half of the
/// `deriveNestedTypes` gate, matching the `@immutable` helper-class idiom
/// hand-written `wrapper_overrides/` preludes have used until now (e.g.
/// `wrapper_overrides/yaml/google_apigee_datastore.yaml`).
///
/// Pure string templating, no I/O. Like every other emitter in this package
/// (see `WrapperEmitter.emit`), the returned source is **unformatted** —
/// callers splice it into the surrounding wrapper file and run
/// `dart_style.DartFormatter` once, over the whole file. It assumes that
/// file already imports `package:meta/meta.dart` (`@immutable`) and
/// `package:terradart_core/terradart_core.dart` (`TfArg`, `TfArgLiteral`);
/// no import directives are emitted here.
///
/// Ordering is depth-first over [specs] — each spec's own class, then its
/// attribute enums, then its children (recursively), before moving to the
/// next sibling — with alphabetical-by-Terraform-name tie-breaking at every
/// sibling level (root [specs], each block's enum-bearing attrs, each
/// block's children). This makes the output depend only on the *set* of
/// specs, never the order the caller happened to list them in, mirroring
/// `constructor_params.dart`'s "IR-natural order... alphabetical" guarantee
/// for top-level attributes.
String renderNestedTypes(
  List<NestedBlockSpec> specs, {
  required String resourceTerraformType,
}) {
  final buf = StringBuffer();
  final rendered = <String>{};
  final layouts = _layouts(specs);
  for (final spec in _byTfName(specs, (NestedBlockSpec s) => s.tfName)) {
    final tree = _renderBlockTree(
      spec,
      resourceTerraformType,
      rendered,
      layouts,
    );
    if (tree.isEmpty) continue;
    if (buf.isNotEmpty) buf.writeln();
    buf.write(tree);
  }
  return buf.toString();
}

/// Renders one block's own class, then its attribute enums, then recurses
/// depth-first into its children — the full subtree [spec] roots, as a
/// sequence of top-level declarations separated by single blank lines.
///
/// A class already in [rendered] renders nothing, subtree included: blocks
/// share a class name only when their whole subtrees have the same shape.
String _renderBlockTree(
  NestedBlockSpec spec,
  String resourceTerraformType,
  Set<String> rendered,
  Map<String, _Layout> layouts,
) {
  if (!rendered.add(spec.className)) return '';
  final layout = layouts[spec.className]!;
  final where =
      'the `${spec.path.join('.')}` block of `$resourceTerraformType`';
  final buf = StringBuffer();
  if (layout.whole case final whole?) {
    buf.write(
      renderExactlyOneTypes(
        sealed: spec.className,
        where: where,
        variants: [
          for (final (i, v) in whole.variants.indexed)
            SoloVariant(v, className: whole.classes[i]),
        ],
        optional: whole.atMostOne,
      ),
    );
  } else {
    buf.write(_renderClass(spec, resourceTerraformType, layout.plans));
  }
  for (final group in layout.sealed) {
    buf
      ..writeln()
      ..write(
        renderExactlyOneTypes(
          sealed: group.type,
          where: where,
          variants: group.variants,
          optional: group.optional,
        ),
      );
  }

  final enumAttrs = _byTfName(
    spec.attrs.where((a) => a.enumValues != null),
    (NestedAttrSpec a) => a.tfName,
  );
  for (final attr in enumAttrs) {
    if (!rendered.add(attr.dartType)) continue;
    buf
      ..writeln()
      ..write(_renderEnum(attr));
  }

  for (final child in _byTfName(
    spec.children,
    (NestedBlockSpec s) => s.tfName,
  )) {
    final tree = _renderBlockTree(
      child,
      resourceTerraformType,
      rendered,
      layouts,
    );
    if (tree.isEmpty) continue;
    buf
      ..writeln()
      ..write(tree);
  }

  return buf.toString();
}

/// Renders [spec]'s own `@immutable` helper class: doc comment, constructor,
/// fields, `encode()`. Field order is: [spec]'s attributes first
/// (alphabetical by Terraform name), then its block-type children — both
/// derived nested classes and opaque [NestedBlockSpec.excludedChildren]
/// passthroughs, merged into one alphabetical-by-Terraform-name group —
/// mirroring `constructor_params.dart`'s "attributes first, then nested
/// blocks" grouping for top-level wrapper constructors.
String _renderClass(
  NestedBlockSpec spec,
  String resourceTerraformType,
  List<HelperMember> plans,
) {
  final blockPath = spec.path.join('.');

  final buf = StringBuffer()
    ..writeln('/// Typed helper for the `$blockPath` block of')
    ..writeln('/// `$resourceTerraformType` (derived from provider schema).');
  if (spec.shared) {
    buf.writeln('/// Shared by every block of this shape in the resource.');
  }
  buf
    ..writeln('@immutable')
    ..writeln('final class ${spec.className} {');
  if (plans.isEmpty) {
    // `{}` is not a valid (empty) named-parameter clause in Dart — unlike
    // an empty `()`, the braces require at least one parameter — so a
    // block with no attrs/children/excluded children gets a bare `()`
    // constructor instead of the usual `({...})` shape.
    buf.writeln('  const ${spec.className}();');
  } else {
    buf.writeln('  const ${spec.className}({');
    for (final p in plans) {
      buf.writeln('    ${p.ctorParam}');
    }
    buf.writeln('  });');
  }
  buf.writeln();

  for (final p in plans) {
    buf
      ..writeln('  ${p.fieldDecl}')
      ..writeln();
  }

  buf
    ..writeln('  @internal')
    ..writeln('  Map<String, Object?> encode() => {');
  for (final p in plans) {
    buf.writeln('    ${p.encodeEntry}');
  }
  buf
    ..writeln('  };')
    ..writeln('}');

  return buf.toString();
}

/// Renders the free-standing enum declaration for one enum-carrying
/// attribute. Member names reuse [enumMemberNames] (shared with the
/// top-level `deriveEnums` path via `naming.dart`'s `enumName`) — never
/// re-implemented here, including its reserved-word fallback.
String _renderEnum(NestedAttrSpec attr) {
  final values = attr.enumValues!;
  return renderTerraformEnum(
    doc: '`${attr.tfName}` — derived from the provider schema description.',
    name: attr.dartType,
    members: enumMemberNames(values),
    rawValues: values,
  );
}

/// One class member before layout: its plan, and the shape a sealed
/// variant holding it takes (null for an excluded child).
typedef _Member = ({
  String tfName,
  bool required,
  bool keyed,
  HelperMember plan,
  ExactlyOneVariant? variant,
});

/// [spec]'s own class members, in render order: attrs first, then
/// block-type children (derived + excluded, merged), each group
/// alphabetical by Terraform name.
List<_Member> _members(NestedBlockSpec spec) {
  final members = <_Member>[
    for (final attr in _byTfName(spec.attrs, (NestedAttrSpec a) => a.tfName))
      (
        tfName: attr.tfName,
        required: attr.required,
        keyed: false,
        plan: ConstructorSlots.nestedAttribute(attr),
        variant: switch (attr.reference) {
          final reference? => _referenceVariant(attr, reference),
          null => _variant(
            tfName: attr.tfName,
            ident: safeDartIdentifier(attr.dartName),
            elementType: attr.dartType,
            repeated: attr.repeated,
            wrapInTfArg: true,
            sensitive: attr.sensitive,
          ),
        },
      ),
  ];

  final blockChildren = <_Member>[
    for (final child in spec.children)
      (
        tfName: child.tfName,
        required: child.required,
        keyed: child.keyed,
        plan: ConstructorSlots.nestedChild(child),
        variant: _variant(
          tfName: child.tfName,
          ident: safeDartIdentifier(snakeToCamel(child.tfName)),
          elementType: child.className,
          repeated: child.repeated,
          wrapInTfArg: false,
          defaultValue: emptyBlockDefault(child),
        ),
      ),
    for (final excluded in spec.excludedChildren)
      (
        tfName: excluded.tfName,
        required: excluded.required,
        keyed: excluded.keyed,
        plan: ConstructorSlots.excludedBlock(excluded),
        variant: null,
      ),
  ]..sort((a, b) => a.tfName.compareTo(b.tfName));
  members.addAll(blockChildren);

  return members;
}

/// One sealed field of a helper class: required for an exactly-one group or
/// a joint of them, nullable for an at-most-one ([optional]) group.
typedef _SealedGroup = ({
  List<String> members,
  List<SealedVariant> variants,
  bool optional,

  /// The field's Dart name.
  String ident,

  /// The sealed type's name.
  String type,

  /// The field's name first, then any joint factory's and nested choice's.
  List<SealedGroupName> names,
});

typedef _Layout = ({
  List<HelperMember> plans,
  List<_SealedGroup> sealed,

  /// The exactly-one group that is every input of the block, when there is
  /// one: the block's own class is then its sealed type.
  _WholeBlockGroup? whole,
  List<String> skipped,
  List<String> skippedAtMostOne,
});

typedef _WholeBlockGroup = ({
  List<ExactlyOneVariant> variants,
  List<String> classes,
  bool atMostOne,
});

/// Every block's [_layout] by class name, laid out in render order
/// (depth-first, alphabetical by Terraform name). Each block's sealed types
/// and variants join the names later blocks must not take, so two blocks
/// never emit the same class.
Map<String, _Layout> _layouts(List<NestedBlockSpec> specs) {
  final taken = nestedTypeNames(specs);
  final out = <String, _Layout>{};
  void walk(NestedBlockSpec spec) {
    if (out.containsKey(spec.className)) return;
    final layout = _layout(spec, taken);
    out[spec.className] = layout;
    if (layout.whole case final whole?) taken.addAll(whole.classes);
    for (final g in layout.sealed) {
      taken
        ..add(g.type)
        ..addAll([for (final v in g.variants) ...v.classes]);
    }
    for (final c in _byTfName(spec.children, (NestedBlockSpec s) => s.tfName)) {
      walk(c);
    }
  }

  for (final s in _byTfName(specs, (NestedBlockSpec s) => s.tfName)) {
    walk(s);
  }
  return out;
}

/// Every class and enum name [specs] declare, children included — the
/// names a sealed group's type and variants must not take.
Set<String> nestedTypeNames(List<NestedBlockSpec> specs) {
  final out = <String>{};
  void walk(NestedBlockSpec s) {
    out.add(s.className);
    for (final a in s.attrs) {
      if (a.enumValues != null) out.add(a.dartType);
    }
    s.children.forEach(walk);
  }

  specs.forEach(walk);
  return out;
}

/// [spec]'s field plans with each sealable [NestedBlockSpec.exactlyOne]
/// group folded into one required sealed field, and each sealable
/// [NestedBlockSpec.atMostOne] group into one nullable sealed field, at its
/// first member's position. A group is sealable when every member is an
/// optional typed input of this block, not a keyed block, and no earlier
/// group (exactly-one groups come first) took one of them. Exactly-one
/// groups that share one member set and nothing else fold into one sealed
/// field together ([placeGroups]).
///
/// An exactly-one group that is every input of a (non-keyed) block — or an
/// at-most-one group, when the block is optional — needs no field: the
/// block's own class becomes the sealed type, so its parent writes
/// `block: .member(...)`.
///
/// Each sealed field is named by [resolveSealedName]: the block's
/// [NestedBlockSpec.sealedNames] entry, else [deriveSealedConcept]. A name
/// clashes when its field shadows another input of the block, its type
/// only repeats the block's class name, or its type or a variant takes a
/// name in [taken] (every class the resource declares) or one an earlier
/// group chose.
_Layout _layout(NestedBlockSpec spec, Set<String> taken) {
  final members = _members(spec);
  final byName = {for (final m in members) m.tfName: m};
  if (!spec.keyed) {
    for (final group in [
      ...spec.exactlyOne,
      // A null optional block already means "none of them".
      if (!spec.required) ...spec.atMostOne,
    ]) {
      if (group.length != members.length) continue;
      final ms = [for (final name in group) byName[name]];
      if (ms.any(
        (m) => m == null || m.required || m.keyed || m.variant == null,
      )) {
        continue;
      }
      final leaf = snakeToPascal(spec.tfName);
      final classes = exactlyOneVariantNames(
        spec.className,
        group,
        taken,
        concept: spec.className.endsWith(leaf) ? leaf : null,
      );
      if (classes == null) continue;
      return (
        plans: const [],
        sealed: const [],
        whole: (
          variants: [for (final m in ms) m!.variant!],
          classes: classes,
          atMostOne: !spec.exactlyOne.any((g) => identical(g, group)),
        ),
        skipped: [
          for (final g in spec.exactlyOne)
            if (!identical(g, group))
              '${spec.path.join('.')} [${g.join(', ')}]: '
                  '${g.first} is in an earlier group',
        ],
        skippedAtMostOne: [
          for (final g in spec.atMostOne)
            if (!identical(g, group))
              '${spec.path.join('.')} [${g.join(', ')}]: '
                  '${g.first} is in an earlier group',
        ],
      );
    }
  }
  final claimed = <String>{};
  final chosenTypes = <String>{};
  final chosenIdents = <String>{};
  final sealed = <_SealedGroup>[];
  final skipped = <String>[];
  final skippedAtMostOne = <String>[];
  final firstOf = <String, _SealedGroup>{};
  String? reasonOf(String name) {
    final m = byName[name];
    if (m == null) return '$name is not an input of this block';
    if (m.required) return '$name is required';
    if (m.keyed) return '$name is a keyed block';
    if (m.variant == null) return '$name has no typed shape';
    if (claimed.contains(name)) return '$name is in an earlier group';
    return null;
  }

  String? fieldClash(String concept, List<String> group) {
    final ident = safeDartIdentifier(snakeToCamel(concept));
    final otherIdents = {
      for (final m in members)
        if (!group.contains(m.tfName)) m.plan.fieldDecl.split(' ').last,
    };
    return otherIdents.contains('$ident;') || chosenIdents.contains(ident)
        ? 'the field $ident is taken'
        : null;
  }

  for (final placement in placeGroups(
    blockGroups(spec.exactlyOne, spec.atMostOne),
  )) {
    switch (placement) {
      case SinglePlacement(group: (members: final group, :final optional)):
        if (group.map(reasonOf).nonNulls.firstOrNull case final reason?) {
          (optional ? skippedAtMostOne : skipped).add(
            '${spec.path.join('.')} [${group.join(', ')}]: $reason',
          );
          continue;
        }
        claimed.addAll(group);
        String typeOf(String concept) =>
            spec.sealedTypeNames[concept] ??
            sealedTypeName(spec.className, concept) ??
            spec.className + snakeToPascal(concept);
        String? conceptOf(String concept, String type) =>
            spec.sealedTypeNames[concept] == type
            ? conceptSuffix(type, concept)
            : sealedConcept(spec.className, type);
        final derived = deriveSealedConcept(group);
        final resolved = resolveSealedName(
          members: group,
          human: spec.sealedNames[sealedGroupKeyOf(const [], group)],
          derived: derived,
          clashes: (c) =>
              fieldClash(c, group) ??
              sealedNameClash(spec.className, c, group, {
                ...taken,
                ...chosenTypes,
              }, named: spec.sealedTypeNames[c]),
        );
        final ident = safeDartIdentifier(snakeToCamel(resolved.concept));
        // Only a group whose name reports an error (which fails `wrap`)
        // reaches the plain concatenations: `clashes` vetted every name it
        // resolves to.
        final type = typeOf(resolved.concept);
        final classes =
            exactlyOneVariantNames(type, group, {
              ...taken,
              ...chosenTypes,
            }, concept: conceptOf(resolved.concept, type)) ??
            [
              for (final m in group)
                exactlyOneVariantName(
                  type,
                  m,
                  concept: conceptOf(resolved.concept, type),
                ),
            ];
        chosenIdents.add(ident);
        chosenTypes
          ..add(type)
          ..addAll(classes);
        final g = (
          members: group,
          variants: [
            for (final (i, name) in group.indexed)
              SoloVariant(byName[name]!.variant!, className: classes[i]),
          ],
          optional: optional,
          ident: ident,
          type: type,
          names: [
            (
              key: sealedGroupKeyOf(spec.path, group),
              concept: resolved.concept,
              source: resolved.source,
              derived: derived,
              error: resolved.error,
            ),
          ],
        );
        sealed.add(g);
        firstOf[members.firstWhere((m) => group.contains(m.tfName)).tfName] = g;
      case final JointPlacement joint:
        final group = joint.members;
        if (group.map(reasonOf).nonNulls.firstOrNull case final reason?) {
          for (final g in joint.groups) {
            skipped.add('${spec.path.join('.')} [${g.join(', ')}]: $reason');
          }
          continue;
        }
        claimed.addAll(group);
        final argument = sealJoint(
          joint,
          blockPath: spec.path,
          owner: spec.className,
          human: spec.sealedNames,
          variants: {for (final name in group) name: byName[name]!.variant!},
          taken: {...taken, ...chosenTypes},
          slotClash: (c) => fieldClash(c, group),
          namedType: (c) => spec.sealedTypeNames[c],
        );
        final ident = safeDartIdentifier(snakeToCamel(argument.concept));
        chosenIdents.add(ident);
        chosenTypes
          ..add(argument.sealedClass)
          ..addAll([for (final v in argument.variants) ...v.classes]);
        final g = (
          members: group,
          variants: argument.variants,
          optional: false,
          ident: ident,
          type: argument.sealedClass,
          names: argument.names,
        );
        sealed.add(g);
        firstOf[members.firstWhere((m) => group.contains(m.tfName)).tfName] = g;
    }
  }
  final plans = <HelperMember>[];
  for (final m in members) {
    final g = firstOf[m.tfName];
    if (g != null) {
      final ident = g.ident;
      final type = g.type;
      plans.add(
        ConstructorSlots.sealedMember(
          ident: ident,
          type: type,
          optional: g.optional,
        ),
      );
    } else if (!claimed.contains(m.tfName)) {
      plans.add(m.plan);
    }
  }
  return (
    plans: plans,
    sealed: sealed,
    whole: null,
    skipped: skipped,
    skippedAtMostOne: skippedAtMostOne,
  );
}

/// The nested exactly-one [groups] — at-most-one groups when [optional] —
/// (parent path → member names, as `collectNestedTypes` takes them) that
/// [renderNestedTypes] leaves unsealed for [specs], each as
/// `<path> [<members>]: <reason>`. A group in a block with no typed helper
/// is left out when [sealedByHand] says a hand-written slot seals it.
List<String> unsealedNestedGroups(
  List<NestedBlockSpec> specs,
  Map<String, List<List<String>>> groups, {
  bool optional = false,
  bool Function(String path, List<String> members)? sealedByHand,
}) {
  final out = <String>[];
  final seen = <String>{};
  final laidOut = <String>{};
  final layouts = _layouts(specs);
  // A shared helper carries its canonical occurrence's `path`, so the walk
  // tracks where each copy actually sits.
  void walk(NestedBlockSpec spec, List<String> at) {
    if (!seen.add(at.join('.'))) return;
    if (laidOut.add(spec.className)) {
      final layout = layouts[spec.className]!;
      out.addAll(optional ? layout.skippedAtMostOne : layout.skipped);
    }
    for (final c in spec.children) {
      walk(c, [...at, c.tfName]);
    }
  }

  for (final s in specs) {
    walk(s, [s.tfName]);
  }
  for (final MapEntry(key: path, value: list) in groups.entries) {
    if (seen.contains(path)) continue;
    for (final group in list) {
      if (sealedByHand?.call(path, group) ?? false) continue;
      out.add('$path [${group.join(', ')}]: the block has no typed helper');
    }
  }
  return out;
}

/// The name of every group [renderNestedTypes] seals for [specs], each
/// with its [sealedGroupKeyOf] key from the resource root, and any naming
/// error. A shared helper is named once, at its canonical path.
List<SealedGroupName> nestedSealedNames(List<NestedBlockSpec> specs) {
  final out = <SealedGroupName>[];
  final laidOut = <String>{};
  final layouts = _layouts(specs);
  void walk(NestedBlockSpec spec) {
    if (laidOut.add(spec.className)) {
      for (final g in layouts[spec.className]!.sealed) {
        out.addAll(g.names);
      }
    }
    spec.children.forEach(walk);
  }

  specs.forEach(walk);
  return out;
}

/// The [sealedGroupKeyOf] key of every sealed group at every place it
/// sits, a shared helper's copies included — each key a `sealedNames`
/// entry can name the group by.
Set<String> nestedSealedKeys(List<NestedBlockSpec> specs) {
  final out = <String>{};
  final layouts = _layouts(specs);
  void walk(NestedBlockSpec spec, List<String> at) {
    for (final g in layouts[spec.className]!.sealed) {
      out.add(sealedGroupKeyOf(at, g.members));
      for (final v in g.variants.whereType<JointVariant>()) {
        out.add(sealedGroupKeyOf(at, v.members));
        for (final c in v.parts.whereType<ChoicePart>()) {
          out.add(sealedGroupKeyOf(at, c.members));
        }
      }
    }
    for (final c in spec.children) {
      walk(c, [...at, c.tfName]);
    }
  }

  for (final s in specs) {
    walk(s, [s.tfName]);
  }
  return out;
}

/// The sealed-variant shape of a typed member: the required field and the
/// value `encode()` writes.
ExactlyOneVariant _variant({
  required String tfName,
  required String ident,
  required String elementType,
  required bool repeated,
  required bool wrapInTfArg,
  bool sensitive = false,
  String? defaultValue,
}) {
  final accessor = wrapInTfArg ? '.toTfJson()' : '.encode()';
  final elementDartType = wrapInTfArg
      ? argTypeFor(elementType, sensitive: sensitive)
      : elementType;
  return (
    tfName: tfName,
    ident: ident,
    fieldType: repeated ? 'List<$elementDartType>' : elementDartType,
    encodeExpr: repeated
        ? '[for (final e in $ident) e$accessor]'
        : '$ident$accessor',
    argMapExpr: null,
    deprecation: null,
    defaultValue: defaultValue,
  );
}

/// `const <Helper>()` when [spec] is a single block with no fields, so a
/// variant holding it can take no argument; null otherwise.
String? emptyBlockDefault(NestedBlockSpec spec) =>
    !spec.repeated &&
        !spec.keyed &&
        spec.attrs.isEmpty &&
        spec.children.isEmpty &&
        spec.excludedChildren.isEmpty
    ? 'const ${spec.className}()'
    : null;

/// The sealed-variant shape of a reference-typed member.
ExactlyOneVariant _referenceVariant(
  NestedAttrSpec attr,
  ResolvedReference reference,
) {
  final ident = safeDartIdentifier(attr.dartName);
  return (
    tfName: attr.tfName,
    ident: ident,
    fieldType: reference.dartType,
    encodeExpr: '$ident${reference.encode}.toTfJson()',
    argMapExpr: null,
    deprecation: null,
    defaultValue: null,
  );
}

/// Sorts a defensive copy of [items] by [tfName], ascending. Every
/// sibling-ordering decision in this file goes through here so the output
/// never depends on the caller's own list order.
List<T> _byTfName<T>(Iterable<T> items, String Function(T) tfName) {
  final list = items.toList()..sort((a, b) => tfName(a).compareTo(tfName(b)));
  return list;
}
