// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_bigquery_dataset`.
const Set<String> _googleBigqueryDatasetSensitive = <String>{};

/// Factory wrapper for `google_bigquery_dataset`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBigqueryDataset extends Data {
  static const String tfType = 'google_bigquery_dataset';

  DataGoogleBigqueryDataset({
    required super.localName,
    required TfArg<String> datasetId,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_id': datasetId,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleBigqueryDatasetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access` attribute.
  TfRef<List<Map<String, Object?>>> get access =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'access');

  /// Reference to `creation_time` attribute.
  TfRef<num> get creationTime => TfRef.attribute<num>(this, 'creation_time');

  /// Reference to `default_collation` attribute.
  TfRef<String> get defaultCollation =>
      TfRef.attribute<String>(this, 'default_collation');

  /// Reference to `default_encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get defaultEncryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'default_encryption_configuration',
      );

  /// Reference to `default_partition_expiration_ms` attribute.
  TfRef<num> get defaultPartitionExpirationMs =>
      TfRef.attribute<num>(this, 'default_partition_expiration_ms');

  /// Reference to `default_table_expiration_ms` attribute.
  TfRef<num> get defaultTableExpirationMs =>
      TfRef.attribute<num>(this, 'default_table_expiration_ms');

  /// Reference to `delete_contents_on_destroy` attribute.
  TfRef<bool> get deleteContentsOnDestroy =>
      TfRef.attribute<bool>(this, 'delete_contents_on_destroy');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `external_catalog_dataset_options` attribute.
  TfRef<List<Map<String, Object?>>> get externalCatalogDatasetOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'external_catalog_dataset_options',
      );

  /// Reference to `external_dataset_reference` attribute.
  TfRef<List<Map<String, Object?>>> get externalDatasetReference =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'external_dataset_reference',
      );

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `is_case_insensitive` attribute.
  TfRef<bool> get isCaseInsensitive =>
      TfRef.attribute<bool>(this, 'is_case_insensitive');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `last_modified_time` attribute.
  TfRef<num> get lastModifiedTime =>
      TfRef.attribute<num>(this, 'last_modified_time');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_time_travel_hours` attribute.
  TfRef<String> get maxTimeTravelHours =>
      TfRef.attribute<String>(this, 'max_time_travel_hours');

  /// Reference to `resource_tags` attribute.
  TfRef<Map<String, String>> get resourceTags =>
      TfRef.attribute<Map<String, String>>(this, 'resource_tags');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `storage_billing_model` attribute.
  TfRef<String> get storageBillingModel =>
      TfRef.attribute<String>(this, 'storage_billing_model');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
