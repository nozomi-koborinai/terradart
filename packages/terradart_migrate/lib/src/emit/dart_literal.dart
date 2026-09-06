/// Dart source for the literal values a migration copies out of Terraform.
library;

/// Dart's reserved words: never usable as a bare identifier.
const Set<String> dartReservedWords = {
  'assert',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'enum',
  'extends',
  'false',
  'final',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'super',
  'switch',
  'this',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'while',
  'with',
};

final RegExp _identifier = RegExp(r'^[A-Za-z_$][A-Za-z0-9_$]*$');

/// True when [name] can be used as a Dart identifier as written.
bool isDartIdentifier(String name) =>
    _identifier.hasMatch(name) && !dartReservedWords.contains(name);

/// A Dart string literal for [value] that always compiles: a raw string when
/// nothing needs escaping (`r'...'`, or `r"..."` when the text has a single
/// quote), else an escaped single-quoted string.
String dartString(String value) {
  final hasControl = value.codeUnits.any((c) => c < 0x20 || c == 0x7f);
  if (!hasControl) {
    if (!value.contains("'")) return "r'$value'";
    if (!value.contains('"')) return 'r"$value"';
  }
  final buf = StringBuffer("'");
  for (final rune in value.runes) {
    switch (rune) {
      case 0x5c:
        buf.write(r'\\');
      case 0x27:
        buf.write(r"\'");
      case 0x24:
        buf.write(r'\$');
      case 0x0a:
        buf.write(r'\n');
      case 0x0d:
        buf.write(r'\r');
      case 0x09:
        buf.write(r'\t');
      default:
        if (rune < 0x20 || rune == 0x7f) {
          buf.write('\\u{${rune.toRadixString(16)}}');
        } else {
          buf.writeCharCode(rune);
        }
    }
  }
  buf.write("'");
  return buf.toString();
}

/// Dart source for a JSON-shaped value: `String`, `num`, `bool`, `null`,
/// `List` or `Map` (string keys), nested freely.
String dartValue(Object? value) => switch (value) {
  null => 'null',
  final String s => dartString(s),
  final bool b => b.toString(),
  final int i => i.toString(),
  final double d => d.toString(),
  // Typed when empty so strict inference has something to go on inside a
  // `dynamic` payload.
  final List<Object?> l =>
    l.isEmpty ? '<Object?>[]' : '[${l.map(dartValue).join(', ')}]',
  final Map<Object?, Object?> m =>
    m.isEmpty
        ? '<String, Object?>{}'
        : '{${m.entries.map((e) => '${dartString(e.key.toString())}: ${dartValue(e.value)}').join(', ')}}',
  _ => throw ArgumentError.value(value, 'value', 'not a JSON value'),
};
