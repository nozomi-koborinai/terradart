// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../iam/aws_iam_role.dart' show AwsIamRole;

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
sealed class BatchComputeEnvironmentName {
  const BatchComputeEnvironmentName();

  /// Sets `name`.
  const factory BatchComputeEnvironmentName.name(TfArg<String> name) =
      BatchComputeEnvironmentNameChoice;

  /// Sets `name_prefix`.
  const factory BatchComputeEnvironmentName.namePrefix(
    TfArg<String> namePrefix,
  ) = BatchComputeEnvironmentNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [BatchComputeEnvironmentName.name] choice: sets `name`.
final class BatchComputeEnvironmentNameChoice
    extends BatchComputeEnvironmentName {
  const BatchComputeEnvironmentNameChoice(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [BatchComputeEnvironmentName.namePrefix] choice: sets `name_prefix`.
final class BatchComputeEnvironmentNamePrefix
    extends BatchComputeEnvironmentName {
  const BatchComputeEnvironmentNamePrefix(this.namePrefix);

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

  final TfArg<List<String>>? instanceType;

  final TfArg<num> maxVcpus;

  final TfArg<num>? minVcpus;

  final TfArg<String>? placementGroup;

  final TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds;

  final TfArg<String>? spotIamFleetRole;

  final TfArg<List<RefTo<AwsSubnet>>> subnets;

  final TfArg<Map<String, String>>? tags;

  final TfArg<BatchComputeEnvironmentComputeResourcesType> type;

  final List<BatchComputeEnvironmentComputeResourcesEc2Configuration>?
  ec2Configuration;

  final BatchComputeEnvironmentComputeResourcesLaunchTemplate? launchTemplate;

  Map<String, Object?> encode() => {
    'allocation_strategy': ?allocationStrategy?.toTfJson(),
    'bid_percentage': ?bidPercentage?.toTfJson(),
    'desired_vcpus': ?desiredVcpus?.toTfJson(),
    'ec2_key_pair': ?ec2KeyPair?.toTfJson(),
    'image_id': ?imageId?.toTfJson(),
    'instance_role': ?instanceRole?.toTfJson(),
    'instance_type': ?instanceType?.toTfJson(),
    'max_vcpus': maxVcpus.toTfJson(),
    'min_vcpus': ?minVcpus?.toTfJson(),
    'placement_group': ?placementGroup?.toTfJson(),
    'security_group_ids': ?securityGroupIds?.encodeAs('id').toTfJson(),
    'spot_iam_fleet_role': ?spotIamFleetRole?.toTfJson(),
    'subnets': subnets.encodeAs('id').toTfJson(),
    'tags': ?tags?.toTfJson(),
    'type': type.toTfJson(),
    if (ec2Configuration != null)
      'ec2_configuration': [for (final e in ec2Configuration!) e.encode()],
    'launch_template': ?launchTemplate?.encode(),
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
    'image_id_override': ?imageIdOverride?.toTfJson(),
    'image_kubernetes_version': ?imageKubernetesVersion?.toTfJson(),
    'image_type': ?imageType?.toTfJson(),
  };
}

/// Typed helper for the `compute_resources.launch_template` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentComputeResourcesLaunchTemplate {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplate({
    this.identifier,
    this.version,
  });

  final BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier?
  identifier;

  final TfArg<String>? version;

  Map<String, Object?> encode() => {
    ...?identifier?.encode(),
    'version': ?version?.toTfJson(),
  };
}

/// At most one of `launch_template_id`, `launch_template_name` on the `compute_resources.launch_template` block of `aws_batch_compute_environment`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.launchTemplateId(...)`.
sealed class BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier();

  /// Sets `launch_template_id`.
  const factory BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier.launchTemplateId(
    TfArg<String> launchTemplateId,
  ) = BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifierLaunchTemplateId;

  /// Sets `launch_template_name`.
  const factory BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier.launchTemplateName(
    TfArg<String> launchTemplateName,
  ) = BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifierLaunchTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier.launchTemplateId] choice: sets `launch_template_id`.
final class BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifierLaunchTemplateId
    extends BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifierLaunchTemplateId(
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

/// The [BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier.launchTemplateName] choice: sets `launch_template_name`.
final class BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifierLaunchTemplateName
    extends BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifier {
  const BatchComputeEnvironmentComputeResourcesLaunchTemplateIdentifierLaunchTemplateName(
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
    'job_execution_timeout_minutes': ?jobExecutionTimeoutMinutes?.toTfJson(),
    'terminate_jobs_on_update': ?terminateJobsOnUpdate?.toTfJson(),
  };
}

/// Factory wrapper for `aws_batch_compute_environment`.
final class AwsBatchComputeEnvironment extends Resource {
  static const String tfType = 'aws_batch_compute_environment';

  AwsBatchComputeEnvironment({
    required super.localName,
    BatchComputeEnvironmentName? name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? serviceRole,
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
           ...?name?.argMap,
           'region': ?region,
           'service_role': ?serviceRole?.encodeAs('arn'),
           'state': ?state,
           'tags': ?tags,
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

  /// Reference to `name_prefix` attribute.
  TfRef<String> get namePrefixRef =>
      TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRoleRef =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `state` attribute.
  TfRef<String> get stateRef => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get typeRef => TfRef.attribute<String>(this, 'type');
}
