import 'dart:convert';

/// Parses schema descriptions that document a finite value set. A
/// description that calls its list partial ([describesOpenSet]) documents
/// none.
List<String>? parseEnumValuesFromDescription(String? description) {
  if (description == null || describesOpenSet(description)) return null;

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

/// Whether [description] says the values it lists are not all the values
/// the input takes: `See [FlexShieldingRegion](...) for the full list`,
/// `Future modes (e.g. cnsa2) may be added; clients should treat unknown
/// values as opaque strings.` Such an input stays a string.
bool describesOpenSet(String description) => _openSet.hasMatch(description);

final RegExp _openSet = RegExp(
  r'\bfor\s+the\s+(?:full|complete)\s+list\b'
  r'|\b(?:values|modes|options|types)\b[^.]{0,40}\bmay\s+be\s+added\b'
  r'|\bunknown\s+values\b',
  caseSensitive: false,
);

/// The values [token] reads from [list], or none when one is a path, URL or
/// template (`'https://.../hyperdisk-balanced'`, `'projects/{project}'`):
/// such a list shows formats, not a value set.
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

/// One listed value: a quoted word, a SCREAMING_CASE or hyphenated
/// upper-case word (`UTF-16BE`, `X86_64`), or a PascalCase word of at least
/// two humps (`PreProxyFlowHook`). A capitalized English word has one hump,
/// so prose such as `One of Google or Microsoft` stays a string.
const String _token = '(?:$_plainToken|$_pascalToken)';

/// A quoted word or an upper-case word: a value even outside a list cue.
const String _plainToken =
    '(?:"[^"\\s]+"|\'[^\'\\s]+\'|`[^`\\s]+`'
    '|[A-Z][A-Z0-9_]+(?:-[A-Z0-9_]+)*(?![A-Za-z0-9_]))';

const String _pascalToken =
    r'(?:[A-Z][a-z0-9]+(?:[A-Z][a-z0-9]*)+(?![A-Za-z0-9_]))';

/// Two or more tokens separated by commas, spaces, dash bullets, `or` or
/// `and`, each optionally followed by a parenthetical gloss (`"pd-ssd"
/// (Persistent Disk Solid State Drive)`, `ARTIFACT_REGISTRY (default)`).
final String _list = '(${_listOf(_token)})';
final String _plainList = '(${_listOf(_plainToken)})';

String _listOf(String token) =>
    '(?:-\\s*)?$token(?:\\s*\\([^()]*\\))?'
    '(?:(?:\\s*,\\s*(?:(?:or|and)\\s+)?|\\s*-\\s*|\\s+(?:(?:or|and)\\s+)?)'
    '$token(?:\\s*\\([^()]*\\))?)+';

/// The list must end the clause, so a list that runs on into prose
/// (`One of SUBNETWORK or NETWORK must be set`) is not a value set. A comma
/// ends it only when no further value or `and` / `or` follows: otherwise a
/// list that runs on (`ASIA, EU, US or any region`, `'a', 'b', and other
/// connector IDs`) would match a prefix of itself. A trailing `or not
/// specified` names the unset input, not another value.
const String _listEnd =
    '(?:\\s+or\\s+not\\s+specified)?'
    '(?=\\s*(?:[.;:)]|,(?!\\s*(?:(?:or|and)\\b|$_token))|\$)|\\s+[A-Z][a-z])';

/// `Possible values: SYNCHRONOUS ASYNCHRONOUS`, `Allowed values are "http1"
/// and "h2c".`, `Supported values include: 'FAIL_OPEN', 'FAIL_CLOSED'.`,
/// `Allowed values are (case insensitive): ALL, READ.`, `Valid values for
/// the level of PMU are "STANDARD", "ENHANCED".`, `[Valid values](url)
/// include: "TIER_1" and "TIER_UNSPECIFIED".` The phrase must lead straight
/// into the list: `Valid values for the level are described in ...` names
/// no values.
const String _valuesLead =
    r'\[?\b(?:[Pp]ossible|[Aa]llowed|[Ss]upported|[Vv]alid|[Aa]ccepted|[Aa]cceptable)'
    r'\s+(?:values|options)\]?(?:\([^)\s]*\))?'
    r'(?:\s+for\s+(?:[A-Za-z]+\s+){0,4}?[A-Za-z]+(?=\s+are\b))?'
    r'(?:\s+(?:are|include)(?:\s+include)?(?:\s*\(case\s+insensitive\))?\s*:?|\s*:)\s*';

/// `One of SCSI or NVME.`, `Must be one of PreProxyFlowHook, ..., or
/// PostTargetFlowHook.`, `Set to one of: DEFAULT, RESTART_IN_PLACE.`, `One
/// of the following values is required: SEV, SEV_SNP, TDX.` Only at the
/// start of a sentence: mid-sentence (`the scheme must be one of "http" or
/// "https"`) it constrains part of the value, not the value. `The value can
/// only be one of "us" and "eu".` names the input's own value, as does a
/// `one of the following values:` list introduced by a colon.
const String _oneOfLead =
    r'(?:(?:^|[.:!?]\s+)(?:One|Must\s+be\s+one|Set\s+to\s+one)\s+of'
    r'(?:\s+the\s+following(?:\s+values?)?(?:\s+is\s+required)?)?\s*:?'
    r'|\bThe\s+value\s+(?:can\s+only|must)\s+be\s+one\s+of'
    r'|\bone\s+of\s+the\s+followings?(?:\s+values?)?\s*:)\s*';

/// `Either "RUNNING", "SUSPENDED" or "TERMINATED".`, `Should be either
/// 'ENABLED' or 'DISABLED'.`, `The type of disk, can be either "SCRATCH" or
/// "PERSISTENT".` Quoted or upper-case values only: PascalCase names a kind
/// of thing here (`The URL of parent prefix. Either PublicAdvertisedPrefix
/// or PublicDelegatedPrefix.`), not a value.
const String _eitherLead =
    r'(?:(?:^|[.:!?]\s+)(?:(?:[Mm]ust|[Ss]hould|[Cc]an(?:\s+currently)?)\s+be\s+[Ee]ither|Either)'
    r'|,\s*(?:can\s+be\s+)?either)\s+';

final List<RegExp> _listRules = [
  RegExp('$_valuesLead$_list$_listEnd'),
  RegExp('$_oneOfLead$_list$_listEnd'),
  RegExp('$_eitherLead$_plainList$_listEnd'),
];

/// A bullet list after a value cue that ends the description, each item a
/// value with an optional `: gloss` (`The value must be one of the
/// followings: * UNIT_L2_NORM: Unit L2 normalization type * NONE: No
/// normalization.`). Only the item heads are values.
final RegExp _bulletRule = RegExp(
  '(?:$_valuesLead|$_oneOfLead)'
  '((?:\\*\\s+$_token(?:\\s*:[^*]*|\\s*))+)\$',
);

/// A definition list after a value cue that ends the description, one
/// `"value": gloss` per line (`Possible values:\n"manual": The system waits
/// for approval.\n"time": The system waits for a duration.`).
final RegExp _definitionRule = RegExp(
  '(?:$_valuesLead|$_oneOfLead)'
  '($_plainToken\\s*:[^\\n]*(?:\\n\\s*$_plainToken\\s*:[^\\n]*)+)\\s*\$',
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
