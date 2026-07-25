// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_aws_node_pool`.
const Set<String> _googleContainerAwsNodePoolSensitive = <String>{};

/// Typed helper for the `autoscaling` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolAutoscaling {
  const ContainerAwsNodePoolAutoscaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  final TfArg<num> maxNodeCount;

  final TfArg<num> minNodeCount;

  Map<String, Object?> encode() => {
    'max_node_count': maxNodeCount.toTfJson(),
    'min_node_count': minNodeCount.toTfJson(),
  };
}

/// Typed helper for the `config` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfig {
  const ContainerAwsNodePoolConfig({
    required this.iamInstanceProfile,
    this.instanceType,
    this.labels,
    this.securityGroupIds,
    this.tags,
    this.autoscalingMetricsCollection,
    required this.configEncryption,
    this.proxyConfig,
    this.rootVolume,
    this.sshConfig,
    this.taints,
  });

  final TfArg<String> iamInstanceProfile;

  final TfArg<String>? instanceType;

  final TfArg<Map<String, String>>? labels;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<Map<String, String>>? tags;

  final ContainerAwsNodePoolConfigAutoscalingMetricsCollection?
  autoscalingMetricsCollection;

  final ContainerAwsNodePoolConfigConfigEncryption configEncryption;

  final ContainerAwsNodePoolConfigProxyConfig? proxyConfig;

  final ContainerAwsNodePoolConfigRootVolume? rootVolume;

  final ContainerAwsNodePoolConfigSshConfig? sshConfig;

  final List<ContainerAwsNodePoolConfigTaints>? taints;

  Map<String, Object?> encode() => {
    'iam_instance_profile': iamInstanceProfile.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    if (labels != null) 'labels': labels!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (autoscalingMetricsCollection != null)
      'autoscaling_metrics_collection': autoscalingMetricsCollection!.encode(),
    'config_encryption': configEncryption.encode(),
    if (proxyConfig != null) 'proxy_config': proxyConfig!.encode(),
    if (rootVolume != null) 'root_volume': rootVolume!.encode(),
    if (sshConfig != null) 'ssh_config': sshConfig!.encode(),
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `config.autoscaling_metrics_collection` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigAutoscalingMetricsCollection {
  const ContainerAwsNodePoolConfigAutoscalingMetricsCollection({
    required this.granularity,
    this.metrics,
  });

  final TfArg<String> granularity;

  final TfArg<List<Object?>>? metrics;

  Map<String, Object?> encode() => {
    'granularity': granularity.toTfJson(),
    if (metrics != null) 'metrics': metrics!.toTfJson(),
  };
}

/// Typed helper for the `config.config_encryption` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigConfigEncryption {
  const ContainerAwsNodePoolConfigConfigEncryption({required this.kmsKeyArn});

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `config.proxy_config` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigProxyConfig {
  const ContainerAwsNodePoolConfigProxyConfig({
    required this.secretArn,
    required this.secretVersion,
  });

  final TfArg<String> secretArn;

  final TfArg<String> secretVersion;

  Map<String, Object?> encode() => {
    'secret_arn': secretArn.toTfJson(),
    'secret_version': secretVersion.toTfJson(),
  };
}

/// Typed helper for the `config.root_volume` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigRootVolume {
  const ContainerAwsNodePoolConfigRootVolume({
    this.iops,
    this.kmsKeyArn,
    this.sizeGib,
    this.throughput,
    this.volumeType,
  });

  final TfArg<num>? iops;

  final TfArg<String>? kmsKeyArn;

  final TfArg<num>? sizeGib;

  final TfArg<num>? throughput;

  final TfArg<ContainerAwsNodePoolConfigRootVolumeVolumeType>? volumeType;

  Map<String, Object?> encode() => {
    if (iops != null) 'iops': iops!.toTfJson(),
    if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn!.toTfJson(),
    if (sizeGib != null) 'size_gib': sizeGib!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
enum ContainerAwsNodePoolConfigRootVolumeVolumeType implements TerraformEnum {
  volumeTypeUnspecified('VOLUME_TYPE_UNSPECIFIED'),
  gp2('GP2'),
  gp3('GP3');

  const ContainerAwsNodePoolConfigRootVolumeVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `config.ssh_config` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigSshConfig {
  const ContainerAwsNodePoolConfigSshConfig({required this.ec2KeyPair});

  final TfArg<String> ec2KeyPair;

  Map<String, Object?> encode() => {'ec2_key_pair': ec2KeyPair.toTfJson()};
}

/// Typed helper for the `config.taints` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigTaints {
  const ContainerAwsNodePoolConfigTaints({
    required this.effect,
    required this.key,
    required this.value,
  });

  final TfArg<ContainerAwsNodePoolConfigTaintsEffect> effect;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
enum ContainerAwsNodePoolConfigTaintsEffect implements TerraformEnum {
  effectUnspecified('EFFECT_UNSPECIFIED'),
  noSchedule('NO_SCHEDULE'),
  preferNoSchedule('PREFER_NO_SCHEDULE'),
  noExecute('NO_EXECUTE');

  const ContainerAwsNodePoolConfigTaintsEffect(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `kubelet_config` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolKubeletConfig {
  const ContainerAwsNodePoolKubeletConfig({
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.podPidsLimit,
  });

  final TfArg<bool>? cpuCfsQuota;

  final TfArg<String>? cpuCfsQuotaPeriod;

  final TfArg<String>? cpuManagerPolicy;

  final TfArg<num>? podPidsLimit;

  Map<String, Object?> encode() => {
    if (cpuCfsQuota != null) 'cpu_cfs_quota': cpuCfsQuota!.toTfJson(),
    if (cpuCfsQuotaPeriod != null)
      'cpu_cfs_quota_period': cpuCfsQuotaPeriod!.toTfJson(),
    if (cpuManagerPolicy != null)
      'cpu_manager_policy': cpuManagerPolicy!.toTfJson(),
    if (podPidsLimit != null) 'pod_pids_limit': podPidsLimit!.toTfJson(),
  };
}

/// Typed helper for the `management` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolManagement {
  const ContainerAwsNodePoolManagement({this.autoRepair});

  final TfArg<bool>? autoRepair;

  Map<String, Object?> encode() => {
    if (autoRepair != null) 'auto_repair': autoRepair!.toTfJson(),
  };
}

/// Typed helper for the `max_pods_constraint` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolMaxPodsConstraint {
  const ContainerAwsNodePoolMaxPodsConstraint({required this.maxPodsPerNode});

  final TfArg<num> maxPodsPerNode;

  Map<String, Object?> encode() => {
    'max_pods_per_node': maxPodsPerNode.toTfJson(),
  };
}

/// Typed helper for the `update_settings` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolUpdateSettings {
  const ContainerAwsNodePoolUpdateSettings({this.surgeSettings});

  final ContainerAwsNodePoolUpdateSettingsSurgeSettings? surgeSettings;

  Map<String, Object?> encode() => {
    if (surgeSettings != null) 'surge_settings': surgeSettings!.encode(),
  };
}

/// Typed helper for the `update_settings.surge_settings` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolUpdateSettingsSurgeSettings {
  const ContainerAwsNodePoolUpdateSettingsSurgeSettings({
    this.maxSurge,
    this.maxUnavailable,
  });

  final TfArg<num>? maxSurge;

  final TfArg<num>? maxUnavailable;

  Map<String, Object?> encode() => {
    if (maxSurge != null) 'max_surge': maxSurge!.toTfJson(),
    if (maxUnavailable != null) 'max_unavailable': maxUnavailable!.toTfJson(),
  };
}

/// Factory wrapper for `google_container_aws_node_pool`.
///
/// GKE on AWS **node pool** — EC2-backed workers for a
/// [GoogleContainerAwsCluster].
///
/// **Cost / apply:** Same GKE Enterprise Multicloud (AWS) management fee
/// surface (SKU `24A0-2EF1-8ACB` **$0.00822/h** on `9186-F79E-3871`) plus
/// AWS EC2 for nodes. Requires never_apply parent cluster / AWS account —
/// debt-only. **Never** wire into apply-smoke.
final class GoogleContainerAwsNodePool extends Resource {
  static const String tfType = 'google_container_aws_node_pool';

  GoogleContainerAwsNodePool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> cluster,
    required TfArg<String> subnetId,
    required TfArg<String> version,
    required ContainerAwsNodePoolAutoscaling autoscaling,
    required ContainerAwsNodePoolConfig config,
    required ContainerAwsNodePoolMaxPodsConstraint maxPodsConstraint,
    ContainerAwsNodePoolManagement? management,
    ContainerAwsNodePoolKubeletConfig? kubeletConfig,
    ContainerAwsNodePoolUpdateSettings? updateSettings,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'cluster': cluster,
           'subnet_id': subnetId,
           'version': version,
           'autoscaling': TfArg.literal(autoscaling.encode()),
           'config': TfArg.literal(config.encode()),
           'max_pods_constraint': TfArg.literal(maxPodsConstraint.encode()),
           if (management != null)
             'management': TfArg.literal(management.encode()),
           if (kubeletConfig != null)
             'kubelet_config': TfArg.literal(kubeletConfig.encode()),
           if (updateSettings != null)
             'update_settings': TfArg.literal(updateSettings.encode()),
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAwsNodePoolSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
