/// Rewriting a Terraform template into a Dart string that interpolates the
/// Dart values the migrator has for the references inside it.
///
/// Two flags need this. `--lift-workspace` turns `${terraform.workspace}`
/// into the Stack's `workspace` parameter, and `--inline-locals` turns
/// `${local.prefix}` into the `final` it declared for that local. Both are
/// the same rewrite over a different set of names, so both go through
/// [dartTemplate].
library;

import 'dart_literal.dart';

/// [template] as a Dart string literal interpolating what [substitute]
/// hands back for each `${ ... }` sequence, or `null` when it returns `null`
/// for any of them — a reference with no Dart value here, so the whole
/// template has to stay a Terraform expression.
///
/// Literal text is copied through as written, escapes included: `$${` is
/// Terraform's *literal* `${`, and the Dart string keeps it doubled, so the
/// value synth writes still un-escapes to exactly what it did before. A
/// `%{ ... }` directive is never substituted — it is control flow, not a
/// value — and refuses the whole template.
String? dartTemplate(
  String template,
  String? Function(String reference) substitute,
) {
  final parts = <_Part>[];
  final literal = StringBuffer();
  final n = template.length;
  var i = 0;
  var substituted = false;

  while (i < n) {
    if (template.startsWith(r'$${', i) || template.startsWith('%%{', i)) {
      literal.write(template.substring(i, i + 3));
      i += 3;
      continue;
    }
    if (template.startsWith('%{', i)) return null;
    if (template.startsWith(r'${', i)) {
      final end = _sequenceEnd(template, i);
      if (end == null) return null;
      final dart = substitute(template.substring(i + 2, end).trim());
      if (dart == null) return null;
      parts
        ..add(_Part.literal(literal.toString()))
        ..add(_Part.reference(dart));
      literal.clear();
      substituted = true;
      i = end + 1;
      continue;
    }
    literal.write(template[i]);
    i++;
  }
  if (!substituted) return null;
  parts.add(_Part.literal(literal.toString()));

  final buf = StringBuffer("'");
  for (var k = 0; k < parts.length; k++) {
    final part = parts[k];
    if (part.isLiteral) {
      buf.write(_dartStringBody(part.text));
      continue;
    }
    // `${name}` where the next character would run straight on into the
    // name: Dart reads `$prefix_suffix` as one identifier. A substitution
    // that is not a bare identifier always takes the braced form.
    final next = k + 1 < parts.length ? parts[k + 1].text : '';
    final braced =
        !isDartIdentifier(part.text) || _identifierChar.hasMatch(next);
    buf.write(braced ? '\${${part.text}}' : '\$${part.text}');
  }
  return (buf..write("'")).toString();
}

/// One piece of the rewritten template: literal text, or Dart source whose
/// value is interpolated where the sequence was.
extension type const _Part._((bool, String) _value) {
  const _Part.literal(String text) : this._((true, text));
  const _Part.reference(String dart) : this._((false, dart));

  bool get isLiteral => _value.$1;
  String get text => _value.$2;
}

/// Index of the `}` closing the sequence opening at [start], or `null` when
/// it is unterminated. Braces nest and quoted strings are skipped, as they
/// are in `templateSequenceBodies`.
int? _sequenceEnd(String s, int start) {
  var depth = 1;
  var j = start + 2;
  while (j < s.length) {
    final c = s[j];
    if (c == '"') {
      j = _closingQuote(s, j + 1) + 1;
      continue;
    }
    if (c == '{') depth++;
    if (c == '}') {
      depth--;
      if (depth == 0) return j;
    }
    j++;
  }
  return null;
}

/// Index of the `"` closing a string that starts at [from] (after the
/// opening quote), honouring backslash escapes; the end of the string when
/// it is unterminated.
int _closingQuote(String s, int from) {
  var k = from;
  while (k < s.length) {
    final c = s[k];
    if (c == r'\') {
      k += 2;
      continue;
    }
    if (c == '"') return k;
    k++;
  }
  return s.length;
}

/// A part of the template inside a single-quoted Dart string.
String _dartStringBody(String text) => text
    .replaceAll('\\', r'\\')
    .replaceAll("'", r"\'")
    .replaceAll(r'$', r'\$')
    .replaceAll('\n', r'\n')
    .replaceAll('\r', r'\r')
    .replaceAll('\t', r'\t');

/// A leading character Dart would take as part of the interpolated name.
final RegExp _identifierChar = RegExp('^[A-Za-z0-9_]');
