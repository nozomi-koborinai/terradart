import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'dart_type_writer.dart';
import 'exactly_one_types.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'provider_enums.dart';
import 'references/reference_targets.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// The `deriveExactlyOne` gate for a resource's own arguments: every
/// sealable top-level group in the `--provider-enums` hints becomes one
/// custom slot typed with a sealed class (declared in the prelude), and its
/// members leave the constructor. An exactly-one group's slot is required;
/// an at-most-one group's (mutually exclusive inputs the provider also
/// accepts none of) is nullable and spreads nothing when null.
///
/// Rewriting the override (instead of teaching the emitter a new slot kind)
/// keeps the wrapper emitter and the migration manifest builder on the same
/// inputs: both already read `paramOrder`, `customSlots` and `prelude`, and
/// a `...slot.argMap` custom slot is the merged sealed shape the manifest
/// derives (`google_secret_manager_secret_version`'s `payload`).
///
/// A group is sealable when every member is an optional constructor input
/// no custom slot owns and no earlier group took, and none is a keyed
/// (`nesting_mode: map`) block, which the migration manifest has no shape
/// for; the others are returned in `skipped` (exactly-one) or
/// `skippedAtMostOne` with a reason and keep their plain slots. Exactly-one
/// groups claim their members first.
///
/// Every sealed group, top-level or nested, is named by
/// [resolveSealedName] and listed in `names`; `nameErrors` lists each
/// `sealedNames` entry that clashes, repeats the derived name, or matches
/// no sealed group.
///
/// [references] (`--typed-references`: resource type → dotted input path →
/// target) types a member the ledger matches: its variant holds a
/// `RefTo<Target>`. `typedReferences` lists each top-level member typed
/// that way, as `<type>.<member>`.
({
  Map<String, WrapperOverride> overrides,
  List<String> skipped,
  List<String> skippedAtMostOne,
  List<SealedName> names,
  List<String> nameErrors,
  List<String> typedReferences,
})
deriveExactlyOneSlots(
  Map<String, WrapperOverride> overrides,
  Map<String, ResourceDef> defs, {
  required ProviderEnums providerEnums,
  required Map<String, Map<String, dynamic>> rawSchemas,
  Map<String, Map<String, ResolvedReference>> references = const {},
}) {
  final skipped = <String>[];
  final skippedAtMostOne = <String>[];
  final names = <SealedName>[];
  final nameErrors = <String>[];
  final typedReferences = <String>[];
  final out = <String, WrapperOverride>{};
  for (final MapEntry(key: type, value: o) in overrides.entries) {
    final def = defs[type];
    final refs = references[type] ?? const <String, ResolvedReference>{};
    final groups = providerEnums.exactlyOneGroupsByBlock(type)[''];
    final optionalGroups = providerEnums.atMostOneGroupsByBlock(type)[''];
    final nested = providerEnums.nestedExactlyOneGroups(type, o);
    final nestedOptional = providerEnums.nestedAtMostOneGroups(type, o);
    if (!o.deriveExactlyOne ||
        def == null ||
        (groups == null &&
            optionalGroups == null &&
            nested.isEmpty &&
            nestedOptional.isEmpty)) {
      out[type] = o;
      continue;
    }
    final specs = o.deriveNestedTypes
        ? collectNestedTypes(
            resourceBlock: rawSchemas[type]!,
            resourcePrefix: shortResourcePascal(type),
            customSlotKeys: {...?o.customSlots?.keys},
            excludedPaths: (o.nestedTypeExcludes ?? const <String>[]).toSet(),
            shareIdenticalShapes: o.dedupeNestedTypes,
            enumValues: providerEnums.resolver(type),
            exactlyOneGroups: nested,
            atMostOneGroups: nestedOptional,
            sealedNames: o.sealedNames,
            references: (path) => refs[path.join('.')],
            typeOverrides: o.nestedDartTypeOverrides,
            reserved: providerEnums.rootSealedNames(type, o),
          )
        : const <NestedBlockSpec>[];
    final typeNames = <SealedGroupName>[];
    out[type] = groups == null && optionalGroups == null
        ? o
        : _derive(
            type,
            o,
            def,
            [
              for (final g in groups ?? const <List<String>>[])
                (members: g, optional: false),
              for (final g in optionalGroups ?? const <List<String>>[])
                (members: g, optional: true),
            ],
            specs,
            refs,
            skipped: skipped,
            skippedAtMostOne: skippedAtMostOne,
            names: typeNames,
            typedReferences: typedReferences,
          );
    typeNames.addAll(nestedSealedNames(specs));
    final human = {
      for (final k in (o.sealedNames ?? const <String, String>{}).keys)
        sealedGroupKeyOf(const [], sealedGroupKey(k)): k,
    };
    for (final n in typeNames) {
      names.add((type: type, name: n));
      human.remove(n.key);
      if (n.error case final e?) nameErrors.add('$type [${n.key}]: $e');
    }
    nestedSealedKeys(specs).forEach(human.remove);
    if (providerEnums.hasGroupSource) {
      for (final k in human.values) {
        nameErrors.add('$type sealedNames "$k" matches no sealed group');
      }
    }
    skipped.addAll([
      for (final s in unsealedNestedGroups(specs, nested)) '$type $s',
    ]);
    skippedAtMostOne.addAll([
      for (final s in unsealedNestedGroups(
        specs,
        nestedOptional,
        optional: true,
      ))
        '$type $s',
    ]);
  }
  // An override without groups can still carry stale names.
  for (final MapEntry(key: type, value: o) in overrides.entries) {
    if (providerEnums.hasGroupSource &&
        out[type] == o &&
        o.sealedNames != null &&
        !names.any((n) => n.type == type)) {
      for (final k in o.sealedNames!.keys) {
        nameErrors.add('$type sealedNames "$k" matches no sealed group');
      }
    }
  }
  return (
    overrides: out,
    skipped: skipped,
    skippedAtMostOne: skippedAtMostOne,
    names: names,
    nameErrors: nameErrors,
    typedReferences: typedReferences,
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
  );
}

