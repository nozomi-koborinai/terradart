import 'dart_literal.dart';

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
    final next = k + 1 < parts.length ? parts[k + 1].text : '';
    final braced =
        !isDartIdentifier(part.text) || _continuesDartIdentifier.hasMatch(next);
    buf.write(braced ? '\${${part.text}}' : '\$${part.text}');
  }
  return (buf..write("'")).toString();
}

extension type const _Part._((bool, String) _value) {
  const _Part.literal(String text) : this._((true, text));
  const _Part.reference(String dart) : this._((false, dart));

  bool get isLiteral => _value.$1;
  String get text => _value.$2;
}

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

String _dartStringBody(String text) => text
    .replaceAll('\\', r'\\')
    .replaceAll("'", r"\'")
    .replaceAll(r'$', r'\$')
    .replaceAll('\n', r'\n')
    .replaceAll('\r', r'\r')
    .replaceAll('\t', r'\t');

final RegExp _continuesDartIdentifier = RegExp('^[A-Za-z0-9_]');
