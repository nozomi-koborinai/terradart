import '../ir/provider_schema_ir.dart';
import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'constructor_slots.dart';
import 'dart_type_writer.dart';
import 'exactly_one_placement.dart';
import 'exactly_one_types.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'provider_enums.dart';
import 'references/reference_targets.dart';
import 'wrapper_overrides/wrapper_override.dart';
import 'wrapper_overrides/yaml_loader.dart';

/// The `deriveExactlyOne` gate for a factory's own arguments, resources and
/// data sources alike: every sealable top-level group in the override's own
/// kind's hints becomes one [SealedArgument] on the override, and its
/// members leave the constructor. An exactly-one group's slot is required;
/// an at-most-one group's (mutually exclusive inputs the provider also
/// accepts none of) is nullable and spreads nothing when null.
///
/// A group is sealable when every member is an optional constructor input
/// no custom slot owns and no earlier group took, and none is a keyed
/// (`nesting_mode: map`) block, which the migration manifest has no shape
/// for; the others are returned in `skipped` (exactly-one) or
/// `skippedAtMostOne` with a reason and keep their plain slots. Exactly-one
/// groups claim their members first. Exactly-one groups that share one
/// member set and nothing else seal as one argument ([placeGroups]); any
/// other overlap leaves the later group unsealed.
///
/// Every sealed group, top-level or nested, is named by
/// [resolveSealedName] and listed in `names`; `nameErrors` lists each
/// `sealedNames` entry that clashes, repeats the derived name, or matches
/// no sealed group.
///
/// [references] (`--typed-references`: Terraform type → dotted input path →
/// target, per kind) types a member the ledger matches: its variant holds a
/// `RefTo<Target>`, and its [SealedArgument.references] holds that
/// reference. Diagnostics name a data source `data.<type>`; `names` carries
/// each override's [LoadedOverrides.lintKey], the sealed-name ledger key.
({
  LoadedOverrides overrides,
  List<String> skipped,
  List<String> skippedAtMostOne,
  List<SealedName> names,
  List<String> nameErrors,
})
deriveExactlyOneSlots(
  LoadedOverrides overrides,
  ProviderSchemaIR ir, {
  required ProviderEnums providerEnums,
  required ByKind<Map<String, Map<String, dynamic>>> rawSchemas,
  ByKind<Map<String, Map<String, ResolvedReference>>> references = const (
    resources: <String, Map<String, ResolvedReference>>{},
    dataSources: <String, Map<String, ResolvedReference>>{},
  ),
}) {
  final skipped = <String>[];
  final skippedAtMostOne = <String>[];
  final names = <SealedName>[];
  final nameErrors = <String>[];
  Map<String, WrapperOverride> derive(WrapperOverrideKind kind) {
    final defs = ir.of(kind);
    final out = <String, WrapperOverride>{};
    for (final MapEntry(key: type, value: o) in overrides.of(kind).entries) {
      final def = defs[type];
      final label = kind.label(type);
      final refs =
          references.of(kind)[type] ?? const <String, ResolvedReference>{};
      final root = providerEnums.rootGroups(type, o);
      final hints = providerEnums.nestedHints(type, o);
      final nested = hints.exactlyOneGroups;
      final nestedOptional = hints.atMostOneGroups;
      if (!o.deriveExactlyOne ||
          def == null ||
          (root.exactlyOne.isEmpty &&
              root.atMostOne.isEmpty &&
              nested.isEmpty &&
              nestedOptional.isEmpty)) {
        out[type] = o;
        continue;
      }
      final specs = o.deriveNestedTypes
          ? collectNestedTypes(
              resourceBlock: rawSchemas.of(kind)[type]!,
              resourcePrefix: o.kind.typeStem(type),
              customSlotKeys: {...?o.customSlots?.keys},
              excludedPaths: (o.nestedTypeExcludes ?? const <String>[]).toSet(),
              shareIdenticalShapes: o.dedupeNestedTypes,
              enumValues: hints.enumValues,
              exactlyOneGroups: nested,
              atMostOneGroups: nestedOptional,
              sealedNames: o.sealedNames,
              references: (path) => refs[path.join('.')],
              typeOverrides: o.nestedDartTypeOverrides,
              reserved: hints.reserved,
              typeNames: o.typeNames,
            )
          : const <NestedBlockSpec>[];
      final typeNames = <SealedGroupName>[];
      out[type] = root.exactlyOne.isEmpty && root.atMostOne.isEmpty
          ? o
          : _derive(
              type,
              o,
              def,
              blockGroups(root.exactlyOne, root.atMostOne),
              specs,
              refs,
              skipped: skipped,
              skippedAtMostOne: skippedAtMostOne,
              names: typeNames,
            );
      typeNames.addAll(nestedSealedNames(specs));
      final human = {
        for (final k in (o.sealedNames ?? const <String, String>{}).keys)
          sealedGroupKeyOf(const [], sealedGroupKey(k)): k,
      };
      for (final n in typeNames) {
        names.add((type: overrides.lintKey(type, kind), name: n));
        human.remove(n.key);
        if (n.error case final e?) nameErrors.add('$label [${n.key}]: $e');
      }
      nestedSealedKeys(specs).forEach(human.remove);
      if (providerEnums.hasGroupSource) {
        for (final k in human.values) {
          nameErrors.add('$label sealedNames "$k" matches no sealed group');
        }
      }
      skipped.addAll([
        for (final s in unsealedNestedGroups(specs, nested)) '$label $s',
      ]);
      skippedAtMostOne.addAll([
        for (final s in unsealedNestedGroups(
          specs,
          nestedOptional,
          optional: true,
        ))
          '$label $s',
      ]);
    }
    for (final MapEntry(key: type, value: o) in overrides.of(kind).entries) {
      final key = overrides.lintKey(type, kind);
      if (providerEnums.hasGroupSource &&
          out[type] == o &&
          o.sealedNames != null &&
          !names.any((n) => n.type == key)) {
        for (final k in o.sealedNames!.keys) {
          nameErrors.add(
            '${kind.label(type)} sealedNames "$k" matches no sealed group',
          );
        }
      }
    }
    return out;
  }

  return (
    overrides: LoadedOverrides(
      resources: derive(WrapperOverrideKind.resource),
      dataSources: derive(WrapperOverrideKind.dataSource),
    ),
    skipped: skipped,
    skippedAtMostOne: skippedAtMostOne,
    names: names,
    nameErrors: nameErrors,
  );
}