WrapperOverride _derive(
  String type,
  WrapperOverride o,
  ResourceDef def,
  List<({List<String> members, bool optional})> groups,
  List<NestedBlockSpec> nestedSpecs,
  Map<String, ResolvedReference> refs, {
  required List<String> skipped,
  required List<String> skippedAtMostOne,
  required List<SealedGroupName> names,
  required List<String> typedReferences,
}) {
  final prefix = shortResourcePascal(type);
  final order = orderedConstructorParams(def, o.paramOrder);
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
        );
      }
      return (
        tfName: m,
        ident: ident,
        fieldType: argTypeFor(dartType),
        encodeExpr: '$ident.toTfJson()',
        argMapExpr: ident,
        deprecation: deprecation,
      );
    }
    final block = blocks[m];
    if (block == null || block.constraints.required) return null;
    final spec = specs[m];
    if (spec != null) {
      final bare = nestedParamType(spec);
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
  final declarations = StringBuffer();
  var paramOrder = order;
  var argMapOrder = o.argMapOrder;
  for (final (:members, :optional) in groups) {
    final group = members;
    final label = '$type [${group.join(', ')}]';
    String? reason;
    final variants = <ExactlyOneVariant>[];
    for (final m in group) {
      if (reason != null) break;
      if (!order.contains(m)) {
        reason = '$m is not a constructor input';
      } else if (slots[m] case final custom?) {
        final v = customSlotVariant(m, custom, o.deprecatedParams?[m]);
        if (v == null) {
          reason = '$m is a custom slot';
        } else if (taken.contains(m)) {
          reason = '$m is in an earlier group';
        } else {
          variants.add(v);
        }
      } else if (required.contains(m)) {
        reason = '$m is in requiredParams';
      } else if (taken.contains(m)) {
        reason = '$m is in an earlier group';
      } else if (specs[m]?.keyed ?? false) {
        reason = '$m is a keyed block';
      } else {
        final v = variant(m);
        if (v == null) {
          reason = '$m is required or has no typed shape';
        } else {
          variants.add(v);
        }
      }
    }
    if (reason != null) {
      (optional ? skippedAtMostOne : skipped).add('$label: $reason');
      continue;
    }
    Set<String> classesFor() => {
      ...classNames,
      for (final n in order)
        if (!group.contains(n) || _hasClass(n, blocks, o))
          prefix + snakeToPascal(n),
    };
    String? clashes(String concept) {
      if (!group.contains(concept) &&
              (order.contains(concept) || slots.containsKey(concept)) ||
          chosenSlots.contains(concept) ||
          _metaParams.contains(concept)) {
        return 'the slot $concept is taken';
      }
      return sealedNameClash(prefix, concept, group, classesFor());
    }

    final key = sealedGroupKeyOf(const [], group);
    final derived = deriveSealedConcept(group);
    final resolved = resolveSealedName(
      members: group,
      human: humanNames[key],
      derived: derived,
      clashes: clashes,
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
    typedReferences.addAll([
      for (final v in variants)
        if (refs[v.tfName]?.dartType == v.fieldType) '$type.${v.tfName}',
    ]);
    group.forEach(slots.remove);
    // Only a group whose name reports an error (which fails `wrap`) reaches
    // the plain concatenations: `clashes` vetted every name it resolves to.
    final sealed = sealedTypeName(prefix, slot) ?? prefix + snakeToPascal(slot);
    final variantClasses =
        exactlyOneVariantNames(
          sealed,
          group,
          classesFor(),
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
    final ident = snakeToDartIdent(slot);
    slots[slot] = optional
        ? CustomSlot(
            paramDeclaration: '$sealed? $ident',
            argMapEntry: '...?$ident?.argMap,',
          )
        : CustomSlot(
            paramDeclaration: 'required $sealed $ident',
            argMapEntry: '...$ident.argMap,',
          );
    paramOrder = _replaceMembers(paramOrder, group, slot);
    if (argMapOrder != null) {
      argMapOrder = _replaceMembers(argMapOrder, group, slot);
    }
    declarations
      ..writeln()
      ..write(
        renderExactlyOneTypes(
          sealed: sealed,
          members: group,
          where: '`$type`',
          variants: variants,
          variantClasses: variantClasses,
          optional: optional,
        ),
      );
  }
  if (taken.isEmpty) return o;
  return o.withExactlyOneSlots(
    paramOrder: paramOrder,
    argMapOrder: argMapOrder,
    customSlots: slots,
    prelude: '${o.prelude ?? ''}$declarations',
  );
}

/// Whether the resource declares a class for its input [name]: a block's
/// helper, or an enum.
bool _hasClass(String name, Map<String, Object> blocks, WrapperOverride o) {
  if (blocks.containsKey(name)) return true;
  final type = o.dartTypeOverrides?[name];
  return type != null &&
      RegExp(r'^[A-Z]').hasMatch(type) &&
      !const {'String', 'List', 'Map', 'Set', 'Object'}.any(type.startsWith);
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
