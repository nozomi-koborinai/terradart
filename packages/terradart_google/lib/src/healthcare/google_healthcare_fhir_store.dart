// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String> pubsubTopic;

  Map<String, Object?> encode() => {'pubsub_topic': pubsubTopic.toTfJson()};
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

  final TfArg<String> pubsubTopic;

  final TfArg<bool>? sendFullResource;

  final TfArg<bool>? sendPreviousResourceOnDelete;

  Map<String, Object?> encode() => {
    'pubsub_topic': pubsubTopic.toTfJson(),
    if (sendFullResource != null)
      'send_full_resource': sendFullResource!.toTfJson(),
    if (sendPreviousResourceOnDelete != null)
      'send_previous_resource_on_delete': sendPreviousResourceOnDelete!
          .toTfJson(),
  };
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

  final TfArg<List<Object?>>? enabledImplementationGuides;

  Map<String, Object?> encode() => {
    if (disableFhirpathValidation != null)
      'disable_fhirpath_validation': disableFhirpathValidation!.toTfJson(),
    if (disableProfileValidation != null)
      'disable_profile_validation': disableProfileValidation!.toTfJson(),
    if (disableReferenceTypeValidation != null)
      'disable_reference_type_validation': disableReferenceTypeValidation!
          .toTfJson(),
    if (disableRequiredFieldValidation != null)
      'disable_required_field_validation': disableRequiredFieldValidation!
          .toTfJson(),
    if (enabledImplementationGuides != null)
      'enabled_implementation_guides': enabledImplementationGuides!.toTfJson(),
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'dataset': dataset,
           'version': version,
           if (enableUpdateCreate != null)
             'enable_update_create': enableUpdateCreate,
           if (disableReferentialIntegrity != null)
             'disable_referential_integrity': disableReferentialIntegrity,
           if (disableResourceVersioning != null)
             'disable_resource_versioning': disableResourceVersioning,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleHealthcareFhirStoreSensitive;

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
