// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../pubsub/google_pubsub_topic.dart' show GooglePubsubTopic;

/// Sensitive field paths for `google_healthcare_fhir_store`.
const Set<String> _googleHealthcareFhirStoreSensitive = <String>{};

/// Healthcare Fhir Store Complex Data Type Reference enum for `complex_data_type_reference_parsing`.
enum HealthcareFhirStoreComplexDataTypeReferenceParsing
    implements TerraformEnum {
  complexDataTypeReferenceParsingUnspecified(
    'COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED',
  ),
  disabled('DISABLED'),
  enabled('ENABLED');

  const HealthcareFhirStoreComplexDataTypeReferenceParsing(this.terraformValue);
  @override
  final String terraformValue;
}

/// Healthcare Fhir Store enum for `version`.
enum HealthcareFhirStoreVersion implements TerraformEnum {
  dstu2('DSTU2'),
  stu3('STU3'),
  r4('R4');

  const HealthcareFhirStoreVersion(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `notification_config` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreNotificationConfig {
  const HealthcareFhirStoreNotificationConfig({required this.pubsubTopic});

  final RefTo<GooglePubsubTopic> pubsubTopic;

  Map<String, Object?> encode() => {
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
  };
}

/// Typed helper for the `notification_configs` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreNotificationConfigs {
  const HealthcareFhirStoreNotificationConfigs({
    required this.pubsubTopic,
    this.sendFullResource,
    this.sendPreviousResourceOnDelete,
  });

  final RefTo<GooglePubsubTopic> pubsubTopic;

  final TfArg<bool>? sendFullResource;

  final TfArg<bool>? sendPreviousResourceOnDelete;

  Map<String, Object?> encode() => {
    'pubsub_topic': pubsubTopic.encodeAs('id').toTfJson(),
    'send_full_resource': ?sendFullResource?.toTfJson(),
    'send_previous_resource_on_delete': ?sendPreviousResourceOnDelete
        ?.toTfJson(),
  };
}

/// Typed helper for the `stream_configs` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreStreamConfigs {
  const HealthcareFhirStoreStreamConfigs({
    this.resourceTypes,
    required this.bigqueryDestination,
  });

  final TfArg<List<String>>? resourceTypes;

  final HealthcareFhirStoreStreamConfigsBigqueryDestination bigqueryDestination;

  Map<String, Object?> encode() => {
    'resource_types': ?resourceTypes?.toTfJson(),
    'bigquery_destination': bigqueryDestination.encode(),
  };
}

/// Typed helper for the `stream_configs.bigquery_destination` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreStreamConfigsBigqueryDestination {
  const HealthcareFhirStoreStreamConfigsBigqueryDestination({
    required this.datasetUri,
    required this.schemaConfig,
  });

  final TfArg<String> datasetUri;

  final HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfig
  schemaConfig;

  Map<String, Object?> encode() => {
    'dataset_uri': datasetUri.toTfJson(),
    'schema_config': schemaConfig.encode(),
  };
}

/// Typed helper for the `stream_configs.bigquery_destination.schema_config` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfig {
  const HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfig({
    required this.recursiveStructureDepth,
    this.schemaType,
    this.lastUpdatedPartitionConfig,
  });

  final TfArg<num> recursiveStructureDepth;

  final TfArg<
    HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigSchemaType
  >?
  schemaType;

  final HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig?
  lastUpdatedPartitionConfig;

  Map<String, Object?> encode() => {
    'recursive_structure_depth': recursiveStructureDepth.toTfJson(),
    'schema_type': ?schemaType?.toTfJson(),
    'last_updated_partition_config': ?lastUpdatedPartitionConfig?.encode(),
  };
}

