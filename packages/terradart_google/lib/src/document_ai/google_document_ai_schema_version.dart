// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_document_ai_schema_version`.
const Set<String> _googleDocumentAiSchemaVersionSensitive = <String>{};

/// Typed helper for the `schema` block of
/// `google_document_ai_schema_version` (derived from provider schema).
@immutable
final class DocumentAiSchemaVersionSchema {
  const DocumentAiSchemaVersionSchema({
    this.description,
    this.displayName,
    this.documentPrompt,
    this.entityTypes,
    this.metadata,
  });

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<String>? documentPrompt;

  final List<DocumentAiSchemaVersionEntityTypes>? entityTypes;

  final DocumentAiSchemaVersionMetadata? metadata;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'document_prompt': ?documentPrompt?.toTfJson(),
    if (entityTypes != null)
      'entity_types': [for (final e in entityTypes!) e.encode()],
    'metadata': ?metadata?.encode(),
  };
}

/// Typed helper for the `schema.entity_types` block of
/// `google_document_ai_schema_version` (derived from provider schema).
@immutable
final class DocumentAiSchemaVersionEntityTypes {
  const DocumentAiSchemaVersionEntityTypes({
    this.baseTypes,
    this.displayName,
    required this.name,
    this.enumValues,
    this.properties,
  });

  final TfArg<List<String>>? baseTypes;

  final TfArg<String>? displayName;

  final TfArg<String> name;

  final DocumentAiSchemaVersionEnumValues? enumValues;

  final List<DocumentAiSchemaVersionProperties>? properties;

  @internal
  Map<String, Object?> encode() => {
    'base_types': ?baseTypes?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'name': name.toTfJson(),
    'enum_values': ?enumValues?.encode(),
    if (properties != null)
      'properties': [for (final e in properties!) e.encode()],
  };
}

/// Typed helper for the `schema.entity_types.enum_values` block of
/// `google_document_ai_schema_version` (derived from provider schema).
@immutable
final class DocumentAiSchemaVersionEnumValues {
  const DocumentAiSchemaVersionEnumValues({this.values});

  final TfArg<List<String>>? values;

  @internal
  Map<String, Object?> encode() => {'values': ?values?.toTfJson()};
}

/// Typed helper for the `schema.entity_types.properties` block of
/// `google_document_ai_schema_version` (derived from provider schema).
@immutable
final class DocumentAiSchemaVersionProperties {
  const DocumentAiSchemaVersionProperties({
    this.displayName,
    this.method,
    required this.name,
    this.occurrenceType,
    required this.valueType,
  });

  final TfArg<String>? displayName;

  final DocumentAiSchemaVersionMethod? method;

  final TfArg<String> name;

  final DocumentAiSchemaVersionOccurrenceType? occurrenceType;

  final TfArg<String> valueType;

  @internal
  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'method': ?method?.toTfJson(),
    'name': name.toTfJson(),
    'occurrence_type': ?occurrenceType?.toTfJson(),
    'value_type': valueType.toTfJson(),
  };
}

/// `method` — derived from the provider schema description.
extension type const DocumentAiSchemaVersionMethod._(TfArg<String> _)
    implements TfArg<String> {
  DocumentAiSchemaVersionMethod.variable(String name)
    : this._(TfArg.variable(name));
  DocumentAiSchemaVersionMethod.expression(String template)
    : this._(TfArg.expression(template));
  const DocumentAiSchemaVersionMethod.arg(TfArg<String> arg) : this._(arg);

  static const extract = DocumentAiSchemaVersionMethod._(
    TfArgLiteral('EXTRACT'),
  );
  static const derive = DocumentAiSchemaVersionMethod._(TfArgLiteral('DERIVE'));
  static const relaxedExtract = DocumentAiSchemaVersionMethod._(
    TfArgLiteral('RELAXED_EXTRACT'),
  );

  static const List<DocumentAiSchemaVersionMethod> values = [
    extract,
    derive,
    relaxedExtract,
  ];
}

/// `occurrence_type` — derived from the provider schema description.
extension type const DocumentAiSchemaVersionOccurrenceType._(TfArg<String> _)
    implements TfArg<String> {
  DocumentAiSchemaVersionOccurrenceType.variable(String name)
    : this._(TfArg.variable(name));
  DocumentAiSchemaVersionOccurrenceType.expression(String template)
    : this._(TfArg.expression(template));
  const DocumentAiSchemaVersionOccurrenceType.arg(TfArg<String> arg)
    : this._(arg);

  static const optionalOnce = DocumentAiSchemaVersionOccurrenceType._(
    TfArgLiteral('OPTIONAL_ONCE'),
  );
  static const optionalMultiple = DocumentAiSchemaVersionOccurrenceType._(
    TfArgLiteral('OPTIONAL_MULTIPLE'),
  );
  static const requiredOnce = DocumentAiSchemaVersionOccurrenceType._(
    TfArgLiteral('REQUIRED_ONCE'),
  );
  static const requiredMultiple = DocumentAiSchemaVersionOccurrenceType._(
    TfArgLiteral('REQUIRED_MULTIPLE'),
  );

  static const List<DocumentAiSchemaVersionOccurrenceType> values = [
    optionalOnce,
    optionalMultiple,
    requiredOnce,
    requiredMultiple,
  ];
}

/// Typed helper for the `schema.metadata` block of
/// `google_document_ai_schema_version` (derived from provider schema).
@immutable
final class DocumentAiSchemaVersionMetadata {
  const DocumentAiSchemaVersionMetadata({
    this.documentAllowMultipleLabels,
    this.documentSplitter,
    this.prefixedNamingOnProperties,
    this.skipNamingValidation,
  });

  final TfArg<bool>? documentAllowMultipleLabels;

  final TfArg<bool>? documentSplitter;

  final TfArg<bool>? prefixedNamingOnProperties;

  final TfArg<bool>? skipNamingValidation;

  @internal
  Map<String, Object?> encode() => {
    'document_allow_multiple_labels': ?documentAllowMultipleLabels?.toTfJson(),
    'document_splitter': ?documentSplitter?.toTfJson(),
    'prefixed_naming_on_properties': ?prefixedNamingOnProperties?.toTfJson(),
    'skip_naming_validation': ?skipNamingValidation?.toTfJson(),
  };
}

/// Factory wrapper for `google_document_ai_schema_version`.
///
/// SchemaVersion is a version of the Schema which is created in Schema.
final class GoogleDocumentAiSchemaVersion extends Resource {
  static const String tfType = 'google_document_ai_schema_version';

  GoogleDocumentAiSchemaVersion(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<Map<String, String>>? labels,
    required TfArg<String> location,
    TfArg<String>? project,
    required TfArg<String> schemaId,
    required DocumentAiSchemaVersionSchema schema,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'labels': ?labels,
           'location': location,
           'project': ?project,
           'schema_id': schemaId,
           'schema': TfArg.literal(schema.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDocumentAiSchemaVersionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDocumentAiSchemaVersion>`.
  RefTo<GoogleDocumentAiSchemaVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `schema_id` attribute.
  TfRef<String> get schemaId => TfRef.attribute<String>(this, 'schema_id');
}
