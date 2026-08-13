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

/// Strips the `google_` provider prefix (if present) from [terraformType],
/// then converts the remainder to PascalCase — e.g.
/// `google_app_engine_domain_mapping` → `AppEngineDomainMapping`.
///
/// This is the shared "short resource name" both [enumName] (top-level
/// derived enum names, e.g. `PubsubTopicEncoding` rather than
/// `GooglePubsubTopicEncoding`) and the `deriveNestedTypes` collector wiring
/// in `wrapper_emitter.dart` (nested-type class name prefixes, e.g.
/// `AppEngineDomainMappingSslSettings`) build their generated names from —
/// dropping the prefix keeps generated names readable in user code.
String shortResourcePascal(String terraformType) {
  const providerPrefix = 'google_';
  final short = terraformType.startsWith(providerPrefix)
      ? terraformType.substring(providerPrefix.length)
      : terraformType;
  return snakeToPascal(short);
}

/// Enum name = `<ResourceShortName><FieldNamePascal>`, e.g.
/// `google_pubsub_topic` + `schema_settings.encoding` →
/// `PubsubTopicEncoding`.
///
/// Members are SCREAMING_SNAKE_CASE → camelCase.
EnumName enumName({
  required String resourceType,
  required String fieldPath,
  required List<String> members,
}) {
  // Use the **leaf** field name for the enum suffix (encoding, not
  // schema_settings.encoding) — short and distinctive.
  final leaf = fieldPath.split('.').last;
  final leafPascal = snakeToPascal(leaf);
  final dartMembers = [for (final m in members) screamingToCamel(m)];
  return EnumName(
    dartName: '${shortResourcePascal(resourceType)}$leafPascal',
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
