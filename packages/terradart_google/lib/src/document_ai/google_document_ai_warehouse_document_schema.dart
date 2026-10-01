// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_document_ai_warehouse_document_schema`.
const Set<String> _googleDocumentAiWarehouseDocumentSchemaSensitive =
    <String>{};

/// Typed helper for the `property_definitions` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitions({
    this.displayName,
    this.isFilterable,
    this.isMetadata,
    this.isRepeatable,
    this.isRequired,
    this.isSearchable,
    required this.name,
    this.retrievalImportance,
    this.dateTimeTypeOptions,
    this.enumTypeOptions,
    this.floatTypeOptions,
    this.integerTypeOptions,
    this.mapTypeOptions,
    this.propertyTypeOptions,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  final TfArg<String>? displayName;

  final TfArg<bool>? isFilterable;

  final TfArg<bool>? isMetadata;

  final TfArg<bool>? isRepeatable;

  final TfArg<bool>? isRequired;

  final TfArg<bool>? isSearchable;

  final TfArg<String> name;

  final DocumentAiWarehouseDocumentSchemaRetrievalImportance?
  retrievalImportance;

  final DocumentAiWarehouseDocumentSchemaDateTimeTypeOptions?
  dateTimeTypeOptions;

  final DocumentAiWarehouseDocumentSchemaEnumTypeOptions? enumTypeOptions;

  final DocumentAiWarehouseDocumentSchemaFloatTypeOptions? floatTypeOptions;

  final DocumentAiWarehouseDocumentSchemaIntegerTypeOptions? integerTypeOptions;

  final DocumentAiWarehouseDocumentSchemaMapTypeOptions? mapTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyTypeOptions?
  propertyTypeOptions;

  final List<DocumentAiWarehouseDocumentSchemaSources>? schemaSources;

  final DocumentAiWarehouseDocumentSchemaTextTypeOptions? textTypeOptions;

  final DocumentAiWarehouseDocumentSchemaTimestampTypeOptions?
  timestampTypeOptions;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'is_filterable': ?isFilterable?.toTfJson(),
    'is_metadata': ?isMetadata?.toTfJson(),
    'is_repeatable': ?isRepeatable?.toTfJson(),
    'is_required': ?isRequired?.toTfJson(),
    'is_searchable': ?isSearchable?.toTfJson(),
    'name': name.toTfJson(),
    'retrieval_importance': ?retrievalImportance?.toTfJson(),
    'date_time_type_options': ?dateTimeTypeOptions?.encode(),
    'enum_type_options': ?enumTypeOptions?.encode(),
    'float_type_options': ?floatTypeOptions?.encode(),
    'integer_type_options': ?integerTypeOptions?.encode(),
    'map_type_options': ?mapTypeOptions?.encode(),
    'property_type_options': ?propertyTypeOptions?.encode(),
    if (schemaSources != null)
      'schema_sources': [for (final e in schemaSources!) e.encode()],
    'text_type_options': ?textTypeOptions?.encode(),
    'timestamp_type_options': ?timestampTypeOptions?.encode(),
  };
}

/// `retrieval_importance` — derived from the provider schema description.
extension type const DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
  TfArg<String> _
) implements TfArg<String> {
  DocumentAiWarehouseDocumentSchemaRetrievalImportance.variable(String name)
    : this._(TfArg.variable(name));
  DocumentAiWarehouseDocumentSchemaRetrievalImportance.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const DocumentAiWarehouseDocumentSchemaRetrievalImportance.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const highest = DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
    TfArgLiteral('HIGHEST'),
  );
  static const higher = DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
    TfArgLiteral('HIGHER'),
  );
  static const high = DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
    TfArgLiteral('HIGH'),
  );
  static const medium = DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
    TfArgLiteral('MEDIUM'),
  );
  static const low = DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
    TfArgLiteral('LOW'),
  );
  static const lowest = DocumentAiWarehouseDocumentSchemaRetrievalImportance._(
    TfArgLiteral('LOWEST'),
  );

  static const List<DocumentAiWarehouseDocumentSchemaRetrievalImportance>
  values = [highest, higher, high, medium, low, lowest];
}

/// Typed helper for the `property_definitions.date_time_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaDateTimeTypeOptions {
  const DocumentAiWarehouseDocumentSchemaDateTimeTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.enum_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaEnumTypeOptions {
  const DocumentAiWarehouseDocumentSchemaEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  final TfArg<List<String>> possibleValues;

  final TfArg<bool>? validationCheckDisabled;

  Map<String, Object?> encode() => {
    'possible_values': possibleValues.toTfJson(),
    'validation_check_disabled': ?validationCheckDisabled?.toTfJson(),
  };
}

