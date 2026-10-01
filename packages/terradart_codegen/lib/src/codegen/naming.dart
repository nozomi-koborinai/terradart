/// snake_case → camelCase.
String snakeToCamel(String s) {
  final parts = s.split('_');
  if (parts.isEmpty) return s;
  final buf = StringBuffer(parts.first);
  for (var i = 1; i < parts.length; i++) {
    final p = parts[i];
    if (p.isEmpty) continue;
    buf
      ..write(p[0].toUpperCase())
      ..write(p.substring(1));
  }
  return buf.toString();
}

/// snake_case → PascalCase.
String snakeToPascal(String s) {
  final c = snakeToCamel(s);
  return c.isEmpty ? c : '${c[0].toUpperCase()}${c.substring(1)}';
}

/// Dart class name for a curated data-source factory.
///
/// New data sources use a `Data` prefix (`google_compute_network` →
/// `DataGoogleComputeNetwork`) so they never collide with the resource
/// factory of the same Terraform type when both barrels are imported.
///
/// `google_project` is the pre-existing public API (`GoogleProject`) and
/// stays unprefixed — the resource twin is not curated.
String dataSourceClassName(String terraformType) {
  if (terraformType == 'google_project') {
    return snakeToPascal(terraformType);
  }
  return 'Data${snakeToPascal(terraformType)}';
}

/// `$GooglePubsubTopic` for `google_pubsub_topic`.
String terraformAbstractClassName(String terraformType) =>
    '\$${snakeToPascal(terraformType)}';

/// `$SchemaSettings` for nested block `schema_settings`.
String nestedAbstractClassName(String nestedName) =>
    '\$${snakeToPascal(nestedName)}';

/// Snake-case file name: `google_pubsub_topic.dart`.
String resourceFileName(String terraformType) => '$terraformType.dart';

class EnumName {
  final String dartName;
  final List<String> dartMembers;
  final List<String> rawValues;
  final String fieldPath;
  const EnumName({
    required this.dartName,
    required this.dartMembers,
    required this.rawValues,
    required this.fieldPath,
  });
}

/// Strips a known provider prefix (`google_`, `cloudflare_`, `appwrite_`,
/// `aws_`) from [terraformType], then converts the remainder to PascalCase —
/// e.g. `google_app_engine_domain_mapping` → `AppEngineDomainMapping`,
/// `cloudflare_zone` → `Zone`.
///
/// This is the shared "short resource name" both [enumName] (top-level
/// derived enum names, e.g. `PubsubTopicEncoding` rather than
/// `GooglePubsubTopicEncoding`) and the `deriveNestedTypes` collector wiring
/// in `wrapper_emitter.dart` (nested-type class name prefixes, e.g.
/// `AppEngineDomainMappingSslSettings`) build their generated names from —
/// dropping the prefix keeps generated names readable in user code.
String shortResourcePascal(String terraformType) {
  const providerPrefixes = ['google_', 'cloudflare_', 'appwrite_', 'aws_'];
  var short = terraformType;
  for (final prefix in providerPrefixes) {
    if (short.startsWith(prefix)) {
      short = short.substring(prefix.length);
      break;
    }
  }
  return snakeToPascal(short);
}

/// Enum name = `<ResourceShortName><FieldNamePascal>`, e.g.
/// `google_pubsub_topic` + `schema_settings.encoding` →
/// `PubsubTopicEncoding`.
///
/// Members are SCREAMING_SNAKE_CASE → camelCase.
///
/// [dartName], when given, replaces the derived name (a top-level input's
/// `topLevelTypeNames` entry).
EnumName enumName({
  required String resourceType,
  required String fieldPath,
  required List<String> members,
  String? dartName,
}) {
  // Use the **leaf** field name for the enum suffix (encoding, not
  // schema_settings.encoding) — short and distinctive.
  final leaf = fieldPath.split('.').last;
  final leafPascal = snakeToPascal(leaf);
  final dartMembers = enumMemberNames(members);
  return EnumName(
    dartName: dartName ?? '${shortResourcePascal(resourceType)}$leafPascal',
    dartMembers: dartMembers,
    rawValues: List<String>.from(members),
    fieldPath: fieldPath,
  );
}

/// SCREAMING_SNAKE_CASE → camelCase, e.g. `AUTOMATIC` → `automatic`,
/// `ENCODING_UNSPECIFIED` → `encodingUnspecified`. Hyphenated schema
/// values (`connect-failure`) are treated as snake_case so the Dart
/// member is a legal identifier (`connectFailure`).
///
/// Guarantees a legal Dart identifier: on the rare occasion a raw value's
/// camelCase rendering collides with a word Dart reserves outright
/// (`default`, `in`, ...), a `Case` suffix is appended — the same
/// mechanical fallback `ValidValuesEmitter` uses for the MM-derived
/// `enum_values` path (`wrap_promote/valid_values_emitter.dart`). Every
/// *known* collision in this codebase has so far been hand-named per field
/// instead (e.g. `defaultMode` in
/// `wrapper_overrides/yaml/google_compute_router.yaml`, `overrideStrategy`
/// in `wrapper_overrides/yaml/google_app_engine_domain_mapping.yaml`) — this
/// generic fallback only exists so a not-yet-reviewed derived enum can never
/// fail to compile; a real hit is worth a human pass at a more fitting name.
String screamingToCamel(String screaming) {
  final parts = screaming.toLowerCase().replaceAll('-', '_').split('_');
  final camel = snakeToCamel(parts.join('_'));
  return safeDartIdentifier(camel);
}

