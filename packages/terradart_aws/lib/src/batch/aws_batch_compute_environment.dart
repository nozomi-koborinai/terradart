// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_compute_environment`.
const Set<String> _awsBatchComputeEnvironmentSensitive = <String>{};

/// Typed helper for the `compute_resources` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentComputeResources {
  const BatchComputeEnvironmentComputeResources({
    this.allocationStrategy,
    this.bidPercentage,
    this.desiredVcpus,
    this.ec2KeyPair,
    this.imageId,
    this.instanceRole,
    this.instanceType,
    required this.maxVcpus,
    this.minVcpus,
    this.placementGroup,
    this.securityGroupIds,
    this.spotIamFleetRole,
    required this.subnets,
    this.tags,
    required this.type,
    this.ec2Configuration,
    this.launchTemplate,
  });

  final TfArg<String>? allocationStrategy;

  final TfArg<num>? bidPercentage;

  final TfArg<num>? desiredVcpus;

  final TfArg<String>? ec2KeyPair;

  final TfArg<String>? imageId;

  final TfArg<String>? instanceRole;

  final TfArg<List<Object?>>? instanceType;

  final TfArg<num> maxVcpus;

  final TfArg<num>? minVcpus;

  final TfArg<String>? placementGroup;

  final TfArg<List<Object?>>? securityGroupIds;

  final TfArg<String>? spotIamFleetRole;

  final TfArg<List<Object?>> subnets;

  final TfArg<Map<String, String>>? tags;

  final TfArg<String> type;

  final List<BatchComputeEnvironmentComputeResourcesEc2Configuration>?
  ec2Configuration;

  final BatchComputeEnvironmentComputeResourcesLaunchTemplate? launchTemplate;

  Map<String, Object?> encode() => {
    if (allocationStrategy != null)
      'allocation_strategy': allocationStrategy!.toTfJson(),
    if (bidPercentage != null) 'bid_percentage': bidPercentage!.toTfJson(),
    if (desiredVcpus != null) 'desired_vcpus': desiredVcpus!.toTfJson(),
    if (ec2KeyPair != null) 'ec2_key_pair': ec2KeyPair!.toTfJson(),
    if (imageId != null) 'image_id': imageId!.toTfJson(),
    if (instanceRole != null) 'instance_role': instanceRole!.toTfJson(),
    if (instanceType != null) 'instance_type': instanceType!.toTfJson(),
    'max_vcpus': maxVcpus.toTfJson(),
    if (minVcpus != null) 'min_vcpus': minVcpus!.toTfJson(),
    if (placementGroup != null) 'placement_group': placementGroup!.toTfJson(),
    if (securityGroupIds != null)
      'security_group_ids': securityGroupIds!.toTfJson(),
    if (spotIamFleetRole != null)
      'spot_iam_fleet_role': spotIamFleetRole!.toTfJson(),
    'subnets': subnets.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    'type': type.toTfJson(),
    if (ec2Configuration != null)
      'ec2_configuration': [for (final e in ec2Configuration!) e.encode()],
    if (launchTemplate != null) 'launch_template': launchTemplate!.encode(),
  };
}

/// Typed helper for the `compute_resources.ec2_configuration` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentComputeResourcesEc2Configuration {
  const BatchComputeEnvironmentComputeResourcesEc2Configuration({
    this.imageIdOverride,
    this.imageKubernetesVersion,
    this.imageType,
  });

  final TfArg<String>? imageIdOverride;

  final TfArg<String>? imageKubernetesVersion;

  final TfArg<String>? imageType;

  Map<String, Object?> encode() => {
    if (imageIdOverride != null)
      'image_id_override': imageIdOverride!.toTfJson(),
    if (imageKubernetesVersion != null)
      'image_kubernetes_version': imageKubernetesVersion!.toTfJson(),
    if (imageType != null) 'image_type': imageType!.toTfJson(),
  };
}

/// Typed helper for the `compute_resources.launch_template` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentComputeResourcesLaunchTemplate {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplate({
    this.launchTemplateId,
    this.launchTemplateName,
    this.version,
  });

  final TfArg<String>? launchTemplateId;

  final TfArg<String>? launchTemplateName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    if (launchTemplateId != null)
      'launch_template_id': launchTemplateId!.toTfJson(),
    if (launchTemplateName != null)
      'launch_template_name': launchTemplateName!.toTfJson(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// Typed helper for the `eks_configuration` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentEksConfiguration {
  const BatchComputeEnvironmentEksConfiguration({
    required this.eksClusterArn,
    required this.kubernetesNamespace,
  });

  final TfArg<String> eksClusterArn;

  final TfArg<String> kubernetesNamespace;

  Map<String, Object?> encode() => {
    'eks_cluster_arn': eksClusterArn.toTfJson(),
    'kubernetes_namespace': kubernetesNamespace.toTfJson(),
  };
}

/// Typed helper for the `update_policy` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentUpdatePolicy {
  const BatchComputeEnvironmentUpdatePolicy({
    this.jobExecutionTimeoutMinutes,
    this.terminateJobsOnUpdate,
  });

  final TfArg<num>? jobExecutionTimeoutMinutes;

  final TfArg<bool>? terminateJobsOnUpdate;

  Map<String, Object?> encode() => {
    if (jobExecutionTimeoutMinutes != null)
      'job_execution_timeout_minutes': jobExecutionTimeoutMinutes!.toTfJson(),
    if (terminateJobsOnUpdate != null)
      'terminate_jobs_on_update': terminateJobsOnUpdate!.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_compute_environment`.
final class AwsBatchComputeEnvironment extends Resource {
  static const String tfType = 'aws_batch_compute_environment';

  AwsBatchComputeEnvironment({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? region,
    TfArg<String>? serviceRole,
    TfArg<String>? state,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> type,
    BatchComputeEnvironmentComputeResources? computeResources,
    BatchComputeEnvironmentEksConfiguration? eksConfiguration,
    BatchComputeEnvironmentUpdatePolicy? updatePolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (region != null) 'region': region,
           if (serviceRole != null) 'service_role': serviceRole,
           if (state != null) 'state': state,
           if (tags != null) 'tags': tags,
           'type': type,
           if (computeResources != null)
             'compute_resources': TfArg.literal(computeResources.encode()),
           if (eksConfiguration != null)
             'eks_configuration': TfArg.literal(eksConfiguration.encode()),
           if (updatePolicy != null)
             'update_policy': TfArg.literal(updatePolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBatchComputeEnvironmentSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ecs_cluster_arn` attribute.
  TfRef<String> get ecsClusterArn =>
      TfRef.attribute<String>(this, 'ecs_cluster_arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_reason` attribute.
  TfRef<String> get statusReason =>
      TfRef.attribute<String>(this, 'status_reason');
}
