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
extension type const BatchComputeEnvironmentState._(TfArg<String> _)
    implements TfArg<String> {
  BatchComputeEnvironmentState.variable(String name)
    : this._(TfArg.variable(name));
  BatchComputeEnvironmentState.expression(String template)
    : this._(TfArg.expression(template));
  const BatchComputeEnvironmentState.arg(TfArg<String> arg) : this._(arg);

  static const enabled = BatchComputeEnvironmentState._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = BatchComputeEnvironmentState._(
    TfArgLiteral('DISABLED'),
  );

  static const List<BatchComputeEnvironmentState> values = [enabled, disabled];
}

/// Batch Compute Environment enum for `type`.
extension type const BatchComputeEnvironmentType._(TfArg<String> _)
    implements TfArg<String> {
  BatchComputeEnvironmentType.variable(String name)
    : this._(TfArg.variable(name));
  BatchComputeEnvironmentType.expression(String template)
    : this._(TfArg.expression(template));
  const BatchComputeEnvironmentType.arg(TfArg<String> arg) : this._(arg);

  static const managed = BatchComputeEnvironmentType._(TfArgLiteral('MANAGED'));
  static const unmanaged = BatchComputeEnvironmentType._(
    TfArgLiteral('UNMANAGED'),
  );

  static const List<BatchComputeEnvironmentType> values = [managed, unmanaged];
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

  final BatchComputeEnvironmentAllocationStrategy? allocationStrategy;

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

  final BatchComputeEnvironmentComputeResourcesType type;

  final List<BatchComputeEnvironmentEc2Configuration>? ec2Configuration;

  final BatchComputeEnvironmentLaunchTemplate? launchTemplate;

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
extension type const BatchComputeEnvironmentAllocationStrategy._(
  TfArg<String> _
) implements TfArg<String> {
  BatchComputeEnvironmentAllocationStrategy.variable(String name)
    : this._(TfArg.variable(name));
  BatchComputeEnvironmentAllocationStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const BatchComputeEnvironmentAllocationStrategy.arg(TfArg<String> arg)
    : this._(arg);

  static const bestFit = BatchComputeEnvironmentAllocationStrategy._(
    TfArgLiteral('BEST_FIT'),
  );
  static const bestFitProgressive = BatchComputeEnvironmentAllocationStrategy._(
    TfArgLiteral('BEST_FIT_PROGRESSIVE'),
  );
  static const bestFitProgressiveOrdered =
      BatchComputeEnvironmentAllocationStrategy._(
        TfArgLiteral('BEST_FIT_PROGRESSIVE_ORDERED'),
      );
  static const spotCapacityOptimized =
      BatchComputeEnvironmentAllocationStrategy._(
        TfArgLiteral('SPOT_CAPACITY_OPTIMIZED'),
      );
  static const spotPriceCapacityOptimized =
      BatchComputeEnvironmentAllocationStrategy._(
        TfArgLiteral('SPOT_PRICE_CAPACITY_OPTIMIZED'),
      );
  static const spotCapacityOptimizedPrioritized =
      BatchComputeEnvironmentAllocationStrategy._(
        TfArgLiteral('SPOT_CAPACITY_OPTIMIZED_PRIORITIZED'),
      );

  static const List<BatchComputeEnvironmentAllocationStrategy> values = [
    bestFit,
    bestFitProgressive,
    bestFitProgressiveOrdered,
    spotCapacityOptimized,
    spotPriceCapacityOptimized,
    spotCapacityOptimizedPrioritized,
  ];
}

/// `type` — derived from the provider schema description.
extension type const BatchComputeEnvironmentComputeResourcesType._(
  TfArg<String> _
) implements TfArg<String> {
  BatchComputeEnvironmentComputeResourcesType.variable(String name)
    : this._(TfArg.variable(name));
  BatchComputeEnvironmentComputeResourcesType.expression(String template)
    : this._(TfArg.expression(template));
  const BatchComputeEnvironmentComputeResourcesType.arg(TfArg<String> arg)
    : this._(arg);

  static const ec2 = BatchComputeEnvironmentComputeResourcesType._(
    TfArgLiteral('EC2'),
  );
  static const spot = BatchComputeEnvironmentComputeResourcesType._(
    TfArgLiteral('SPOT'),
  );
  static const fargate = BatchComputeEnvironmentComputeResourcesType._(
    TfArgLiteral('FARGATE'),
  );
  static const fargateSpot = BatchComputeEnvironmentComputeResourcesType._(
    TfArgLiteral('FARGATE_SPOT'),
  );
  static const ecsManagedInstances =
      BatchComputeEnvironmentComputeResourcesType._(
        TfArgLiteral('ECS_MANAGED_INSTANCES'),
      );

  static const List<BatchComputeEnvironmentComputeResourcesType> values = [
    ec2,
    spot,
    fargate,
    fargateSpot,
    ecsManagedInstances,
  ];
}

/// Typed helper for the `compute_resources.ec2_configuration` block of
/// `aws_batch_compute_environment` (derived from provider schema).
@immutable
final class BatchComputeEnvironmentEc2Configuration {
  const BatchComputeEnvironmentEc2Configuration({
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
final class BatchComputeEnvironmentLaunchTemplate {
  const BatchComputeEnvironmentLaunchTemplate({this.identifier, this.version});

  final BatchComputeEnvironmentIdentifier? identifier;

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
sealed class BatchComputeEnvironmentIdentifier {
  const BatchComputeEnvironmentIdentifier();

  /// Sets `launch_template_id`.
  const factory BatchComputeEnvironmentIdentifier.launchTemplateId(
    TfArg<String> launchTemplateId,
  ) = BatchComputeEnvironmentIdentifierLaunchTemplateId;

  /// Sets `launch_template_name`.
  const factory BatchComputeEnvironmentIdentifier.launchTemplateName(
    TfArg<String> launchTemplateName,
  ) = BatchComputeEnvironmentIdentifierLaunchTemplateName;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [BatchComputeEnvironmentIdentifier.launchTemplateId] choice: sets `launch_template_id`.
final class BatchComputeEnvironmentIdentifierLaunchTemplateId
    extends BatchComputeEnvironmentIdentifier {
  const BatchComputeEnvironmentIdentifierLaunchTemplateId(
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

/// The [BatchComputeEnvironmentIdentifier.launchTemplateName] choice: sets `launch_template_name`.
final class BatchComputeEnvironmentIdentifierLaunchTemplateName
    extends BatchComputeEnvironmentIdentifier {
  const BatchComputeEnvironmentIdentifierLaunchTemplateName(
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

  AwsBatchComputeEnvironment(
    super.localName, {
    BatchComputeEnvironmentName? name,
    TfArg<String>? region,
    RefTo<AwsIamRole>? serviceRole,
    BatchComputeEnvironmentState? state,
    TfArg<Map<String, String>>? tags,
    required BatchComputeEnvironmentType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get namePrefix => TfRef.attribute<String>(this, 'name_prefix');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_role` attribute.
  TfRef<String> get serviceRole =>
      TfRef.attribute<String>(this, 'service_role');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
