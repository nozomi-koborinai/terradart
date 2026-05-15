import '../../ir/attribute.dart';
import '../../ir/nested_block.dart';

/// Resolves a dotted path against an IR `BlockDef`. Used by Gates 1 and 3
/// to bridge yaml override entries to IR slots.
class PathWalker {
  const PathWalker();

  /// Returns the [Attribute] at [pathSegments], walking through nested
  /// blocks segment-by-segment until the last segment, which must be a
  /// leaf attribute. Returns `null` if any segment cannot be resolved.
  Attribute? resolveAttribute(BlockDef root, List<String> pathSegments) {
    if (pathSegments.isEmpty) return null;
    BlockDef current = root;
    for (var i = 0; i < pathSegments.length - 1; i++) {
      final segment = pathSegments[i];
      final next =
          current.nestedBlocks.where((n) => n.name == segment).firstOrNull;
      if (next == null) return null;
      current = next.block;
    }
    final leafName = pathSegments.last;
    return current.attributes.where((a) => a.name == leafName).firstOrNull;
  }
}
