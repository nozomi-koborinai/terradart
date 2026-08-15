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

  final TfArg<
    DocumentAiWarehouseDocumentSchemaPropertyDefinitionsRetrievalImportance
  >?
  retrievalImportance;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsDateTimeTypeOptions?
  dateTimeTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsEnumTypeOptions?
  enumTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsFloatTypeOptions?
  floatTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsIntegerTypeOptions?
  integerTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsMapTypeOptions?
  mapTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptions?
  propertyTypeOptions;

  final List<DocumentAiWarehouseDocumentSchemaPropertyDefinitionsSchemaSources>?
  schemaSources;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsTextTypeOptions?
  textTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsTimestampTypeOptions?
  timestampTypeOptions;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (isFilterable != null) 'is_filterable': isFilterable!.toTfJson(),
    if (isMetadata != null) 'is_metadata': isMetadata!.toTfJson(),
    if (isRepeatable != null) 'is_repeatable': isRepeatable!.toTfJson(),
    if (isRequired != null) 'is_required': isRequired!.toTfJson(),
    if (isSearchable != null) 'is_searchable': isSearchable!.toTfJson(),
    'name': name.toTfJson(),
    if (retrievalImportance != null)
      'retrieval_importance': retrievalImportance!.toTfJson(),
    if (dateTimeTypeOptions != null)
      'date_time_type_options': dateTimeTypeOptions!.encode(),
    if (enumTypeOptions != null) 'enum_type_options': enumTypeOptions!.encode(),
    if (floatTypeOptions != null)
      'float_type_options': floatTypeOptions!.encode(),
    if (integerTypeOptions != null)
      'integer_type_options': integerTypeOptions!.encode(),
    if (mapTypeOptions != null) 'map_type_options': mapTypeOptions!.encode(),
    if (propertyTypeOptions != null)
      'property_type_options': propertyTypeOptions!.encode(),
    if (schemaSources != null)
      'schema_sources': [for (final e in schemaSources!) e.encode()],
    if (textTypeOptions != null) 'text_type_options': textTypeOptions!.encode(),
    if (timestampTypeOptions != null)
      'timestamp_type_options': timestampTypeOptions!.encode(),
  };
}

/// `retrieval_importance` — derived from the provider schema description.
enum DocumentAiWarehouseDocumentSchemaPropertyDefinitionsRetrievalImportance
    implements TerraformEnum {
  highest('HIGHEST'),
  higher('HIGHER'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW'),
  lowest('LOWEST');

  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsRetrievalImportance(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `property_definitions.date_time_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsDateTimeTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsDateTimeTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.enum_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsEnumTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  final TfArg<List<Object?>> possibleValues;

  final TfArg<bool>? validationCheckDisabled;

  Map<String, Object?> encode() => {
    'possible_values': possibleValues.toTfJson(),
    if (validationCheckDisabled != null)
      'validation_check_disabled': validationCheckDisabled!.toTfJson(),
  };
}

/// Typed helper for the `property_definitions.float_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsFloatTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsFloatTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.integer_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsIntegerTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsIntegerTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.map_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsMapTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsMapTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptions({
    required this.propertyDefinitions,
  });

  final List<
    DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitions
  >
  propertyDefinitions;

  Map<String, Object?> encode() => {
    'property_definitions': [for (final e in propertyDefinitions) e.encode()],
  };
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitions({
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

  final TfArg<
    DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsRetrievalImportance
  >?
  retrievalImportance;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsDateTimeTypeOptions?
  dateTimeTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsEnumTypeOptions?
  enumTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsFloatTypeOptions?
  floatTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsIntegerTypeOptions?
  integerTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsMapTypeOptions?
  mapTypeOptions;

  final List<
    DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsSchemaSources
  >?
  schemaSources;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsTextTypeOptions?
  textTypeOptions;

  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsTimestampTypeOptions?
  timestampTypeOptions;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (isFilterable != null) 'is_filterable': isFilterable!.toTfJson(),
    if (isMetadata != null) 'is_metadata': isMetadata!.toTfJson(),
    if (isRepeatable != null) 'is_repeatable': isRepeatable!.toTfJson(),
    if (isRequired != null) 'is_required': isRequired!.toTfJson(),
    if (isSearchable != null) 'is_searchable': isSearchable!.toTfJson(),
    'name': name.toTfJson(),
    if (retrievalImportance != null)
      'retrieval_importance': retrievalImportance!.toTfJson(),
    if (dateTimeTypeOptions != null)
      'date_time_type_options': dateTimeTypeOptions!.encode(),
    if (enumTypeOptions != null) 'enum_type_options': enumTypeOptions!.encode(),
    if (floatTypeOptions != null)
      'float_type_options': floatTypeOptions!.encode(),
    if (integerTypeOptions != null)
      'integer_type_options': integerTypeOptions!.encode(),
    if (mapTypeOptions != null) 'map_type_options': mapTypeOptions!.encode(),
    if (schemaSources != null)
      'schema_sources': [for (final e in schemaSources!) e.encode()],
    if (textTypeOptions != null) 'text_type_options': textTypeOptions!.encode(),
    if (timestampTypeOptions != null)
      'timestamp_type_options': timestampTypeOptions!.encode(),
  };
}

/// `retrieval_importance` — derived from the provider schema description.
enum DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsRetrievalImportance
    implements TerraformEnum {
  highest('HIGHEST'),
  higher('HIGHER'),
  high('HIGH'),
  medium('MEDIUM'),
  low('LOW'),
  lowest('LOWEST');

  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsRetrievalImportance(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.date_time_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsDateTimeTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsDateTimeTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.enum_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsEnumTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  final TfArg<List<Object?>> possibleValues;

  final TfArg<bool>? validationCheckDisabled;

  Map<String, Object?> encode() => {
    'possible_values': possibleValues.toTfJson(),
    if (validationCheckDisabled != null)
      'validation_check_disabled': validationCheckDisabled!.toTfJson(),
  };
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.float_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsFloatTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsFloatTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.integer_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsIntegerTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsIntegerTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.map_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsMapTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsMapTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.schema_sources` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsSchemaSources {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsSchemaSources({
    this.name,
    this.processorType,
  });

  final TfArg<String>? name;

  final TfArg<String>? processorType;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (processorType != null) 'processor_type': processorType!.toTfJson(),
  };
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.text_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsTextTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsTextTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.property_type_options.property_definitions.timestamp_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsTimestampTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsPropertyTypeOptionsPropertyDefinitionsTimestampTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.schema_sources` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsSchemaSources {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsSchemaSources({
    this.name,
    this.processorType,
  });

  final TfArg<String>? name;

  final TfArg<String>? processorType;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (processorType != null) 'processor_type': processorType!.toTfJson(),
  };
}

/// Typed helper for the `property_definitions.text_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsTextTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsTextTypeOptions();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `property_definitions.timestamp_type_options` block of
/// `google_document_ai_warehouse_document_schema` (derived from provider schema).
@immutable
final class DocumentAiWarehouseDocumentSchemaPropertyDefinitionsTimestampTypeOptions {
  const DocumentAiWarehouseDocumentSchemaPropertyDefinitionsTimestampTypeOptions();

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

  GoogleDocumentAiWarehouseDocumentSchema({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<bool>? documentIsFolder,
    required TfArg<String> location,
    required TfArg<String> projectNumber,
    required List<DocumentAiWarehouseDocumentSchemaPropertyDefinitions>
    propertyDefinitions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (documentIsFolder != null) 'document_is_folder': documentIsFolder,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
