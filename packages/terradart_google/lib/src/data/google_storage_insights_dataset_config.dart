// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_insights_dataset_config`.
const Set<String> _googleStorageInsightsDatasetConfigSensitive = <String>{};

/// Factory wrapper for `google_storage_insights_dataset_config`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageInsightsDatasetConfig extends Data {
  static const String tfType = 'google_storage_insights_dataset_config';

  DataGoogleStorageInsightsDatasetConfig({
    required super.localName,
    required TfArg<String> datasetConfigId,
    required TfArg<String> location,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dataset_config_id': datasetConfigId,
           'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageInsightsDatasetConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activity_data_retention_period_days` attribute.
  TfRef<num> get activityDataRetentionPeriodDays =>
      TfRef.attribute<num>(this, 'activity_data_retention_period_days');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `dataset_config_state` attribute.
  TfRef<String> get datasetConfigState =>
      TfRef.attribute<String>(this, 'dataset_config_state');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `exclude_cloud_storage_buckets` attribute.
  TfRef<List<Map<String, Object?>>> get excludeCloudStorageBuckets =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'exclude_cloud_storage_buckets',
      );

  /// Reference to `exclude_cloud_storage_locations` attribute.
  TfRef<List<Map<String, Object?>>> get excludeCloudStorageLocations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'exclude_cloud_storage_locations',
      );

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `include_cloud_storage_buckets` attribute.
  TfRef<List<Map<String, Object?>>> get includeCloudStorageBuckets =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'include_cloud_storage_buckets',
      );

  /// Reference to `include_cloud_storage_locations` attribute.
  TfRef<List<Map<String, Object?>>> get includeCloudStorageLocations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'include_cloud_storage_locations',
      );

  /// Reference to `include_newly_created_buckets` attribute.
  TfRef<bool> get includeNewlyCreatedBuckets =>
      TfRef.attribute<bool>(this, 'include_newly_created_buckets');

  /// Reference to `link` attribute.
  TfRef<List<Map<String, Object?>>> get link =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'link');

  /// Reference to `link_dataset` attribute.
  TfRef<bool> get linkDataset => TfRef.attribute<bool>(this, 'link_dataset');

  /// Reference to `organization_number` attribute.
  TfRef<String> get organizationNumber =>
      TfRef.attribute<String>(this, 'organization_number');

  /// Reference to `organization_scope` attribute.
  TfRef<bool> get organizationScope =>
      TfRef.attribute<bool>(this, 'organization_scope');

  /// Reference to `retention_period_days` attribute.
  TfRef<num> get retentionPeriodDays =>
      TfRef.attribute<num>(this, 'retention_period_days');

  /// Reference to `source_folders` attribute.
  TfRef<List<Map<String, Object?>>> get sourceFolders =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_folders');

  /// Reference to `source_projects` attribute.
  TfRef<List<Map<String, Object?>>> get sourceProjects =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'source_projects');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
