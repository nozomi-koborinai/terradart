import 'dart:convert';

List<String>? parseEnumValuesFromDescription(String? description) {
  if (description == null || describesOpenSet(description)) return null;

  final bracket = RegExp(r'Possible values:\s*(\[[^\]]+\])');
  final m = bracket.firstMatch(description);
  if (m != null) {
    try {
      final vals = jsonDecode(m.group(1)!.replaceAll("'", '"')) as List;
      final strings = vals.cast<String>();
      return strings.length >= 2 ? strings : null;
    } on FormatException catch (_) {}
  }

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

  for (final rule in _listRules) {
    final m = rule.firstMatch(description);
    if (m == null) continue;
    final values = _values(
      m.group(1)!.replaceAll(RegExp(r'\([^()]*\)'), ' '),
      RegExp(_token),
    );
    if (values.length >= 2) return values;
  }
  final b = _bulletRule.firstMatch(description);
  if (b != null) {
    final values = _values(b.group(1)!, RegExp('\\*\\s+($_token)'));
    if (values.length >= 2) return values;
  }
  final d = _definitionRule.firstMatch(description);
  if (d != null) {
    final values = _values(
      d.group(1)!,
      RegExp('(?:^|\\n)\\s*($_plainToken)\\s*:'),
    );
    if (values.length >= 2) return values;
  }
  return null;
}

bool describesOpenSet(String description) => _openSet.hasMatch(description);

final RegExp _openSet = RegExp(
  r'\bfor\s+the\s+(?:full|complete)\s+list\b'
  r'|\b(?:values|modes|options|types)\b[^.]{0,40}\bmay\s+be\s+added\b'
  r'|\b(?:may|might)\s+be\s+more\s+(?:values|modes|options|types|states)\s+added\b'
  r'|\bunknown\s+values\b',
  caseSensitive: false,
);

List<String> _values(String list, RegExp token) {
  final values = <String>{
    for (final t in token.allMatches(list))
      (t.groupCount > 0 ? t.group(1)! : t.group(0)!).replaceAll(
        RegExp('^["\'`]|["\'`]\$'),
        '',
      ),
  }.toList();
  return values.any(_formatChars.hasMatch) ? const [] : values;
}

final RegExp _formatChars = RegExp(r'[/{}<>]');

const String _token = '(?:$_plainToken|$_pascalToken)';

const String _plainToken =
    '(?:"[^"\\s]+"|\'[^\'\\s]+\'|`[^`\\s]+`'
    '|[A-Z][A-Z0-9_]+(?:-[A-Z0-9_]+)*(?![A-Za-z0-9_]))';

const String _pascalToken =
    r'(?:[A-Z][a-z0-9]+(?:[A-Z][a-z0-9]*)+(?![A-Za-z0-9_]))';

final String _list = '(${_listOf(_token)})';
final String _plainList = '(${_listOf(_plainToken)})';

String _listOf(String token) =>
    '(?:-\\s*)?$token(?:\\s*\\([^()]*\\))?'
    '(?:(?:\\s*,\\s*(?:(?:or|and)\\s+)?|\\s*-\\s*|\\s+(?:(?:or|and)\\s+)?)'
    '$token(?:\\s*\\([^()]*\\))?)+';

const String _listEnd =
    '(?:\\s+or\\s+not\\s+specified)?'
    '(?=\\s*(?:[.;:)]|,(?!\\s*(?:(?:or|and)\\b|$_token))|\$)|\\s+[A-Z][a-z])';

const String _valuesLead =
    r'\[?\b(?:[Pp]ossible|[Aa]llowed|[Ss]upported|[Vv]alid|[Aa]ccepted|[Aa]cceptable)'
    r'\s+(?:values|options)\]?(?:\([^)\s]*\))?'
    r'(?:\s+for\s+(?:[A-Za-z]+\s+){0,4}?[A-Za-z]+(?=\s+are\b))?'
    r'(?:\s+(?:are|include)(?:\s+include)?(?:\s*\(case\s+insensitive\))?\s*:?|\s*:)\s*';

const String _oneOfLead =
    r'(?:(?:^|[.:!?]\s+)(?:One|Must\s+be\s+one|Set\s+to\s+one)\s+of'
    r'(?:\s+the\s+following(?:\s+values?)?(?:\s+is\s+required)?)?\s*:?'
    r'|\bThe\s+value\s+(?:can\s+only|must)\s+be\s+one\s+of'
    r'|\bone\s+of\s+the\s+followings?(?:\s+values?)?\s*:)\s*';

const String _eitherLead =
    r'(?:(?:^|[.:!?]\s+)(?:(?:[Mm]ust|[Ss]hould|[Cc]an(?:\s+currently)?)\s+be\s+[Ee]ither|Either)'
    r'|,\s*(?:can\s+be\s+)?either)\s+';

final List<RegExp> _listRules = [
  RegExp('$_valuesLead$_list$_listEnd'),
  RegExp('$_oneOfLead$_list$_listEnd'),
  RegExp('$_eitherLead$_plainList$_listEnd'),
];

final RegExp _bulletRule = RegExp(
  '(?:$_valuesLead|$_oneOfLead)'
  '((?:\\*\\s+$_token(?:\\s*:[^*]*|\\s*))+)\$',
);

final RegExp _definitionRule = RegExp(
  '(?:$_valuesLead|$_oneOfLead)'
  '($_plainToken\\s*:[^\\n]*(?:\\n\\s*$_plainToken\\s*:[^\\n]*)+)\\s*\$',
);

final RegExp _availableValues = RegExp(
  r'Available values:[ \t]*("(?:[^"\\]|\\.)*"(?:[ \t]*,[ \t]*"(?:[^"\\]|\\.)*")*)',
);
final RegExp _quoted = RegExp(r'"((?:[^"\\]|\\.)*)"');

// Cloudflare's Stainless-generated schemas also emit "Available values:" on
// wirefilter expression attributes to list expression fields, not enum values.
final RegExp _expressionLead = RegExp(
  r'^\s*(?:the |an? )?(?:wirefilter )?expression\b',
  caseSensitive: false,
);

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
