import 'dart:convert';

/// Parses schema descriptions that document a finite value set.
List<String>? parseEnumValuesFromDescription(String? description) {
  if (description == null) return null;

  final bracket = RegExp(r'Possible values:\s*(\[[^\]]+\])');
  final m = bracket.firstMatch(description);
  if (m != null) {
    try {
      final vals = jsonDecode(m.group(1)!.replaceAll("'", '"')) as List;
      final strings = vals.cast<String>();
      return strings.length >= 2 ? strings : null;
    } on FormatException {
      // fall through
    }
  }

  // `Valid values are: "PAGELESS", "PAGINATED".`
  final validAre = RegExp(
    r'Valid values are:\s*([^.]+)\.',
    caseSensitive: false,
  );
  final vm = validAre.firstMatch(description);
  if (vm != null) {
    final quoted = RegExp(
      r'"([^"]+)"',
    ).allMatches(vm.group(1)!).map((m) => m.group(1)!).toList();
    if (quoted.length >= 2) return quoted;
  }

  // `One of "READ_ONLY" or "READ_WRITE".` A sentence that opens with the
  // phrase and lists only quoted values: mid-sentence ("the scheme must be
  // one of ...") it constrains part of the value, not the value.
  final om = _oneOf.firstMatch(description);
  if (om != null) {
    return [
      for (final q in RegExp(r'"([^"]+)"').allMatches(om.group(1)!))
        q.group(1)!,
    ];
  }

  // `Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY`
  final loose = RegExp(r'Possible values:\s*([A-Z0-9_,\s]+)');
  final lm = loose.firstMatch(description);
  if (lm != null) {
    final vals = lm
        .group(1)!
        .split(',')
        .map((v) => v.trim())
        .where((v) => v.isNotEmpty)
        .toList();
    if (vals.length >= 2) return vals;
  }

  return null;
}

final RegExp _oneOf = RegExp(
  r'(?:^|[.:!?]\s+)(?:One|Must be one) of\s+'
  r'("[^"]+"(?:(?:\s*,\s*(?:or\s+)?|\s+or\s+)"[^"]+")+)\s*(?=\.|$|\s+[A-Z])',
);

final RegExp _availableValues = RegExp(
  r'Available values:[ \t]*("(?:[^"\\]|\\.)*"(?:[ \t]*,[ \t]*"(?:[^"\\]|\\.)*")*)',
);
final RegExp _quoted = RegExp(r'"((?:[^"\\]|\\.)*)"');

/// A description that opens by naming the attribute an expression
/// (`The wirefilter expression to match devices. Available values: ...`):
/// the list names the fields an expression may use, not the values the
/// attribute takes.
final RegExp _expressionLead = RegExp(
  r'^\s*(?:the |an? )?(?:wirefilter )?expression\b',
  caseSensitive: false,
);

/// Parses the Stainless-generated dialect the Cloudflare v5 provider
/// appends to every enum-validated attribute:
/// `Available values: "ip", "ip6", "asn".`
///
/// Only the quoted form counts — `Available values: 301, 302.` documents a
/// number attribute. One value is enough: the provider's validator enforces
/// it all the same. An expression attribute is not an enum
/// ([_expressionLead]).
List<String>? parseAvailableValues(String? description) {
  if (description == null || _expressionLead.hasMatch(description)) {
    return null;
  }
  final m = _availableValues.firstMatch(description);
  if (m == null) return null;
  return [
    for (final q in _quoted.allMatches(m.group(1)!))
      q.group(1)!.replaceAllMapped(RegExp(r'\\(.)'), (e) => e.group(1)!),
  ];
}
