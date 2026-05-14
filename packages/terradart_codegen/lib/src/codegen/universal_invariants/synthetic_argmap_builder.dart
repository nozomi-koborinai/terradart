import 'package:terradart_core/terradart_core.dart';

/// Builds a synthetic `argMap` that mirrors how a real wrapper encodes
/// the given dotted sensitive path. Used by Gate 2 to drive
/// `JsonEncoder.encodeArgMapWithSensitive` without instantiating an
/// actual Resource (each resource has different required fields, which
/// would make the per-resource test boilerplate explode at 120 resources).
///
/// Convention mirrors wrap pipeline emission:
/// - Top-level scalar path → `'name': TfArg.literal(value)`.
/// - Depth ≥ 2 path → `'block': TfArg.literal([{nested: ...}])`, with
///   `[{...}]` wrapping at every block segment (matches the
///   `max_items=1` nested-block convention).
class SyntheticArgMapBuilder {
  const SyntheticArgMapBuilder();

  Map<String, TfArg<dynamic>?> buildForPath(
    String dottedPath,
    String leafValue,
  ) {
    final segments = dottedPath.split('.');
    if (segments.length == 1) {
      return <String, TfArg<dynamic>?>{
        segments.first: TfArg.literal<String>(leafValue),
      };
    }
    final topKey = segments.first;
    final encoded = _buildNested(segments.sublist(1), leafValue);
    return <String, TfArg<dynamic>?>{
      topKey: TfArg.literal<List<dynamic>>([encoded]),
    };
  }

  /// Builds the encoded structure starting from a sub-block, mirroring
  /// the `[{...}]` list-wrap that wrap pipeline emits for every nested
  /// block.
  Map<String, dynamic> _buildNested(
    List<String> remainingSegments,
    String leafValue,
  ) {
    if (remainingSegments.length == 1) {
      return <String, dynamic>{remainingSegments.first: leafValue};
    }
    final head = remainingSegments.first;
    final rest = _buildNested(remainingSegments.sublist(1), leafValue);
    return <String, dynamic>{
      head: <dynamic>[rest],
    };
  }
}
