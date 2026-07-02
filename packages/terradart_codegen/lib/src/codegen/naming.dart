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
  // Drop the `google_` provider prefix when synthesising enum names so they
  // read naturally in user code (`PubsubTopicEncoding`, not
  // `GooglePubsubTopicSchemaSettingsEncoding`).
  final shortResource = resourceType.startsWith('google_')
      ? resourceType.substring(7)
      : resourceType;
  final shortResourcePascal = snakeToPascal(shortResource);
  // Use the **leaf** field name for the enum suffix (encoding, not
  // schema_settings.encoding) — short and distinctive.
  final leaf = fieldPath.split('.').last;
  final leafPascal = snakeToPascal(leaf);
  final dartMembers = [for (final m in members) screamingToCamel(m)];
  return EnumName(
    dartName: '$shortResourcePascal$leafPascal',
    dartMembers: dartMembers,
    rawValues: List<String>.from(members),
    fieldPath: fieldPath,
  );
}

/// SCREAMING_SNAKE_CASE → camelCase, e.g. `AUTOMATIC` → `automatic`,
/// `ENCODING_UNSPECIFIED` → `encodingUnspecified`.
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
  final parts = screaming.toLowerCase().split('_');
  final camel = snakeToCamel(parts.join('_'));
  return _dartReservedWords.contains(camel) ? '${camel}Case' : camel;
}

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
