import '../../ir/attribute.dart';
import '../../ir/nested_block.dart';

class PathWalker {
  const PathWalker();

  Attribute? resolveAttribute(BlockDef root, List<String> pathSegments) {
    if (pathSegments.isEmpty) return null;
    BlockDef current = root;
    for (var i = 0; i < pathSegments.length - 1; i++) {
      final segment = pathSegments[i];
      final next = current.nestedBlocks
          .where((n) => n.name == segment)
          .firstOrNull;
      if (next == null) return null;
      current = next.block;
    }
    final leafName = pathSegments.last;
    return current.attributes.where((a) => a.name == leafName).firstOrNull;
  }
}
