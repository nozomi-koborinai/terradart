// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket`.
const Set<String> _googleStorageBucketSensitive = <String>{};

/// Factory wrapper for `google_storage_bucket`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageBucket extends Data {
  static const String tfType = 'google_storage_bucket';

  DataGoogleStorageBucket({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `autoclass` attribute.
  TfRef<List<Map<String, Object?>>> get autoclass =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'autoclass');

  /// Reference to `cors` attribute.
  TfRef<List<Map<String, Object?>>> get cors =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'cors');

  /// Reference to `custom_placement_config` attribute.
  TfRef<List<Map<String, Object?>>> get customPlacementConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'custom_placement_config',
      );

  /// Reference to `default_event_based_hold` attribute.
  TfRef<bool> get defaultEventBasedHold =>
      TfRef.attribute<bool>(this, 'default_event_based_hold');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `enable_object_retention` attribute.
  TfRef<bool> get enableObjectRetention =>
      TfRef.attribute<bool>(this, 'enable_object_retention');

  /// Reference to `encryption` attribute.
  TfRef<List<Map<String, Object?>>> get encryption =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'encryption');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `hierarchical_namespace` attribute.
  TfRef<List<Map<String, Object?>>> get hierarchicalNamespace =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'hierarchical_namespace',
      );

  /// Reference to `ip_filter` attribute.
  TfRef<List<Map<String, Object?>>> get ipFilter =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ip_filter');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `lifecycle_rule` attribute.
  TfRef<List<Map<String, Object?>>> get lifecycleRule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'lifecycle_rule');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `logging` attribute.
  TfRef<List<Map<String, Object?>>> get logging =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'logging');

  /// Reference to `project_number` attribute.
  TfRef<num> get projectNumber => TfRef.attribute<num>(this, 'project_number');

  /// Reference to `public_access_prevention` attribute.
  TfRef<String> get publicAccessPrevention =>
      TfRef.attribute<String>(this, 'public_access_prevention');

  /// Reference to `requester_pays` attribute.
  TfRef<bool> get requesterPays =>
      TfRef.attribute<bool>(this, 'requester_pays');

  /// Reference to `retention_policy` attribute.
  TfRef<List<Map<String, Object?>>> get retentionPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'retention_policy');

  /// Reference to `rpo` attribute.
  TfRef<String> get rpo => TfRef.attribute<String>(this, 'rpo');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `soft_delete_policy` attribute.
  TfRef<List<Map<String, Object?>>> get softDeletePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'soft_delete_policy');

  /// Reference to `storage_class` attribute.
  TfRef<String> get storageClass =>
      TfRef.attribute<String>(this, 'storage_class');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `time_created` attribute.
  TfRef<String> get timeCreated =>
      TfRef.attribute<String>(this, 'time_created');

  /// Reference to `uniform_bucket_level_access` attribute.
  TfRef<bool> get uniformBucketLevelAccess =>
      TfRef.attribute<bool>(this, 'uniform_bucket_level_access');

  /// Reference to `updated` attribute.
  TfRef<String> get updated => TfRef.attribute<String>(this, 'updated');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `versioning` attribute.
  TfRef<List<Map<String, Object?>>> get versioning =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'versioning');

  /// Reference to `website` attribute.
  TfRef<List<Map<String, Object?>>> get website =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'website');
}
