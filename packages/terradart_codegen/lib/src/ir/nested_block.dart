import 'attribute.dart';
import 'constraints.dart';

/// Terraform nesting modes. `single` corresponds to schema-json's
/// `nesting_mode: "single"`, etc.
enum NestingMode { single, list, set, map, group }

/// One nested block ("schema_settings { ... }") attached to a parent block.
final class NestedBlockDef {
  final String name; // snake_case Terraform name
  final NestingMode nesting;
  final int? minItems;
  final int? maxItems;
  final BlockDef block;
  final Constraints constraints;
  final String? description;

  const NestedBlockDef({
    required this.name,
    required this.nesting,
    required this.block,
    required this.constraints,
    this.minItems,
    this.maxItems,
    this.description,
  });
}

/// A block (root of a resource, or contents of a nested block).
final class BlockDef {
  final List<Attribute> attributes;
  final List<NestedBlockDef> nestedBlocks;
  final String? description;

  const BlockDef({
    this.attributes = const [],
    this.nestedBlocks = const [],
    this.description,
  });
}
