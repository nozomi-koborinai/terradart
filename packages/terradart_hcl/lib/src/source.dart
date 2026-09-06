/// A position in a source file: zero-based byte [offset] plus one-based
/// [line] and [column] (UTF-16 code units, like Dart's own error messages).
final class SourcePos implements Comparable<SourcePos> {
  const SourcePos(this.offset, this.line, this.column);

  /// The position used for nodes that have no source text, such as blocks
  /// decoded from `*.tf.json`.
  static const none = SourcePos(-1, 0, 0);

  final int offset;
  final int line;
  final int column;

  bool get isNone => offset < 0;

  @override
  int compareTo(SourcePos other) => offset.compareTo(other.offset);

  @override
  bool operator ==(Object other) =>
      other is SourcePos && other.offset == offset;

  @override
  int get hashCode => offset.hashCode;

  @override
  String toString() => '$line:$column';
}

/// A half-open span `[start, end)` of a source file.
final class SourceRange {
  const SourceRange(this.start, this.end);

  /// The range of nodes without source text (see [SourcePos.none]).
  static const none = SourceRange(SourcePos.none, SourcePos.none);

  final SourcePos start;
  final SourcePos end;

  bool get isNone => start.isNone;

  /// The text this range covers in [source].
  String textIn(String source) =>
      isNone ? '' : source.substring(start.offset, end.offset);

  /// The smallest range covering both this and [other].
  SourceRange union(SourceRange other) {
    if (isNone) return other;
    if (other.isNone) return this;
    return SourceRange(
      start.offset <= other.start.offset ? start : other.start,
      end.offset >= other.end.offset ? end : other.end,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is SourceRange && other.start == start && other.end == end;

  @override
  int get hashCode => Object.hash(start, end);

  @override
  String toString() => isNone ? '<none>' : '$start-$end';
}
