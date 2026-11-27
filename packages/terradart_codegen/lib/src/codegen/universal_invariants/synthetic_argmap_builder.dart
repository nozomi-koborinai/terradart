import 'package:terradart_core/terradart_core.dart';

class SyntheticArgMapBuilder {
  const SyntheticArgMapBuilder();

  Map<String, TfArg<dynamic>?> buildForPath(
    String dottedPath,
    String leafValue,
  ) {
    final segments = dottedPath.split('.');
    if (segments.length == 1) {
      return <String, TfArg<dynamic>?>{
        segments.first: TfArg<String>.literal(leafValue),
      };
    }
    final topKey = segments.first;
    final encoded = _buildNested(segments.sublist(1), leafValue);
    return <String, TfArg<dynamic>?>{
      topKey: TfArg<List<dynamic>>.literal([encoded]),
    };
  }

  Map<String, dynamic> _buildNested(
    List<String> remainingSegments,
    String leafValue,
  ) {
    if (remainingSegments.length == 1) {
      return <String, dynamic>{remainingSegments.first: leafValue};
    }
    final head = remainingSegments.first == '*'
        ? 'entry'
        : remainingSegments.first;
    final rest = _buildNested(remainingSegments.sublist(1), leafValue);
    return <String, dynamic>{
      head: <dynamic>[rest],
    };
  }
}
