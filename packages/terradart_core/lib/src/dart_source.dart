// Helpers for the Dart and Terraform source that synth writes: a string
// literal that always compiles, identifier checks for the names that become
// `static const` members and `output` blocks, and the reader getter and
// environment variable an output name maps to.

/// Dart's reserved words, which can never be used as identifiers. Built-in
/// identifiers such as `get`, `static`, or `await` are legal member names
/// and are deliberately not listed.
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

final RegExp _dartIdentifier = RegExp(r'^[A-Za-z_][A-Za-z0-9_]*$');
final RegExp _terraformIdentifier = RegExp(r'^[A-Za-z_][A-Za-z0-9_-]*$');

/// Whether [name] can be declared as a Dart member (`static const T name`).
///
/// `$` is legal in Dart identifiers but rejected here, so a generated name is
/// never one Dart reads as string interpolation when quoted.
bool isDartIdentifier(String name) =>
    _dartIdentifier.hasMatch(name) && !dartReservedWords.contains(name);

/// Whether [name] is a valid Terraform `output` block name.
bool isTerraformIdentifier(String name) => _terraformIdentifier.hasMatch(name);

/// The generated reader's getter for the output [name]: `ordersTopicId` for
/// `orders_topic_id` or `orders-topic-id`. Not always an identifier
/// (`class`, `_1`); check it with [isDartIdentifier].
String outputGetterName(String name) {
  final parts = [
    for (final p in name.split(RegExp('[-_]+')))
      if (p.isNotEmpty) p,
  ];
  if (parts.isEmpty) return '';
  return [
    parts.first[0].toLowerCase() + parts.first.substring(1),
    for (final p in parts.skip(1)) p[0].toUpperCase() + p.substring(1),
  ].join();
}

/// The environment variable that carries the output [name]:
/// `ORDERS_TOPIC_ID` for `orders_topic_id`, `ordersTopicId` or
/// `orders-topic-id`.
String outputEnvironmentName(String name) => name
    .replaceAllMapped(RegExp('([a-z0-9])([A-Z])'), (m) => '${m[1]}_${m[2]}')
    .replaceAll('-', '_')
    .toUpperCase();

/// A Dart string literal whose value is exactly [value].
///
/// Prefers the raw form `r'...'` (what synth has always emitted) whenever the
/// value contains no single quote and no control character — a raw string
/// cannot express a quote or a line break, and invisible characters do not
/// belong in generated source unescaped. Otherwise it falls back to a
/// single-quoted literal with `\`, `'`, `$`, and control characters escaped,
/// so the generated constants file compiles for any input.
String dartStringLiteral(String value) {
  final needsEscape =
      value.contains("'") || value.codeUnits.any((c) => c < 0x20 || c == 0x7f);
  if (!needsEscape) return "r'$value'";
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
