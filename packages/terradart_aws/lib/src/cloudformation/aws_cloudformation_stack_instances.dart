// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_instances`.
const Set<String> _awsCloudformationStackInstancesSensitive = <String>{};

/// Cloudformation Stack Instances Call enum for `call_as`.
extension type const CloudformationStackInstancesCallAs._(TfArg<String> _)
    implements TfArg<String> {
  CloudformationStackInstancesCallAs.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackInstancesCallAs.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackInstancesCallAs.arg(TfArg<String> arg) : this._(arg);

  static const self = CloudformationStackInstancesCallAs._(
    TfArgLiteral('SELF'),
  );
  static const delegatedAdmin = CloudformationStackInstancesCallAs._(
    TfArgLiteral('DELEGATED_ADMIN'),
  );

  static const List<CloudformationStackInstancesCallAs> values = [
    self,
    delegatedAdmin,
  ];
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudformationStackInstancesTargets.accounts] choice: sets `accounts`.
final class CloudformationStackInstancesTargetsAccounts
    extends CloudformationStackInstancesTargets {
  const CloudformationStackInstancesTargetsAccounts(this.accounts);

  final TfArg<List<String>> accounts;

  @internal
  @override
  String get blockKey => 'accounts';

  @internal
  @override
  Map<String, Object?> encode() => {'accounts': accounts.toTfJson()};

  @internal
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

  @internal
  @override
  String get blockKey => 'deployment_targets';

  @internal
  @override
  Map<String, Object?> encode() => {
    'deployment_targets': deploymentTargets.encode(),
  };

  @internal
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

  @internal
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

  final CloudformationStackInstancesConcurrencyMode? concurrencyMode;

  final CloudformationStackInstancesFailureTolerance? failureTolerance;

  final CloudformationStackInstancesMaxConcurrent? maxConcurrent;

  final CloudformationStackInstancesRegionConcurrencyType?
  regionConcurrencyType;

  final TfArg<List<String>>? regionOrder;

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudformationStackInstancesFailureTolerance.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class CloudformationStackInstancesFailureToleranceCount
    extends CloudformationStackInstancesFailureTolerance {
  const CloudformationStackInstancesFailureToleranceCount(
    this.failureToleranceCount,
  );

  final TfArg<num> failureToleranceCount;

  @internal
  @override
  String get blockKey => 'failure_tolerance_count';

  @internal
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

  @internal
  @override
  String get blockKey => 'failure_tolerance_percentage';

  @internal
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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudformationStackInstancesMaxConcurrent.maxConcurrentCount] choice: sets `max_concurrent_count`.
final class CloudformationStackInstancesMaxConcurrentCount
    extends CloudformationStackInstancesMaxConcurrent {
  const CloudformationStackInstancesMaxConcurrentCount(this.maxConcurrentCount);

  final TfArg<num> maxConcurrentCount;

  @internal
  @override
  String get blockKey => 'max_concurrent_count';

  @internal
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

  @internal
  @override
  String get blockKey => 'max_concurrent_percentage';

  @internal
  @override
  Map<String, Object?> encode() => {
    'max_concurrent_percentage': maxConcurrentPercentage.toTfJson(),
  };
}

/// `concurrency_mode` — derived from the provider schema description.
extension type const CloudformationStackInstancesConcurrencyMode._(
  TfArg<String> _
) implements TfArg<String> {
  CloudformationStackInstancesConcurrencyMode.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackInstancesConcurrencyMode.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackInstancesConcurrencyMode.arg(TfArg<String> arg)
    : this._(arg);

  static const strictFailureTolerance =
      CloudformationStackInstancesConcurrencyMode._(
        TfArgLiteral('STRICT_FAILURE_TOLERANCE'),
      );
  static const softFailureTolerance =
      CloudformationStackInstancesConcurrencyMode._(
        TfArgLiteral('SOFT_FAILURE_TOLERANCE'),
      );

  static const List<CloudformationStackInstancesConcurrencyMode> values = [
    strictFailureTolerance,
    softFailureTolerance,
  ];
}

/// `region_concurrency_type` — derived from the provider schema description.
extension type const CloudformationStackInstancesRegionConcurrencyType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudformationStackInstancesRegionConcurrencyType.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackInstancesRegionConcurrencyType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackInstancesRegionConcurrencyType.arg(TfArg<String> arg)
    : this._(arg);

  static const sequential = CloudformationStackInstancesRegionConcurrencyType._(
    TfArgLiteral('SEQUENTIAL'),
  );
  static const parallel = CloudformationStackInstancesRegionConcurrencyType._(
    TfArgLiteral('PARALLEL'),
  );

  static const List<CloudformationStackInstancesRegionConcurrencyType> values =
      [sequential, parallel];
}

/// Factory wrapper for `aws_cloudformation_stack_instances`.
final class AwsCloudformationStackInstances extends Resource {
  static const String tfType = 'aws_cloudformation_stack_instances';

  AwsCloudformationStackInstances(
    super.localName, {
    CloudformationStackInstancesTargets? targets,
    CloudformationStackInstancesCallAs? callAs,
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
