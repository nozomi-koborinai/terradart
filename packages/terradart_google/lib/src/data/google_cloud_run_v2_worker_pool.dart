// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_worker_pool`.
const Set<String> _googleCloudRunV2WorkerPoolSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_worker_pool`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleCloudRunV2WorkerPool extends Data {
  static const String tfType = 'google_cloud_run_v2_worker_pool';

  DataGoogleCloudRunV2WorkerPool({
    required super.localName,
    TfArg<String>? location,
    required TfArg<String> name,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           'name': name,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2WorkerPoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `binary_authorization` attribute.
  TfRef<List<Map<String, Object?>>> get binaryAuthorization =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'binary_authorization');

  /// Reference to `client` attribute.
  TfRef<String> get client => TfRef.attribute<String>(this, 'client');

  /// Reference to `client_version` attribute.
  TfRef<String> get clientVersion =>
      TfRef.attribute<String>(this, 'client_version');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `custom_audiences` attribute.
  TfRef<List<String>> get customAudiences =>
      TfRef.attribute<List<String>>(this, 'custom_audiences');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `expire_time` attribute.
  TfRef<String> get expireTime => TfRef.attribute<String>(this, 'expire_time');

  /// Reference to `generation` attribute.
  TfRef<String> get generation => TfRef.attribute<String>(this, 'generation');

  /// Reference to `instance_split_statuses` attribute.
  TfRef<List<Map<String, Object?>>> get instanceSplitStatuses =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_split_statuses',
      );

  /// Reference to `instance_splits` attribute.
  TfRef<List<Map<String, Object?>>> get instanceSplits =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'instance_splits');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `last_modifier` attribute.
  TfRef<String> get lastModifier =>
      TfRef.attribute<String>(this, 'last_modifier');

  /// Reference to `latest_created_revision` attribute.
  TfRef<String> get latestCreatedRevision =>
      TfRef.attribute<String>(this, 'latest_created_revision');

  /// Reference to `latest_ready_revision` attribute.
  TfRef<String> get latestReadyRevision =>
      TfRef.attribute<String>(this, 'latest_ready_revision');

  /// Reference to `launch_stage` attribute.
  TfRef<String> get launchStage =>
      TfRef.attribute<String>(this, 'launch_stage');

  /// Reference to `observed_generation` attribute.
  TfRef<String> get observedGeneration =>
      TfRef.attribute<String>(this, 'observed_generation');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `scaling` attribute.
  TfRef<List<Map<String, Object?>>> get scaling =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scaling');

  /// Reference to `template` attribute.
  TfRef<List<Map<String, Object?>>> get template =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'template');

  /// Reference to `terminal_condition` attribute.
  TfRef<List<Map<String, Object?>>> get terminalCondition =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'terminal_condition');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