/// The meta-arguments every factory constructor takes besides its inputs.
const _metaParams = {
  'local_name',
  'lifecycle',
  'depends_on',
  'provider',
  'timeouts',
};

final _optionalHelperParam = RegExp(r'^([A-Za-z_][\w<>, ]*)\?\s+(\w+)$');

/// The variant for group member [tfName] when a custom slot holds it as an
/// optional hand-written helper — `Helper? ident` with the argMap entry
/// `if (ident != null) '<tfName>': TfArg.literal(<expr>),` — so the variant
/// keeps the helper type and its encoding. Null for any other slot shape,
/// which keeps the group unsealed.
ExactlyOneVariant? customSlotVariant(
  String tfName,
  CustomSlot slot,
  String? deprecation,
) {
  final param = _optionalHelperParam.firstMatch(slot.paramDeclaration.trim());
  if (param == null) return null;
  final ident = param.group(2)!;
  final prefix = "if ($ident != null) '$tfName': TfArg.literal(";
  final entry = slot.argMapEntry.trim();
  if (!entry.startsWith(prefix) || !entry.endsWith('),')) return null;
  final encode = entry.substring(prefix.length, entry.length - 2);
  return (
    tfName: tfName,
    ident: ident,
    fieldType: param.group(1)!.trim(),
    encodeExpr: encode,
    argMapExpr: 'TfArg.literal($encode)',
    deprecation: deprecation,
    defaultValue: null,
  );
}

