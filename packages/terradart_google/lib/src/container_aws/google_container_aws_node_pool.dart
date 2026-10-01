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

  final TfArg<List<String>>? securityGroupIds;

  final TfArg<Map<String, String>>? tags;

  final ContainerAwsNodePoolAutoscalingMetricsCollection?
  autoscalingMetricsCollection;

  final ContainerAwsNodePoolConfigEncryption configEncryption;

  final ContainerAwsNodePoolProxyConfig? proxyConfig;

  final ContainerAwsNodePoolRootVolume? rootVolume;

  final ContainerAwsNodePoolSshConfig? sshConfig;

  final List<ContainerAwsNodePoolTaints>? taints;

  Map<String, Object?> encode() => {
    'iam_instance_profile': iamInstanceProfile.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'labels': ?labels?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'autoscaling_metrics_collection': ?autoscalingMetricsCollection?.encode(),
    'config_encryption': configEncryption.encode(),
    'proxy_config': ?proxyConfig?.encode(),
    'root_volume': ?rootVolume?.encode(),
    'ssh_config': ?sshConfig?.encode(),
    if (taints != null) 'taints': [for (final e in taints!) e.encode()],
  };
}

/// Typed helper for the `config.autoscaling_metrics_collection` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolAutoscalingMetricsCollection {
  const ContainerAwsNodePoolAutoscalingMetricsCollection({
    required this.granularity,
    this.metrics,
  });

  final TfArg<String> granularity;

  final TfArg<List<String>>? metrics;

  Map<String, Object?> encode() => {
    'granularity': granularity.toTfJson(),
    'metrics': ?metrics?.toTfJson(),
  };
}

/// Typed helper for the `config.config_encryption` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolConfigEncryption {
  const ContainerAwsNodePoolConfigEncryption({required this.kmsKeyArn});

  final TfArg<String> kmsKeyArn;

  Map<String, Object?> encode() => {'kms_key_arn': kmsKeyArn.toTfJson()};
}

/// Typed helper for the `config.proxy_config` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolProxyConfig {
  const ContainerAwsNodePoolProxyConfig({
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
final class ContainerAwsNodePoolRootVolume {
  const ContainerAwsNodePoolRootVolume({
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

  final ContainerAwsNodePoolVolumeType? volumeType;

  Map<String, Object?> encode() => {
    'iops': ?iops?.toTfJson(),
    'kms_key_arn': ?kmsKeyArn?.toTfJson(),
    'size_gib': ?sizeGib?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
extension type const ContainerAwsNodePoolVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAwsNodePoolVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAwsNodePoolVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAwsNodePoolVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const volumeTypeUnspecified = ContainerAwsNodePoolVolumeType._(
    TfArgLiteral('VOLUME_TYPE_UNSPECIFIED'),
  );
  static const gp2 = ContainerAwsNodePoolVolumeType._(TfArgLiteral('GP2'));
  static const gp3 = ContainerAwsNodePoolVolumeType._(TfArgLiteral('GP3'));

  static const List<ContainerAwsNodePoolVolumeType> values = [
    volumeTypeUnspecified,
    gp2,
    gp3,
  ];
}

/// Typed helper for the `config.ssh_config` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolSshConfig {
  const ContainerAwsNodePoolSshConfig({required this.ec2KeyPair});

  final TfArg<String> ec2KeyPair;

  Map<String, Object?> encode() => {'ec2_key_pair': ec2KeyPair.toTfJson()};
}

/// Typed helper for the `config.taints` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolTaints {
  const ContainerAwsNodePoolTaints({
    required this.effect,
    required this.key,
    required this.value,
  });

  final ContainerAwsNodePoolEffect effect;

  final TfArg<String> key;

  final TfArg<String> value;

  Map<String, Object?> encode() => {
    'effect': effect.toTfJson(),
    'key': key.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `effect` — derived from the provider schema description.
extension type const ContainerAwsNodePoolEffect._(TfArg<String> _)
    implements TfArg<String> {
  ContainerAwsNodePoolEffect.variable(String name)
    : this._(TfArg.variable(name));
  ContainerAwsNodePoolEffect.expression(String template)
    : this._(TfArg.expression(template));
  const ContainerAwsNodePoolEffect.arg(TfArg<String> arg) : this._(arg);

  static const effectUnspecified = ContainerAwsNodePoolEffect._(
    TfArgLiteral('EFFECT_UNSPECIFIED'),
  );
  static const noSchedule = ContainerAwsNodePoolEffect._(
    TfArgLiteral('NO_SCHEDULE'),
  );
  static const preferNoSchedule = ContainerAwsNodePoolEffect._(
    TfArgLiteral('PREFER_NO_SCHEDULE'),
  );
  static const noExecute = ContainerAwsNodePoolEffect._(
    TfArgLiteral('NO_EXECUTE'),
  );

  static const List<ContainerAwsNodePoolEffect> values = [
    effectUnspecified,
    noSchedule,
    preferNoSchedule,
    noExecute,
  ];
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
    'cpu_cfs_quota': ?cpuCfsQuota?.toTfJson(),
    'cpu_cfs_quota_period': ?cpuCfsQuotaPeriod?.toTfJson(),
    'cpu_manager_policy': ?cpuManagerPolicy?.toTfJson(),
    'pod_pids_limit': ?podPidsLimit?.toTfJson(),
  };
}

/// Typed helper for the `management` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolManagement {
  const ContainerAwsNodePoolManagement({this.autoRepair});

  final TfArg<bool>? autoRepair;

  Map<String, Object?> encode() => {'auto_repair': ?autoRepair?.toTfJson()};
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

  final ContainerAwsNodePoolSurgeSettings? surgeSettings;

  Map<String, Object?> encode() => {'surge_settings': ?surgeSettings?.encode()};
}

/// Typed helper for the `update_settings.surge_settings` block of
/// `google_container_aws_node_pool` (derived from provider schema).
@immutable
final class ContainerAwsNodePoolSurgeSettings {
  const ContainerAwsNodePoolSurgeSettings({this.maxSurge, this.maxUnavailable});

  final TfArg<num>? maxSurge;

  final TfArg<num>? maxUnavailable;

  Map<String, Object?> encode() => {
    'max_surge': ?maxSurge?.toTfJson(),
    'max_unavailable': ?maxUnavailable?.toTfJson(),
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

  GoogleContainerAwsNodePool(
    super.localName, {
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
    super.provider,
    super.timeouts,
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
           'annotations': ?annotations,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerAwsNodePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleContainerAwsNodePool>`.
  RefTo<GoogleContainerAwsNodePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `cluster` attribute.
  TfRef<String> get cluster => TfRef.attribute<String>(this, 'cluster');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
