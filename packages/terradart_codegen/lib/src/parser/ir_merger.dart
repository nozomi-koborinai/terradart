import '../ir/attribute.dart';
import '../ir/constraints.dart';
import '../ir/nested_block.dart';
import '../ir/provider_schema_ir.dart';
import '../ir/resource_def.dart';
import 'mm_yaml_parser.dart';

/// Merges schema-json IR with Magic Modules YAML overrides.
///
/// Resolution rules (see plan §15 for the spec):
/// - schema-json owns the shape and the required/optional/computed/
///   sensitive/writeOnly/deprecated booleans.
/// - MM YAML contributes forceNew, regex, minLength, maxLength, enumValues,
///   deprecationMessage.
/// - On conflict for the MM-owned bits, MM wins.
/// - Fields in MM YAML but not in schema-json are silently dropped.
/// - Description: schema-json wins; MM is fallback.
class IrMerger {
  const IrMerger();

  ProviderSchemaIR merge({
    required ProviderSchemaIR base,
    required Map<String, MmResourceOverrides> overrides,
  }) {
    final merged = <String, ResourceDef>{};
    for (final entry in base.resources.entries) {
      final ovr = overrides[entry.key];
      merged[entry.key] = _mergeResource(entry.value, ovr);
    }
    return ProviderSchemaIR(
      providerName: base.providerName,
      providerSource: base.providerSource,
      providerVersion: base.providerVersion,
      resources: merged,
      dataSources: base.dataSources,
    );
  }

  ResourceDef _mergeResource(ResourceDef def, MmResourceOverrides? ovr) {
    if (ovr == null) return def;
    return ResourceDef(
      terraformType: def.terraformType,
      description: def.description ?? ovr.description,
      deprecationMessage: def.deprecationMessage,
      root: _mergeBlock(def.root, ovr.fieldOverrides, ''),
    );
  }

  BlockDef _mergeBlock(
    BlockDef block,
    Map<String, Constraints> overrides,
    String prefix,
  ) {
    final newAttrs = [
      for (final a in block.attributes)
        _mergeAttr(a, overrides[_key(prefix, a.name)]),
    ];
    final newNested = [
      for (final n in block.nestedBlocks) _mergeNested(n, overrides, prefix),
    ];
    return BlockDef(
      attributes: newAttrs,
      nestedBlocks: newNested,
      description: block.description,
    );
  }

  Attribute _mergeAttr(Attribute a, Constraints? ovr) {
    if (ovr == null) return a;
    return Attribute(
      name: a.name,
      type: a.type,
      description: a.description,
      defaultValue: a.defaultValue,
      constraints: a.constraints.copyWith(
        forceNew: ovr.forceNew || a.constraints.forceNew,
        regex: ovr.regex ?? a.constraints.regex,
        minLength: ovr.minLength ?? a.constraints.minLength,
        maxLength: ovr.maxLength ?? a.constraints.maxLength,
        enumValues: ovr.enumValues ?? a.constraints.enumValues,
        deprecationMessage:
            ovr.deprecationMessage ?? a.constraints.deprecationMessage,
      ),
    );
  }

  NestedBlockDef _mergeNested(
    NestedBlockDef n,
    Map<String, Constraints> overrides,
    String prefix,
  ) {
    final myKey = _key(prefix, n.name);
    final myOvr = overrides[myKey];
    final mergedConstraints = myOvr == null
        ? n.constraints
        : n.constraints.copyWith(
            forceNew: myOvr.forceNew || n.constraints.forceNew,
          );
    return NestedBlockDef(
      name: n.name,
      nesting: n.nesting,
      minItems: n.minItems,
      maxItems: n.maxItems,
      block: _mergeBlock(n.block, overrides, myKey),
      constraints: mergedConstraints,
      description: n.description,
    );
  }

  String _key(String prefix, String name) =>
      prefix.isEmpty ? name : '$prefix.$name';
}
