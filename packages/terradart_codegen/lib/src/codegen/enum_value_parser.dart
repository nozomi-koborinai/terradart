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
    final quoted = RegExp(r'"([^"]+)"')
        .allMatches(vm.group(1)!)
        .map((m) => m.group(1)!)
        .toList();
    if (quoted.length >= 2) return quoted;
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