WrapperOverride _derive(
  String type,
  WrapperOverride o,
  ResourceDef def,
  List<BlockGroup> groups,
  List<NestedBlockSpec> nestedSpecs,
  Map<String, ResolvedReference> refs, {
  required List<String> skipped,
  required List<String> skippedAtMostOne,
  required List<SealedGroupName> names,
}) {
  final prefix = o.kind.typeStem(type);
  final where = o.kind.label(type);
  final order = switch (o.kind) {
    WrapperOverrideKind.resource => orderedConstructorParams(def, o.paramOrder),
    WrapperOverrideKind.dataSource => orderedDataSourceConstructorParams(
      def,
      o.paramOrder,
    ),
  };
  final slots = {...?o.customSlots};
  final required = {...?o.requiredParams};
  final attrs = {for (final a in def.root.attributes) a.name: a};
  final blocks = {for (final b in def.root.nestedBlocks) b.name: b};
  final specs = {for (final s in nestedSpecs) s.tfName: s};

  ExactlyOneVariant? variant(String m) {
    final ident = snakeToDartIdent(m);
    final deprecation = o.deprecatedParams?[m];
    final attr = attrs[m];
    if (attr != null) {
      if (attr.constraints.required) return null;
      final ref = refs[m];
      if (ref != null && o.dartTypeOverrides?[m] == null) {
        final value = '$ident${ref.encode}';
        return (
          tfName: m,
          ident: ident,
          fieldType: ref.dartType,
          encodeExpr: '$value.toTfJson()',
          argMapExpr: value,
          deprecation: deprecation,
          defaultValue: null,
        );
      }
      final dartType = o.dartTypeOverrides?[m] ?? writeDartType(attr.type);
      if (isEnumListType(dartType)) {
        final encode = '[for (final e in $ident) e.toTfJson()]';
        return (
          tfName: m,
          ident: ident,
          fieldType: dartType,
          encodeExpr: encode,
          argMapExpr: 'TfArg.literal($encode)',
          deprecation: deprecation,
          defaultValue: null,
        );
      }
      return (
        tfName: m,
        ident: ident,
        fieldType: argTypeFor(dartType, sensitive: takesSensitive(attr)),
        encodeExpr: '$ident.toTfJson()',
        argMapExpr: ident,
        deprecation: deprecation,
        defaultValue: null,
      );
    }
    final block = blocks[m];
    if (block == null || block.constraints.required) return null;
    final spec = specs[m];
    if (spec != null) {
      final bare = ConstructorSlots.nestedParamType(spec);
      final encode = spec.repeated
          ? '[for (final e in $ident) e.encode()]'
          : '$ident.encode()';
      return (
        tfName: m,
        ident: ident,
        fieldType: bare.substring(0, bare.length - 1),
        encodeExpr: encode,
        argMapExpr: 'TfArg.literal($encode)',
        deprecation: deprecation,
        defaultValue: emptyBlockDefault(spec),
      );
    }
    return null;
  }

  final taken = <String>{};
  final humanNames = {
    for (final MapEntry(:key, :value)
        in (o.sealedNames ?? const <String, String>{}).entries)
      sealedGroupKeyOf(const [], sealedGroupKey(key)): value,
  };
  final classNames = {
    ...nestedTypeNames(nestedSpecs),
    ...declaredTypeNames(o.prelude ?? ''),
  };
  final chosenSlots = <String>{};
  final sealedArguments = <SealedArgument>[];
  var paramOrder = order;
  var argMapOrder = o.argMapOrder;
  String? check(String m, List<ExactlyOneVariant> into) {
    if (!order.contains(m)) return '$m is not a constructor input';
    if (slots[m] case final custom?) {
      final v = customSlotVariant(m, custom, o.deprecatedParams?[m]);
      if (v == null) return '$m is a custom slot';
      if (taken.contains(m)) return '$m is in an earlier group';
      into.add(v);
      return null;
    }
    if (required.contains(m)) return '$m is in requiredParams';
    if (taken.contains(m)) return '$m is in an earlier group';
    if (specs[m]?.keyed ?? false) return '$m is a keyed block';
    final v = variant(m);
    if (v == null) return '$m is required or has no typed shape';
    into.add(v);
    return null;
  }

  Map<String, ResolvedReference> held(Iterable<ExactlyOneVariant> leaves) => {
    for (final l in leaves)
      if (refs[l.tfName] case final ref? when ref.dartType == l.fieldType)
        l.tfName: ref,
  };

  Set<String> classesFor(List<String> group) => {
    ...classNames,
    for (final n in order)
      if (!group.contains(n) || _hasClass(n, blocks, o))
        prefix + snakeToPascal(n),
  };
  String? slotTaken(String concept, List<String> group) =>
      !group.contains(concept) &&
              (order.contains(concept) || slots.containsKey(concept)) ||
          chosenSlots.contains(concept) ||
          _metaParams.contains(concept)
      ? 'the slot $concept is taken'
      : null;
  for (final placement in placeGroups(groups)) {
    switch (placement) {
      case SinglePlacement(group: (members: final group, :final optional)):
        final label = '$where [${group.join(', ')}]';
        String? reason;
        final variants = <ExactlyOneVariant>[];
        for (final m in group) {
          reason = check(m, variants);
          if (reason != null) break;
        }
        if (reason != null) {
          (optional ? skippedAtMostOne : skipped).add('$label: $reason');
          continue;
        }
        final key = sealedGroupKeyOf(const [], group);
        final derived = deriveSealedConcept(group);
        final resolved = resolveSealedName(
          members: group,
          human: humanNames[key],
          derived: derived,
          clashes: (c) =>
              slotTaken(c, group) ??
              sealedNameClash(prefix, c, group, classesFor(group)),
        );
        names.add((
          key: key,
          concept: resolved.concept,
          source: resolved.source,
          derived: derived,
          error: resolved.error,
        ));
        final slot = resolved.concept;
        chosenSlots.add(slot);
        taken.addAll(group);
        group.forEach(slots.remove);
        // Only a group whose name reports an error (which fails `wrap`)
        // reaches the plain concatenations: `clashes` vetted every name it
        // resolves to.
        final sealed =
            sealedTypeName(prefix, slot) ?? prefix + snakeToPascal(slot);
        final variantClasses =
            exactlyOneVariantNames(
              sealed,
              group,
              classesFor(group),
              concept: sealedConcept(prefix, sealed),
            ) ??
            [
              for (final m in group)
                exactlyOneVariantName(
                  sealed,
                  m,
                  concept: sealedConcept(prefix, sealed),
                ),
            ];
        classNames
          ..add(sealed)
          ..addAll(variantClasses);
        sealedArguments.add(
          SealedArgument(
            concept: slot,
            sealedClass: sealed,
            optional: optional,
            variants: [
              for (final (i, v) in variants.indexed)
                SoloVariant(v, className: variantClasses[i]),
            ],
            references: held(variants),
          ),
        );
        paramOrder = _replaceMembers(paramOrder, group, slot);
        if (argMapOrder != null) {
          argMapOrder = _replaceMembers(argMapOrder, group, slot);
        }
      case final JointPlacement joint:
        final members = joint.members;
        String? reason;
        final variants = <ExactlyOneVariant>[];
        for (final m in members) {
          reason = check(m, variants);
          if (reason != null) break;
        }
        if (reason != null) {
          for (final g in joint.groups) {
            skipped.add('$where [${g.join(', ')}]: $reason');
          }
          continue;
        }
        final argument = sealJoint(
          joint,
          blockPath: const [],
          owner: prefix,
          human: humanNames,
          variants: {for (final v in variants) v.tfName: v},
          taken: classesFor(members),
          slotClash: (c) => slotTaken(c, members),
          namedType: (_) => null,
        );
        names.addAll(argument.names);
        chosenSlots.add(argument.concept);
        taken.addAll(members);
        members.forEach(slots.remove);
        classNames
          ..add(argument.sealedClass)
          ..addAll([for (final v in argument.variants) ...v.classes]);
        sealedArguments.add(
          SealedArgument(
            concept: argument.concept,
            sealedClass: argument.sealedClass,
            optional: false,
            variants: argument.variants,
            references: held([for (final v in argument.variants) ...v.leaves]),
          ),
        );
        paramOrder = _replaceMembers(paramOrder, members, argument.concept);
        if (argMapOrder != null) {
          argMapOrder = _replaceMembers(argMapOrder, members, argument.concept);
        }
    }
  }
  if (taken.isEmpty) return o;
  return o.withSealedArguments(
    paramOrder: paramOrder,
    argMapOrder: argMapOrder,
    sealedArguments: sealedArguments,
  );
}

/// Whether the resource declares a class for its input [name]: a block's
/// helper, or an enum. A `List<Enum>` or `Set<Enum>` counts. The variant
/// class is named after the member, which is also the enum's name, so the
/// enum has to be reserved or the two types collide.
bool _hasClass(String name, Map<String, Object> blocks, WrapperOverride o) {
  if (blocks.containsKey(name)) return true;
  final type = o.dartTypeOverrides?[name];
  if (type == null) return false;
  if (RegExp(r'^[A-Z]').hasMatch(type) &&
      !const {'String', 'List', 'Map', 'Set', 'Object'}.any(type.startsWith)) {
    return true;
  }
  final element = RegExp(r'^(?:List|Set)<([A-Z]\w*)>$').firstMatch(type);
  return element != null &&
      !const {'String', 'Object'}.contains(element.group(1));
}

/// [order] with the first of [group]'s members replaced by [slot] and the
/// others dropped.
List<String> _replaceMembers(
  List<String> order,
  List<String> group,
  String slot,
) {
  final first = order.indexWhere(group.contains);
  return [
    for (var i = 0; i < order.length; i++)
      if (i == first) slot else if (!group.contains(order[i])) order[i],
  ];
}
