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
  final String fieldPath;
  const EnumName({
    required this.dartName,
    required this.dartMembers,
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
  final dartMembers = [for (final m in members) _screamingToCamel(m)];
  return EnumName(
    dartName: '$shortResourcePascal$leafPascal',
    dartMembers: dartMembers,
    fieldPath: fieldPath,
  );
}

String _screamingToCamel(String screaming) {
  final parts = screaming.toLowerCase().split('_');
  return snakeToCamel(parts.join('_'));
}