/// `schema_type` — derived from the provider schema description.
enum HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigSchemaType
    implements TerraformEnum {
  analytics('ANALYTICS'),
  analyticsV2('ANALYTICS_V2'),
  lossless('LOSSLESS');

  const HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigSchemaType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `stream_configs.bigquery_destination.schema_config.last_updated_partition_config` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig {
  const HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig({
    this.expirationMs,
    required this.type,
  });

  final TfArg<String>? expirationMs;

  final TfArg<
    HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigType
  >
  type;

  Map<String, Object?> encode() => {
    'expiration_ms': ?expirationMs?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigType
    implements TerraformEnum {
  partitionTypeUnspecified('PARTITION_TYPE_UNSPECIFIED'),
  hour('HOUR'),
  day('DAY'),
  month('MONTH'),
  year('YEAR');

  const HealthcareFhirStoreStreamConfigsBigqueryDestinationSchemaConfigLastUpdatedPartitionConfigType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `validation_config` block of
/// `google_healthcare_fhir_store` (derived from provider schema).
@immutable
final class HealthcareFhirStoreValidationConfig {
  const HealthcareFhirStoreValidationConfig({
    this.disableFhirpathValidation,
    this.disableProfileValidation,
    this.disableReferenceTypeValidation,
    this.disableRequiredFieldValidation,
    this.enabledImplementationGuides,
  });

  final TfArg<bool>? disableFhirpathValidation;

  final TfArg<bool>? disableProfileValidation;

  final TfArg<bool>? disableReferenceTypeValidation;

  final TfArg<bool>? disableRequiredFieldValidation;

  final TfArg<List<String>>? enabledImplementationGuides;

  Map<String, Object?> encode() => {
    'disable_fhirpath_validation': ?disableFhirpathValidation?.toTfJson(),
    'disable_profile_validation': ?disableProfileValidation?.toTfJson(),
    'disable_reference_type_validation': ?disableReferenceTypeValidation
        ?.toTfJson(),
    'disable_required_field_validation': ?disableRequiredFieldValidation
        ?.toTfJson(),
    'enabled_implementation_guides': ?enabledImplementationGuides?.toTfJson(),
  };
}

/// Factory wrapper for `google_healthcare_fhir_store`.
///
/// A FhirStore is a datastore inside a Healthcare dataset that conforms to the
/// FHIR (https://www.hl7.org/fhir/STU3/) standard for Healthcare information
/// exchange
///
/// FHIR store inside a [GoogleHealthcareDataset] — stores FHIR resources
/// (DSTU2 / STU3 / R4). Empty stores are free; you are billed for stored
/// data and API operations.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: store id within the dataset (**ForceNew** — renaming recreates
///   the store and drops data).
/// - [dataset]: parent dataset id (`projects/…/locations/…/datasets/…`).
/// - [version]: FHIR specification version ([HealthcareFhirStoreVersion]).
final class GoogleHealthcareFhirStore extends Resource {
  static const String tfType = 'google_healthcare_fhir_store';

  GoogleHealthcareFhirStore({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> dataset,
    required TfArg<HealthcareFhirStoreVersion> version,
    TfArg<bool>? enableUpdateCreate,
    TfArg<bool>? disableReferentialIntegrity,
    TfArg<bool>? disableResourceVersioning,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? complexDataTypeReferenceParsing,
    TfArg<bool>? defaultSearchHandlingStrict,
    TfArg<bool>? enableHistoryImport,
    HealthcareFhirStoreNotificationConfig? notificationConfig,
    List<HealthcareFhirStoreNotificationConfigs>? notificationConfigs,
    List<HealthcareFhirStoreStreamConfigs>? streamConfigs,
    HealthcareFhirStoreValidationConfig? validationConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset,
           'version': version,
           'enable_update_create': ?enableUpdateCreate,
           'disable_referential_integrity': ?disableReferentialIntegrity,
           'disable_resource_versioning': ?disableResourceVersioning,
           'labels': ?labels,
           'deletion_policy': ?deletionPolicy,
           'complex_data_type_reference_parsing':
               ?complexDataTypeReferenceParsing,
           'default_search_handling_strict': ?defaultSearchHandlingStrict,
           'enable_history_import': ?enableHistoryImport,
           if (notificationConfig != null)
             'notification_config': TfArg.literal(notificationConfig.encode()),
           if (notificationConfigs != null)
             'notification_configs': TfArg.literal([
               for (final e in notificationConfigs) e.encode(),
             ]),
           if (streamConfigs != null)
             'stream_configs': TfArg.literal([
               for (final e in streamConfigs) e.encode(),
             ]),
           if (validationConfig != null)
             'validation_config': TfArg.literal(validationConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareFhirStoreSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleHealthcareFhirStore>`.
  RefTo<GoogleHealthcareFhirStore> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
