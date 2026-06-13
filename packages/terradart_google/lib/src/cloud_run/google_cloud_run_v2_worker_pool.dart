// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/cloud_run/google_cloud_run_v2_service.dart'
    show EmptyDirMedium, ScalingMode;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_v2_worker_pool`.
const Set<String> _googleCloudRunV2WorkerPoolSensitive = <String>{};

/// Launch stage for `google_cloud_run_v2_worker_pool.launch_stage`. Shares
/// Terraform values with [LaunchStage] / [CloudRunV2JobLaunchStage] but uses
/// a worker-pool-specific name so `cloud_run.dart` can export all three.
enum CloudRunV2WorkerPoolLaunchStage implements TerraformEnum {
  unimplemented('UNIMPLEMENTED'),
  prelaunch('PRELAUNCH'),
  earlyAccess('EARLY_ACCESS'),
  alpha('ALPHA'),
  beta('BETA'),
  ga('GA'),
  deprecatedStage('DEPRECATED');

  const CloudRunV2WorkerPoolLaunchStage(this.terraformValue);
  @override
  final String terraformValue;
}

enum CloudRunV2WorkerPoolInstanceSplitType implements TerraformEnum {
  latest('INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST'),
  revision('INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION');

  const CloudRunV2WorkerPoolInstanceSplitType(this.terraformValue);
  @override
  final String terraformValue;
}

enum CloudRunV2WorkerPoolEncryptionKeyRevocationAction
    implements TerraformEnum {
  preventNew('PREVENT_NEW'),
  shutdown('SHUTDOWN');

  const CloudRunV2WorkerPoolEncryptionKeyRevocationAction(this.terraformValue);
  @override
  final String terraformValue;
}

@immutable
class CloudRunV2WorkerPoolInstanceSplit {
  const CloudRunV2WorkerPoolInstanceSplit({
    this.percent,
    this.revision,
    this.type,
  });

  final TfArg<int>? percent;
  final TfArg<String>? revision;
  final CloudRunV2WorkerPoolInstanceSplitType? type;

  Map<String, Object?> toArgMap() => {
    if (percent != null) 'percent': percent!.toTfJson(),
    if (revision != null) 'revision': revision!.toTfJson(),
    if (type != null) 'type': type!.terraformValue,
  };
}

@immutable
class CloudRunV2WorkerPoolScaling {
  const CloudRunV2WorkerPoolScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  final TfArg<int>? manualInstanceCount;
  final TfArg<int>? maxInstanceCount;
  final TfArg<int>? minInstanceCount;
  final ScalingMode? scalingMode;

  Map<String, Object?> encode() => {
    if (manualInstanceCount != null)
      'manual_instance_count': manualInstanceCount!.toTfJson(),
    if (maxInstanceCount != null)
      'max_instance_count': maxInstanceCount!.toTfJson(),
    if (minInstanceCount != null)
      'min_instance_count': minInstanceCount!.toTfJson(),
    if (scalingMode != null) 'scaling_mode': scalingMode!.terraformValue,
  };
}

@immutable
class CloudRunV2WorkerPoolEmptyDirVolume {
  const CloudRunV2WorkerPoolEmptyDirVolume({this.medium, this.sizeLimit});

  final EmptyDirMedium? medium;
  final TfArg<String>? sizeLimit;

  Map<String, Object?> encode() => {
    if (medium != null) 'medium': medium!.terraformValue,
    if (sizeLimit != null) 'size_limit': sizeLimit!.toTfJson(),
  };
}

@immutable
class CloudRunV2WorkerPoolVolume {
  const CloudRunV2WorkerPoolVolume({required this.name, this.emptyDir});

  final TfArg<String> name;
  final CloudRunV2WorkerPoolEmptyDirVolume? emptyDir;

  Map<String, Object?> toArgMap() => {
    'name': name.toTfJson(),
    if (emptyDir != null) 'empty_dir': [emptyDir!.encode()],
  };
}

@immutable
class CloudRunV2WorkerPoolTemplate {
  const CloudRunV2WorkerPoolTemplate({
    this.containers,
    this.encryptionKeyRevocationAction,
    this.volumes,
  });

  /// Container specs — pass literal maps when full container typing is not needed.
  final List<Map<String, Object?>>? containers;
  final CloudRunV2WorkerPoolEncryptionKeyRevocationAction?
  encryptionKeyRevocationAction;
  final List<CloudRunV2WorkerPoolVolume>? volumes;

  Map<String, Object?> encode() => {
    if (containers != null) 'containers': containers,
    if (encryptionKeyRevocationAction != null)
      'encryption_key_revocation_action':
          encryptionKeyRevocationAction!.terraformValue,
    if (volumes != null) 'volumes': volumes!.map((v) => v.toArgMap()).toList(),
  };
}

/// Factory wrapper for `google_cloud_run_v2_worker_pool`.
///
/// WorkerPool acts as a top-level container that manages a set of
/// configurations and revision templates which implement a pull-based workload.
/// WorkerPool exists to provide a singular abstraction which can be access
/// controlled, reasoned about, and which encapsulates software lifecycle
/// decisions such as rollout policy and team resource ownership.
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
    TfArg<CloudRunV2WorkerPoolLaunchStage>? launchStage,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? binaryAuthorization,
    List<CloudRunV2WorkerPoolInstanceSplit>? instanceSplits,
    CloudRunV2WorkerPoolScaling? scaling,
    CloudRunV2WorkerPoolTemplate? template,
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
           if (instanceSplits != null)
             'instance_splits': TfArg.literal(
               instanceSplits.map((s) => s.toArgMap()).toList(),
             ),
           if (scaling != null) 'scaling': TfArg.literal([scaling.encode()]),
           if (template != null) 'template': TfArg.literal([template.encode()]),
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
