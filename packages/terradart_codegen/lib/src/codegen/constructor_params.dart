import '../ir/attribute.dart';
import '../ir/nested_block.dart';
import '../ir/resource_def.dart';

List<String> orderedConstructorParams(
  ResourceDef def,
  List<String>? paramOrder,
) {
  if (paramOrder != null) return List<String>.of(paramOrder);
  return _naturalOrderNames(def);
}

List<String> _naturalOrderNames(ResourceDef def) {
  final out = <String>[];
  for (final attr in def.root.attributes) {
    if (skipAttribute(attr)) continue;
    out.add(attr.name);
  }
  for (final nested in def.root.nestedBlocks) {
    if (skipNestedBlock(nested)) continue;
    out.add(nested.name);
  }
  return out;
}

// hashicorp/aws marks tags_all optional+computed, but it mirrors
// default_tags + tags and setting it produces a permanent plan diff.
bool skipAttribute(Attribute attr) {
  final isSyntheticId = attr.name == 'id' && !attr.constraints.required;
  return attr.constraints.computedOnly ||
      isSyntheticId ||
      attr.name == 'tags_all';
}

bool skipDataSourceAttribute(Attribute attr) => skipAttribute(attr);

List<String> orderedDataSourceConstructorParams(
  ResourceDef def,
  List<String>? paramOrder,
) {
  if (paramOrder != null) return List<String>.of(paramOrder);
  final out = <String>[];
  for (final attr in def.root.attributes) {
    if (skipDataSourceAttribute(attr)) continue;
    out.add(attr.name);
  }
  for (final nested in def.root.nestedBlocks) {
    if (skipNestedBlock(nested)) continue;
    out.add(nested.name);
  }
  return out;
}

bool skipNestedBlock(NestedBlockDef block) {
  return block.name == 'timeouts' || block.constraints.computedOnly;
}

bool nestedBlockIsObject(NestedBlockDef block) => switch (block.nesting) {
  NestingMode.single || NestingMode.group || NestingMode.map => true,
  NestingMode.list => block.maxItems == 1,
  NestingMode.set => false,
};