/// Typed helper for the `property_definitions.float_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaFloatTypeOptions {
  const DocumentAiWarehouseDocumentSchemaFloatTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.integer_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaIntegerTypeOptions {
  const DocumentAiWarehouseDocumentSchemaIntegerTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.map_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaMapTypeOptions {
  const DocumentAiWarehouseDocumentSchemaMapTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyTypeOptions({
    required this.propertyDefinitions,
  });

  final List<
    DocumentAiWarehouseDocumentSchemaPropertyTypeOptionsPropertyDefinitions
  >
  propertyDefinitions;

  Map<String, Object?> encode() => {
    'property_definitions': [for (final e in propertyDefinitions) e.encode()],
  };
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyTypeOptionsPropertyDefinitions {
  const DocumentAiWarehouseDocumentSchemaPropertyTypeOptionsPropertyDefinitions({
    this.displayName,
    this.isFilterable,
    this.isMetadata,
    this.isRepeatable,
    this.isRequired,
    this.isSearchable,
    required this.name,
    this.retrievalImportance,
    this.dateTimeTypeOptions,
    this.enumTypeOptions,
    this.floatTypeOptions,
    this.integerTypeOptions,
    this.mapTypeOptions,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  final TfArg<String>? displayName;

  final TfArg<bool>? isFilterable;

  final TfArg<bool>? isMetadata;

  final TfArg<bool>? isRepeatable;

  final TfArg<bool>? isRequired;

  final TfArg<bool>? isSearchable;

  final TfArg<String> name;

  final DocumentAiWarehouseDocumentSchemaRetrievalImportance?
  retrievalImportance;

  final DocumentAiWarehouseDocumentSchemaDateTimeTypeOptions?
  dateTimeTypeOptions;

  final DocumentAiWarehouseDocumentSchemaEnumTypeOptions? enumTypeOptions;

  final DocumentAiWarehouseDocumentSchemaFloatTypeOptions? floatTypeOptions;

  final DocumentAiWarehouseDocumentSchemaIntegerTypeOptions? integerTypeOptions;

  final DocumentAiWarehouseDocumentSchemaMapTypeOptions? mapTypeOptions;

  final List<DocumentAiWarehouseDocumentSchemaSources>? schemaSources;

  final DocumentAiWarehouseDocumentSchemaTextTypeOptions? textTypeOptions;

  final DocumentAiWarehouseDocumentSchemaTimestampTypeOptions?
  timestampTypeOptions;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'is_filterable': ?isFilterable?.toTfJson(),
    'is_metadata': ?isMetadata?.toTfJson(),
    'is_repeatable': ?isRepeatable?.toTfJson(),
    'is_required': ?isRequired?.toTfJson(),
    'is_searchable': ?isSearchable?.toTfJson(),
    'name': name.toTfJson(),
    'retrieval_importance': ?retrievalImportance?.toTfJson(),
    'date_time_type_options': ?dateTimeTypeOptions?.encode(),
    'enum_type_options': ?enumTypeOptions?.encode(),
    'float_type_options': ?floatTypeOptions?.encode(),
    'integer_type_options': ?integerTypeOptions?.encode(),
    'map_type_options': ?mapTypeOptions?.encode(),
    if (schemaSources != null)
      'schema_sources': [for (final e in schemaSources!) e.encode()],
    'text_type_options': ?textTypeOptions?.encode(),
    'timestamp_type_options': ?timestampTypeOptions?.encode(),
  };
}

/// Typed helper for the `property_definitions.schema_sources` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaSources {
  const DocumentAiWarehouseDocumentSchemaSources({
    this.name,
    this.processorType,
  });

  final TfArg<String>? name;

  final TfArg<String>? processorType;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'processor_type': ?processorType?.toTfJson(),
  };
}

/// Typed helper for the `property_definitions.text_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaTextTypeOptions {
  const DocumentAiWarehouseDocumentSchemaTextTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.timestamp_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class DocumentAiWarehouseDocumentSchemaTimestampTypeOptions {
  const DocumentAiWarehouseDocumentSchemaTimestampTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_document_ai_warehouse_document_schema`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleDocumentAiWarehouseDocumentSchema extends Resource {
  static const String tfType = 'google_document_ai_warehouse_document_schema';

  GoogleDocumentAiWarehouseDocumentSchema(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<bool>? documentIsFolder,
    required TfArg<String> location,
    required TfArg<String> projectNumber,
    required List<DocumentAiWarehouseDocumentSchemaPropertyDefinitions>
    propertyDefinitions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'document_is_folder': ?documentIsFolder,
           'location': location,
           'project_number': projectNumber,
           'property_definitions': TfArg.literal([
             for (final e in propertyDefinitions) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDocumentAiWarehouseDocumentSchemaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDocumentAiWarehouseDocumentSchema>`.
  RefTo<GoogleDocumentAiWarehouseDocumentSchema> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `document_is_folder` attribute.
  TfRef<bool> get documentIsFolder =>
      TfRef.attribute<bool>(this, 'document_is_folder');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project_number` attribute.
  TfRef<String> get projectNumber =>
      TfRef.attribute<String>(this, 'project_number');
}
