/// Scanning of Terraform template strings — the `${ ... }` interpolation and
/// `%{ ... }` directive sequences of a tf.json string value.
///
/// Shared by [TfArgExpression] (which requires a sequence) and synth (which
/// declares the `var.<name>` references it finds and lets a template through
/// a sensitive field, since no plaintext value is stored in it).
library;

final RegExp _variableReference = RegExp(r'(?<![\w.])var\.([A-Za-z_][\w-]*)');

/// True when [template] holds at least one unescaped `${ ... }` or
/// `%{ ... }` sequence — Terraform evaluates it; a string without one is a
/// plain value (`$${` and `%%{` are the escaped, literal forms).
bool hasTemplateSequence(String template) =>
    templateSequenceBodies(template).isNotEmpty;

/// The names of the `var.<name>` references inside the sequences of
/// [template], in order of first appearance. `$${` / `%%{` escapes are
/// literal text and the contents of quoted strings inside a sequence are
/// ignored, except for sequences nested in them (`"${lower("${var.x}")}"`).
Set<String> templateVariableNames(String template) {
  final out = <String>{};
  for (final body in templateSequenceBodies(template)) {
    for (final m in _variableReference.allMatches(body)) {
      out.add(m.group(1)!);
    }
  }
  return out;
}

/// The bodies of the `${ ... }` / `%{ ... }` sequences of [template], in
/// order, with the text of quoted strings inside a sequence blanked out
/// (sequences nested inside such a string are appended after it).
List<String> templateSequenceBodies(String template) {
  final out = <String>[];
  final n = template.length;
  var i = 0;
  while (i < n) {
    if (template.startsWith(r'$${', i) || template.startsWith('%%{', i)) {
      i += 3; // escaped: literal `${` / `%{`
      continue;
    }
    if (template.startsWith(r'${', i) || template.startsWith('%{', i)) {
      final body = StringBuffer();
      final nested = <String>[];
      var depth = 1;
      var j = i + 2;
      while (j < n) {
        final c = template[j];
        if (c == '"') {
          final close = _closingQuote(template, j + 1);
          nested
              .addAll(templateSequenceBodies(template.substring(j + 1, close)));
          body.write(' ');
          j = close + 1;
          continue;
        }
        if (c == '{') depth++;
        if (c == '}') {
          depth--;
          if (depth == 0) break;
        }
        body.write(c);
        j++;
      }
      out
        ..add(body.toString())
        ..addAll(nested);
      i = j + 1;
      continue;
    }
    i++;
  }
  return out;
}

/// Index of the `"` closing a quoted string that starts at [from] (after the
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
