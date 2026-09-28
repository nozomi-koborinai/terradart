import '../ir/resource_def.dart';
import 'constructor_params.dart';
import 'dart_type_writer.dart';
import 'exactly_one_types.dart';
import 'naming.dart';
import 'nested_types/nested_type_collector.dart';
import 'nested_types/nested_type_emitter.dart';
import 'provider_enums.dart';
import 'wrapper_overrides/wrapper_override.dart';

/// The `deriveExactlyOne` gate for a resource's own arguments: every
/// sealable top-level group in the `--provider-enums` hints becomes one
/// required custom slot typed with a sealed class (declared in the
/// prelude), and its members leave the constructor.
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
/// for; the others are returned in `skipped` with a reason and keep their
/// plain slots.
({Map<String, WrapperOverride> overrides, List<String> skipped})
    deriveExactlyOneSlots(
  Map<String, WrapperOverride> overrides,
  Map<String, ResourceDef> defs, {
  required ProviderEnums providerEnums,
  required Map<String, Map<String, dynamic>> rawSchemas,
}) {
  final skipped = <String>[];
  final out = <String, WrapperOverride>{};
  for (final MapEntry(key: type, value: o) in overrides.entries) {
    final def = defs[type];
    final groups = providerEnums.exactlyOneGroupsByBlock(type)[''];
    final nested = providerEnums.nestedExactlyOneGroups(type, o);
    if (!o.deriveExactlyOne ||
        def == null ||
        (groups == null && nested.isEmpty)) {
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
          )
        : const <NestedBlockSpec>[];
    out[type] =
        groups == null ? o : _derive(type, o, def, groups, specs, skipped);
    skipped.addAll([
      for (final s in unsealedNestedGroups(specs, nested)) '$type $s',
    ]);
  }
  return (overrides: out, skipped: skipped);
}

WrapperOverride _derive(
  String type,
  WrapperOverride o,
  ResourceDef def,
  List<List<String>> groups,
  List<NestedBlockSpec> nestedSpecs,
  List<String> skipped,
) {
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
        fieldType: 'TfArg<$dartType>',
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
  final declarations = StringBuffer();
  var paramOrder = order;
  for (final group in groups) {
    final label = '$type [${group.join(', ')}]';
    final slot = exactlyOneSlotName(group);
    String? reason;
    if (order.contains(slot) || slots.containsKey(slot)) {
      reason = 'the slot name $slot is taken';
    }
    final variants = <ExactlyOneVariant>[];
    for (final m in group) {
      if (reason != null) break;
      if (!order.contains(m)) {
        reason = '$m is not a constructor input';
      } else if (slots.containsKey(m)) {
        reason = '$m is a custom slot';
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
      skipped.add('$label: $reason');
      continue;
    }
    taken.addAll(group);
    final sealed = exactlyOneSealedName(prefix, group);
    final ident = snakeToDartIdent(slot);
    slots[slot] = CustomSlot(
      paramDeclaration: 'required $sealed $ident',
      argMapEntry: '...$ident.argMap,',
    );
    final first = paramOrder.indexWhere(group.contains);
    paramOrder = [
      for (var i = 0; i < paramOrder.length; i++)
        if (i == first)
          slot
        else if (!group.contains(paramOrder[i]))
          paramOrder[i],
    ];
    declarations
      ..writeln()
      ..write(renderExactlyOneTypes(
        prefix: prefix,
        members: group,
        where: '`$type`',
        variants: variants,
      ));
  }
  if (taken.isEmpty) return o;
  return o.withExactlyOneSlots(
    paramOrder: paramOrder,
    customSlots: slots,
    prelude: '${o.prelude ?? ''}$declarations',
  );
}
