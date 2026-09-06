/// A parsed Dart type annotation: `TfArg<Map<String, String>>?` becomes
/// `TfArg` with one argument (`Map` with `String`, `String`) and
/// `nullable: true`.
///
/// Only the shapes wrapper files use are supported — a named type with
/// optional generic arguments and an optional trailing `?`. Function types,
/// records and prefixed names would be a wrapper-emitter bug, and
/// [parseDartType] rejects them with a [FormatException].
final class DartTypeShape {
  const DartTypeShape(
    this.name, {
    this.args = const [],
    this.nullable = false,
  });

  final String name;
  final List<DartTypeShape> args;
  final bool nullable;

  /// Same type without the trailing `?`.
  DartTypeShape get nonNullable =>
      DartTypeShape(name, args: args, nullable: false);

  /// Canonical source text: one space after each comma, no other whitespace.
  String render() {
    final generic =
        args.isEmpty ? '' : '<${args.map((a) => a.render()).join(', ')}>';
    return '$name$generic${nullable ? '?' : ''}';
  }

  @override
  String toString() => render();
}

/// Parses [source] (a Dart type annotation as it appears in generated or
/// curated wrapper code) into a [DartTypeShape].
DartTypeShape parseDartType(String source) {
  final parser = _TypeParser(source);
  final shape = parser.parseType();
  parser.skipWhitespace();
  if (!parser.atEnd) {
    throw FormatException(
      'parseDartType: trailing input after type in "$source"',
    );
  }
  return shape;
}

final class _TypeParser {
  _TypeParser(this.src);

  final String src;
  int pos = 0;

  bool get atEnd => pos >= src.length;

  void skipWhitespace() {
    while (!atEnd && _isWhitespace(src.codeUnitAt(pos))) {
      pos++;
    }
  }

  DartTypeShape parseType() {
    skipWhitespace();
    final start = pos;
    while (!atEnd && _isIdentifierChar(src.codeUnitAt(pos))) {
      pos++;
    }
    if (start == pos) {
      throw FormatException(
        'parseDartType: expected a type name at offset $start in "$src"',
      );
    }
    final name = src.substring(start, pos);
    final args = <DartTypeShape>[];
    skipWhitespace();
    if (!atEnd && src[pos] == '<') {
      pos++;
      while (true) {
        args.add(parseType());
        skipWhitespace();
        if (atEnd) {
          throw FormatException(
            'parseDartType: unterminated type arguments in "$src"',
          );
        }
        final ch = src[pos];
        if (ch == ',') {
          pos++;
          continue;
        }
        if (ch == '>') {
          pos++;
          break;
        }
        throw FormatException(
          'parseDartType: unexpected "$ch" at offset $pos in "$src"',
        );
      }
    }
    skipWhitespace();
    var nullable = false;
    if (!atEnd && src[pos] == '?') {
      nullable = true;
      pos++;
    }
    return DartTypeShape(name, args: args, nullable: nullable);
  }

  static bool _isWhitespace(int c) =>
      c == 0x20 || c == 0x09 || c == 0x0a || c == 0x0d;

  static bool _isIdentifierChar(int c) =>
      (c >= 0x30 && c <= 0x39) ||
      (c >= 0x41 && c <= 0x5a) ||
      (c >= 0x61 && c <= 0x7a) ||
      c == 0x5f ||
      c == 0x24;
}
