// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_instances`.
const Set<String> _awsCloudformationStackInstancesSensitive = <String>{};

/// Cloudformation Stack Instances Call enum for `call_as`.
enum CloudformationStackInstancesCallAs implements TerraformEnum {
  self('SELF'),
  delegatedAdmin('DELEGATED_ADMIN');

  const CloudformationStackInstancesCallAs(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `accounts`, `deployment_targets` on `aws_cloudformation_stack_instances`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.accounts(...)`.
sealed class CloudformationStackInstancesTargets {
  const CloudformationStackInstancesTargets();

  /// Sets `accounts`.
  const factory CloudformationStackInstancesTargets.accounts(
    TfArg<List<String>> accounts,
  ) = CloudformationStackInstancesTargetsAccounts;

  /// Sets `deployment_targets`.
  const factory CloudformationStackInstancesTargets.deploymentTargets(
    CloudformationStackInstancesDeploymentTargets deploymentTargets,
  ) = CloudformationStackInstancesDeploymentTargetsChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudformationStackInstancesTargets.accounts] choice: sets `accounts`.
final class CloudformationStackInstancesTargetsAccounts
    extends CloudformationStackInstancesTargets {
  const CloudformationStackInstancesTargetsAccounts(this.accounts);

  final TfArg<List<String>> accounts;

  @override
  String get blockKey => 'accounts';

  @override
  Map<String, Object?> encode() => {'accounts': accounts.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'accounts': accounts};
}

/// The [CloudformationStackInstancesTargets.deploymentTargets] choice: sets `deployment_targets`.
final class CloudformationStackInstancesDeploymentTargetsChoice
    extends CloudformationStackInstancesTargets {
  const CloudformationStackInstancesDeploymentTargetsChoice(
    this.deploymentTargets,
  );

  final CloudformationStackInstancesDeploymentTargets deploymentTargets;

  @override
  String get blockKey => 'deployment_targets';

  @override
  Map<String, Object?> encode() => {
    'deployment_targets': deploymentTargets.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'deployment_targets': TfArg.literal(deploymentTargets.encode()),
  };
}

/// Typed helper for the `deployment_targets` block of
/// `aws_cloudformation_stack_instances` (derived from provider schema).
@immutable
final class CloudformationStackInstancesDeploymentTargets {
  const CloudformationStackInstancesDeploymentTargets({
    this.accountFilterType,
    this.accounts,
    this.accountsUrl,
    this.organizationalUnitIds,
  });

  final TfArg<String>? accountFilterType;

  final TfArg<List<String>>? accounts;

  final TfArg<String>? accountsUrl;

  final TfArg<List<String>>? organizationalUnitIds;

  Map<String, Object?> encode() => {
    'account_filter_type': ?accountFilterType?.toTfJson(),
    'accounts': ?accounts?.toTfJson(),
    'accounts_url': ?accountsUrl?.toTfJson(),
    'organizational_unit_ids': ?organizationalUnitIds?.toTfJson(),
  };
}

/// Typed helper for the `operation_preferences` block of
/// `aws_cloudformation_stack_instances` (derived from provider schema).
@immutable
final class CloudformationStackInstancesOperationPreferences {
  const CloudformationStackInstancesOperationPreferences({
    this.concurrencyMode,
    this.failureTolerance,
    this.maxConcurrent,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final TfArg<CloudformationStackInstancesConcurrencyMode>? concurrencyMode;

  final CloudformationStackInstancesFailureTolerance? failureTolerance;

  final CloudformationStackInstancesMaxConcurrent? maxConcurrent;

  final TfArg<CloudformationStackInstancesRegionConcurrencyType>?
  regionConcurrencyType;

  final TfArg<List<String>>? regionOrder;

  Map<String, Object?> encode() => {
    'concurrency_mode': ?concurrencyMode?.toTfJson(),
    ...?failureTolerance?.encode(),
    ...?maxConcurrent?.encode(),
    'region_concurrency_type': ?regionConcurrencyType?.toTfJson(),
    'region_order': ?regionOrder?.toTfJson(),
  };
}

/// At most one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_instances`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.failureToleranceCount(...)`.
sealed class CloudformationStackInstancesFailureTolerance {
  const CloudformationStackInstancesFailureTolerance();

  /// Sets `failure_tolerance_count`.
  const factory CloudformationStackInstancesFailureTolerance.failureToleranceCount(
    TfArg<num> failureToleranceCount,
  ) = CloudformationStackInstancesFailureToleranceCount;

  /// Sets `failure_tolerance_percentage`.
  const factory CloudformationStackInstancesFailureTolerance.failureTolerancePercentage(
    TfArg<num> failureTolerancePercentage,
  ) = CloudformationStackInstancesFailureTolerancePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudformationStackInstancesFailureTolerance.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class CloudformationStackInstancesFailureToleranceCount
    extends CloudformationStackInstancesFailureTolerance {
  const CloudformationStackInstancesFailureToleranceCount(
    this.failureToleranceCount,
  );

  final TfArg<num> failureToleranceCount;

  @override
  String get blockKey => 'failure_tolerance_count';

  @override
  Map<String, Object?> encode() => {
    'failure_tolerance_count': failureToleranceCount.toTfJson(),
  };
}

/// The [CloudformationStackInstancesFailureTolerance.failureTolerancePercentage] choice: sets `failure_tolerance_percentage`.
final class CloudformationStackInstancesFailureTolerancePercentage
    extends CloudformationStackInstancesFailureTolerance {
  const CloudformationStackInstancesFailureTolerancePercentage(
    this.failureTolerancePercentage,
  );

  final TfArg<num> failureTolerancePercentage;

  @override
  String get blockKey => 'failure_tolerance_percentage';

  @override
  Map<String, Object?> encode() => {
    'failure_tolerance_percentage': failureTolerancePercentage.toTfJson(),
  };
}

/// At most one of `max_concurrent_count`, `max_concurrent_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_instances`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxConcurrentCount(...)`.
sealed class CloudformationStackInstancesMaxConcurrent {
  const CloudformationStackInstancesMaxConcurrent();

  /// Sets `max_concurrent_count`.
  const factory CloudformationStackInstancesMaxConcurrent.maxConcurrentCount(
    TfArg<num> maxConcurrentCount,
  ) = CloudformationStackInstancesMaxConcurrentCount;

  /// Sets `max_concurrent_percentage`.
  const factory CloudformationStackInstancesMaxConcurrent.maxConcurrentPercentage(
    TfArg<num> maxConcurrentPercentage,
  ) = CloudformationStackInstancesMaxConcurrentPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudformationStackInstancesMaxConcurrent.maxConcurrentCount] choice: sets `max_concurrent_count`.
final class CloudformationStackInstancesMaxConcurrentCount
    extends CloudformationStackInstancesMaxConcurrent {
  const CloudformationStackInstancesMaxConcurrentCount(this.maxConcurrentCount);

  final TfArg<num> maxConcurrentCount;

  @override
  String get blockKey => 'max_concurrent_count';

  @override
  Map<String, Object?> encode() => {
    'max_concurrent_count': maxConcurrentCount.toTfJson(),
  };
}

/// The [CloudformationStackInstancesMaxConcurrent.maxConcurrentPercentage] choice: sets `max_concurrent_percentage`.
final class CloudformationStackInstancesMaxConcurrentPercentage
    extends CloudformationStackInstancesMaxConcurrent {
  const CloudformationStackInstancesMaxConcurrentPercentage(
    this.maxConcurrentPercentage,
  );

  final TfArg<num> maxConcurrentPercentage;

  @override
  String get blockKey => 'max_concurrent_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_concurrent_percentage': maxConcurrentPercentage.toTfJson(),
  };
}

/// `concurrency_mode` — derived from the provider schema description.
enum CloudformationStackInstancesConcurrencyMode implements TerraformEnum {
  strictFailureTolerance('STRICT_FAILURE_TOLERANCE'),
  softFailureTolerance('SOFT_FAILURE_TOLERANCE');

  const CloudformationStackInstancesConcurrencyMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `region_concurrency_type` — derived from the provider schema description.
enum CloudformationStackInstancesRegionConcurrencyType
    implements TerraformEnum {
  sequential('SEQUENTIAL'),
  parallel('PARALLEL');

  const CloudformationStackInstancesRegionConcurrencyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudformation_stack_instances`.
final class AwsCloudformationStackInstances extends Resource {
  static const String tfType = 'aws_cloudformation_stack_instances';

  AwsCloudformationStackInstances({
    required super.localName,
    CloudformationStackInstancesTargets? targets,
    TfArg<CloudformationStackInstancesCallAs>? callAs,
    TfArg<Map<String, String>>? parameterOverrides,
    TfArg<String>? region,
    TfArg<List<String>>? regions,
    TfArg<bool>? retainStacks,
    required TfArg<String> stackSetName,
    CloudformationStackInstancesOperationPreferences? operationPreferences,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?targets?.argMap,
           'call_as': ?callAs,
           'parameter_overrides': ?parameterOverrides,
           'region': ?region,
           'regions': ?regions,
           'retain_stacks': ?retainStacks,
           'stack_set_name': stackSetName,
           if (operationPreferences != null)
             'operation_preferences': TfArg.literal(
               operationPreferences.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationStackInstancesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudformationStackInstances>`.
  RefTo<AwsCloudformationStackInstances> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `stack_instance_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get stackInstanceSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'stack_instance_summaries',
      );

  /// Reference to `stack_set_id` attribute.
  TfRef<String> get stackSetId => TfRef.attribute<String>(this, 'stack_set_id');

  /// Reference to `accounts` attribute.
  TfRef<List<String>> get accounts =>
      TfRef.attribute<List<String>>(this, 'accounts');

  /// Reference to `call_as` attribute.
  TfRef<String> get callAs => TfRef.attribute<String>(this, 'call_as');

  /// Reference to `parameter_overrides` attribute.
  TfRef<Map<String, String>> get parameterOverrides =>
      TfRef.attribute<Map<String, String>>(this, 'parameter_overrides');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `regions` attribute.
  TfRef<List<String>> get regions =>
      TfRef.attribute<List<String>>(this, 'regions');

  /// Reference to `retain_stacks` attribute.
  TfRef<bool> get retainStacks => TfRef.attribute<bool>(this, 'retain_stacks');

  /// Reference to `stack_set_name` attribute.
  TfRef<String> get stackSetName =>
      TfRef.attribute<String>(this, 'stack_set_name');
}