/// Dart enum member names for [values], index-aligned.
///
/// Each member is [screamingToCamel] of its value whenever that is a legal,
/// lint-clean (`constant_identifier_names`) member unique within the enum —
/// every SCREAMING_SNAKE / snake / kebab value set. Values it cannot name
/// (`1.2`, `@cf/meta/llama-3-8b`, `<=`, `thresholds.$key`, ...) fall back
/// to [_fallbackMemberName]; a name still taken gets a numeric suffix.
List<String> enumMemberNames(List<String> values) {
  final taken = <String>{};
  final out = <String>[];
  for (final value in values) {
    final legacy = screamingToCamel(value);
    var name = _isUsableMember(legacy) ? legacy : _fallbackMemberName(value);
    if (taken.contains(name)) {
      final base = name;
      var n = 2;
      while (taken.contains('$base$n')) {
        n++;
      }
      name = '$base$n';
    }
    taken.add(name);
    out.add(name);
  }
  return out;
}

final RegExp _memberPattern = RegExp(r'^[a-z][a-zA-Z0-9]*$');

bool _isUsableMember(String name) =>
    _memberPattern.hasMatch(name) && !_enumReservedMembers.contains(name);

/// Members an enum cannot declare: the constructors and `values` list every
/// emitted enum carries, `TfArg`'s and `Object`'s instance members, and the
/// names the enums reserved while they were Dart `enum`s (`index`,
/// `override`, `terraformValue`), kept so no member is renamed.
const Set<String> _enumReservedMembers = {
  'override',
  'values',
  'index',
  'hashCode',
  'runtimeType',
  'toString',
  'noSuchMethod',
  'terraformValue',
  'variable',
  'expression',
  'arg',
  'toTfJson',
};

const Map<String, String> _operatorMembers = {
  '<': 'lt',
  '<=': 'lte',
  '=': 'eq',
  '==': 'eq',
  '>': 'gt',
  '>=': 'gte',
  '!=': 'ne',
};

/// Alphanumeric runs camel-cased, a separator between two digits spelled
/// out (`.` → `p`, anything else → `x`) so `1.2` / `12` stay distinct, and a
/// leading digit prefixed with `v`.
String _fallbackMemberName(String value) {
  if (value.isEmpty) return 'empty';
  final op = _operatorMembers[value.trim()];
  if (op != null) return op;

  final words = <String>[];
  final run = RegExp(r'[A-Za-z0-9]+');
  var previousEnd = -1;
  for (final m in run.allMatches(value)) {
    final word = m.group(0)!.toLowerCase();
    if (words.isNotEmpty &&
        _isDigit(value[previousEnd - 1]) &&
        _isDigit(word[0])) {
      final separator = value.substring(previousEnd, m.start);
      words[words.length - 1] += separator == '.' ? 'p' : 'x';
      words[words.length - 1] += word;
    } else {
      words.add(word);
    }
    previousEnd = m.end;
  }
  if (words.isEmpty) return 'value';

  final buf = StringBuffer(words.first);
  for (final w in words.skip(1)) {
    buf
      ..write(w[0].toUpperCase())
      ..write(w.substring(1));
  }
  var name = buf.toString();
  if (_isDigit(name[0])) name = 'v$name';
  if (_dartReservedWords.contains(name) ||
      _enumReservedMembers.contains(name)) {
    name = '${name}Case';
  }
  return name;
}

bool _isDigit(String ch) {
  final c = ch.codeUnitAt(0);
  return c >= 0x30 && c <= 0x39;
}

/// [raw] as the body of a single-quoted Dart string literal.
String dartSingleQuotedBody(String raw) => raw
    .replaceAll(r'\', r'\\')
    .replaceAll("'", r"\'")
    .replaceAll(r'$', r'\$')
    .replaceAll('\n', r'\n');

/// Terraform snake_case attribute / block name → a legal Dart identifier.
///
/// Combines [snakeToCamel] with [safeDartIdentifier] so a schema field
/// named `default` becomes constructor parameter `defaultCase` rather than
/// unparseable `default`.
String snakeToDartIdent(String snake) =>
    safeDartIdentifier(snakeToCamel(snake));

/// Returns [ident] verbatim unless it is a Dart reserved word, in which
/// case a `Case` suffix is appended (`default` → `defaultCase`). Shared by
/// [screamingToCamel] (enum members) and nested-type field names so wrap
/// never emits an unparseable identifier.
String safeDartIdentifier(String ident) =>
    _dartReservedWords.contains(ident) ? '${ident}Case' : ident;

/// Dart's fully-reserved words: illegal as an identifier in *any* context.
/// Deliberately narrower than "reserved words + built-in identifiers" (e.g.
/// `abstract`, `late`, `static` are legal identifiers in Dart) — this set
/// only guards against the words that would otherwise fail to parse.
const Set<String> _dartReservedWords = {
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
