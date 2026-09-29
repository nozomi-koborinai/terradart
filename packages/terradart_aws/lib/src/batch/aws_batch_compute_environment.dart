// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_batch_compute_environment`.
const Set<String> _awsBatchComputeEnvironmentSensitive = <String>{};

/// Batch Compute Environment enum for `state`.
enum BatchComputeEnvironmentState implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const BatchComputeEnvironmentState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Batch Compute Environment enum for `type`.
enum BatchComputeEnvironmentType implements TerraformEnum {
  managed('MANAGED'),
  unmanaged('UNMANAGED');

  const BatchComputeEnvironmentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `name`, `name_prefix` on `aws_batch_compute_environment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class BatchComputeEnvironmentNameOrNamePrefix {
  const BatchComputeEnvironmentNameOrNamePrefix();

  /// Sets `name`.
  const factory BatchComputeEnvironmentNameOrNamePrefix.name(
    TfArg<String> name,
  ) = BatchComputeEnvironmentNameOrNamePrefixName;

  /// Sets `name_prefix`.
  const factory BatchComputeEnvironmentNameOrNamePrefix.namePrefix(
    TfArg<String> namePrefix,
  ) = BatchComputeEnvironmentNameOrNamePrefixNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BatchComputeEnvironmentNameOrNamePrefix.name] choice: sets `name`.
final class BatchComputeEnvironmentNameOrNamePrefixName
    extends BatchComputeEnvironmentNameOrNamePrefix {
  const BatchComputeEnvironmentNameOrNamePrefixName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [BatchComputeEnvironmentNameOrNamePrefix.namePrefix] choice: sets `name_prefix`.
final class BatchComputeEnvironmentNameOrNamePrefixNamePrefix
    extends BatchComputeEnvironmentNameOrNamePrefix {
  const BatchComputeEnvironmentNameOrNamePrefixNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

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

  final TfArg<BatchComputeEnvironmentComputeResourcesAllocationStrategy>?
  allocationStrategy;

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

  final TfArg<BatchComputeEnvironmentComputeResourcesType> type;

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

/// `allocation_strategy` — derived from the provider schema description.
enum BatchComputeEnvironmentComputeResourcesAllocationStrategy
    implements TerraformEnum {
  bestFit('BEST_FIT'),
  bestFitProgressive('BEST_FIT_PROGRESSIVE'),
  bestFitProgressiveOrdered('BEST_FIT_PROGRESSIVE_ORDERED'),
  spotCapacityOptimized('SPOT_CAPACITY_OPTIMIZED'),
  spotPriceCapacityOptimized('SPOT_PRICE_CAPACITY_OPTIMIZED'),
  spotCapacityOptimizedPrioritized('SPOT_CAPACITY_OPTIMIZED_PRIORITIZED');

  const BatchComputeEnvironmentComputeResourcesAllocationStrategy(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum BatchComputeEnvironmentComputeResourcesType implements TerraformEnum {
  ec2('EC2'),
  spot('SPOT'),
  fargate('FARGATE'),
  fargateSpot('FARGATE_SPOT'),
  ecsManagedInstances('ECS_MANAGED_INSTANCES');

  const BatchComputeEnvironmentComputeResourcesType(this.terraformValue);
  @override
  final String terraformValue;
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
    this.launchTemplateIdOrLaunchTemplateName,
    this.version,
  });

  final BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName?
  launchTemplateIdOrLaunchTemplateName;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...?launchTemplateIdOrLaunchTemplateName?.encode(),
    if (version != null) 'version': version!.toTfJson(),
  };
}

/// At most one of `launch_template_id`, `launch_template_name` on the `compute_resources.launch_template` block of `aws_batch_compute_environment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.launchTemplateId(...)`.
sealed class BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName();

  /// Sets `launch_template_id`.
  const factory BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName.launchTemplateId(
    TfArg<String> launchTemplateId,
  ) = BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateNameLaunchTemplateId;

  /// Sets `launch_template_name`.
  const factory BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName.launchTemplateName(
    TfArg<String> launchTemplateName,
  ) = BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateNameLaunchTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName.launchTemplateId] choice: sets `launch_template_id`.
final class BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateNameLaunchTemplateId
    extends
        BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateNameLaunchTemplateId(
    this.launchTemplateId,
  );

  final TfArg<String> launchTemplateId;

  @override
  String get blockKey => 'launch_template_id';

  @override
  Map<String, Object?> encode() => {
    'launch_template_id': launchTemplateId.toTfJson(),
  };
}

/// The [BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName.launchTemplateName] choice: sets `launch_template_name`.
final class BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateNameLaunchTemplateName
    extends
        BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateName {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplateLaunchTemplateIdOrLaunchTemplateNameLaunchTemplateName(
    this.launchTemplateName,
  );

  final TfArg<String> launchTemplateName;

  @override
  String get blockKey => 'launch_template_name';

  @override
  Map<String, Object?> encode() => {
    'launch_template_name': launchTemplateName.toTfJson(),
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
    BatchComputeEnvironmentNameOrNamePrefix? nameOrNamePrefix,
    TfArg<String>? region,
    TfArg<String>? serviceRole,
    TfArg<BatchComputeEnvironmentState>? state,
    TfArg<Map<String, String>>? tags,
    required TfArg<BatchComputeEnvironmentType> type,
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
           ...?nameOrNamePrefix?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBatchComputeEnvironment>`.
  RefTo<AwsBatchComputeEnvironment> get ref => RefTo.of(this);

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
