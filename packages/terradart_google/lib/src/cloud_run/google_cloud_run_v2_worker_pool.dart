// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_worker_pool`.
const Set<String> _googleCloudRunV2WorkerPoolSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_worker_pool`.
final class GoogleCloudRunV2WorkerPool extends Resource {
  static const String tfType = 'google_cloud_run_v2_worker_pool';

  GoogleCloudRunV2WorkerPool({
    required super.localName,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? client,
    TfArg<String>? clientVersion,
    TfArg<List<String>>? customAudiences,
    TfArg<bool>? deletionProtection,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? launchStage,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? binaryAuthorization,
    TfArg<List<Map<String, dynamic>>>? instanceSplits,
    TfArg<Map<String, dynamic>>? scaling,
    required TfArg<Map<String, dynamic>> template,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (annotations != null) 'annotations': annotations,
           if (client != null) 'client': client,
           if (clientVersion != null) 'client_version': clientVersion,
           if (customAudiences != null) 'custom_audiences': customAudiences,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (launchStage != null) 'launch_stage': launchStage,
           'location': location,
           'name': name,
           if (project != null) 'project': project,
           if (binaryAuthorization != null)
             'binary_authorization': binaryAuthorization,
           if (instanceSplits != null) 'instance_splits': instanceSplits,
           if (scaling != null) 'scaling': scaling,
           'template': template,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunV2WorkerPoolSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `conditions` attribute.
  TfRef<List<Map<String, Object?>>> get conditions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'conditions');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `creator` attribute.
  TfRef<String> get creator => TfRef.attribute<String>(this, 'creator');

  /// Reference to `delete_time` attribute.
  TfRef<String> get deleteTime => TfRef.attribute<String>(this, 'delete_time');

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

  /// Reference to `last_modifier` attribute.
  TfRef<String> get lastModifier =>
      TfRef.attribute<String>(this, 'last_modifier');

  /// Reference to `latest_created_revision` attribute.
  TfRef<String> get latestCreatedRevision =>
      TfRef.attribute<String>(this, 'latest_created_revision');

  /// Reference to `latest_ready_revision` attribute.
  TfRef<String> get latestReadyRevision =>
      TfRef.attribute<String>(this, 'latest_ready_revision');

  /// Reference to `observed_generation` attribute.
  TfRef<String> get observedGeneration =>
      TfRef.attribute<String>(this, 'observed_generation');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

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
