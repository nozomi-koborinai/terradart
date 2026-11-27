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

bool isDartIdentifier(String name) =>
    _identifier.hasMatch(name) && !dartReservedWords.contains(name);

String dartString(String value) {
  final hasControl = value.codeUnits.any((c) => c < 0x20 || c == 0x7f);
  if (!hasControl) {
    final raw = value.contains(r'$') || value.contains(r'\') ? 'r' : '';
    if (!value.contains("'")) return "$raw'$value'";
    if (!value.contains('"')) return '$raw"$value"';
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

String dartValue(Object? value) => switch (value) {
  null => 'null',
  final String s => dartString(s),
  final bool b => b.toString(),
  final int i => i.toString(),
  final double d => d.toString(),
  // Explicit type arguments avoid Dart strict-inference failures on empty literals.
  final List<Object?> l =>
    l.isEmpty ? '<Object?>[]' : '[${l.map(dartValue).join(', ')}]',
  final Map<Object?, Object?> m =>
    m.isEmpty
        ? '<String, Object?>{}'
        : '{${m.entries.map((e) => '${dartString(e.key.toString())}: ${dartValue(e.value)}').join(', ')}}',
  _ => throw ArgumentError.value(value, 'value', 'not a JSON value'),
};
