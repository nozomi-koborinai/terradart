// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_set_instance`.
const Set<String> _awsCloudformationStackSetInstanceSensitive = <String>{};

/// Cloudformation Stack Set Instance Call enum for `call_as`.
enum CloudformationStackSetInstanceCallAs implements TerraformEnum {
  self('SELF'),
  delegatedAdmin('DELEGATED_ADMIN');

  const CloudformationStackSetInstanceCallAs(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `account_id`, `deployment_targets` on `aws_cloudformation_stack_set_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.accountId(...)`.
sealed class CloudformationStackSetInstanceTarget {
  const CloudformationStackSetInstanceTarget();

  /// Sets `account_id`.
  const factory CloudformationStackSetInstanceTarget.accountId(
    TfArg<String> accountId,
  ) = CloudformationStackSetInstanceTargetAccountId;

  /// Sets `deployment_targets`.
  const factory CloudformationStackSetInstanceTarget.deploymentTargets(
    CloudformationStackSetInstanceDeploymentTargets deploymentTargets,
  ) = CloudformationStackSetInstanceTargetDeploymentTargets;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudformationStackSetInstanceTarget.accountId] choice: sets `account_id`.
final class CloudformationStackSetInstanceTargetAccountId
    extends CloudformationStackSetInstanceTarget {
  const CloudformationStackSetInstanceTargetAccountId(this.accountId);

  final TfArg<String> accountId;

  @override
  String get blockKey => 'account_id';

  @override
  Map<String, Object?> encode() => {'account_id': accountId.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'account_id': accountId};
}

/// The [CloudformationStackSetInstanceTarget.deploymentTargets] choice: sets `deployment_targets`.
final class CloudformationStackSetInstanceTargetDeploymentTargets
    extends CloudformationStackSetInstanceTarget {
  const CloudformationStackSetInstanceTargetDeploymentTargets(
    this.deploymentTargets,
  );

  final CloudformationStackSetInstanceDeploymentTargets deploymentTargets;

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

/// At most one of `region`, `stack_set_instance_region` on `aws_cloudformation_stack_set_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.region(...)`.
sealed class CloudformationStackSetInstanceTargetRegion {
  const CloudformationStackSetInstanceTargetRegion();

  /// Sets `region`.
  const factory CloudformationStackSetInstanceTargetRegion.region(
    TfArg<String> region,
  ) = CloudformationStackSetInstanceTargetRegionChoice;

  /// Sets `stack_set_instance_region`.
  const factory CloudformationStackSetInstanceTargetRegion.stackSetInstanceRegion(
    TfArg<String> stackSetInstanceRegion,
  ) = CloudformationStackSetInstanceTargetRegionStackSetInstanceRegion;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudformationStackSetInstanceTargetRegion.region] choice: sets `region`.
final class CloudformationStackSetInstanceTargetRegionChoice
    extends CloudformationStackSetInstanceTargetRegion {
  const CloudformationStackSetInstanceTargetRegionChoice(this.region);

  final TfArg<String> region;

  @override
  String get blockKey => 'region';

  @override
  Map<String, Object?> encode() => {'region': region.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'region': region};
}

/// The [CloudformationStackSetInstanceTargetRegion.stackSetInstanceRegion] choice: sets `stack_set_instance_region`.
final class CloudformationStackSetInstanceTargetRegionStackSetInstanceRegion
    extends CloudformationStackSetInstanceTargetRegion {
  const CloudformationStackSetInstanceTargetRegionStackSetInstanceRegion(
    this.stackSetInstanceRegion,
  );

  final TfArg<String> stackSetInstanceRegion;

  @override
  String get blockKey => 'stack_set_instance_region';

  @override
  Map<String, Object?> encode() => {
    'stack_set_instance_region': stackSetInstanceRegion.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'stack_set_instance_region': stackSetInstanceRegion,
  };
}

/// Typed helper for the `deployment_targets` block of
/// `aws_cloudformation_stack_set_instance` (derived from provider schema).
@immutable
final class CloudformationStackSetInstanceDeploymentTargets {
  const CloudformationStackSetInstanceDeploymentTargets({
    this.accountFilterType,
    this.accounts,
    this.accountsUrl,
    this.organizationalUnitIds,
  });

  final TfArg<String>? accountFilterType;

  final TfArg<List<Object?>>? accounts;

  final TfArg<String>? accountsUrl;

  final TfArg<List<Object?>>? organizationalUnitIds;

  Map<String, Object?> encode() => {
    'account_filter_type': ?accountFilterType?.toTfJson(),
    'accounts': ?accounts?.toTfJson(),
    'accounts_url': ?accountsUrl?.toTfJson(),
    'organizational_unit_ids': ?organizationalUnitIds?.toTfJson(),
  };
}

/// Typed helper for the `operation_preferences` block of
/// `aws_cloudformation_stack_set_instance` (derived from provider schema).
@immutable
final class CloudformationStackSetInstanceOperationPreferences {
  const CloudformationStackSetInstanceOperationPreferences({
    this.concurrencyMode,
    this.failureTolerance,
    this.maxConcurrent,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final TfArg<
    CloudformationStackSetInstanceOperationPreferencesConcurrencyMode
  >?
  concurrencyMode;

  final CloudformationStackSetInstanceOperationPreferencesFailureTolerance?
  failureTolerance;

  final CloudformationStackSetInstanceOperationPreferencesMaxConcurrent?
  maxConcurrent;

  final TfArg<
    CloudformationStackSetInstanceOperationPreferencesRegionConcurrencyType
  >?
  regionConcurrencyType;

  final TfArg<List<Object?>>? regionOrder;

  Map<String, Object?> encode() => {
    'concurrency_mode': ?concurrencyMode?.toTfJson(),
    ...?failureTolerance?.encode(),
    ...?maxConcurrent?.encode(),
    'region_concurrency_type': ?regionConcurrencyType?.toTfJson(),
    'region_order': ?regionOrder?.toTfJson(),
  };
}

/// At most one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.failureToleranceCount(...)`.
sealed class CloudformationStackSetInstanceOperationPreferencesFailureTolerance {
  const CloudformationStackSetInstanceOperationPreferencesFailureTolerance();

  /// Sets `failure_tolerance_count`.
  const factory CloudformationStackSetInstanceOperationPreferencesFailureTolerance.failureToleranceCount(
    TfArg<num> failureToleranceCount,
  ) = CloudformationStackSetInstanceOperationPreferencesFailureToleranceCount;

  /// Sets `failure_tolerance_percentage`.
  const factory CloudformationStackSetInstanceOperationPreferencesFailureTolerance.failureTolerancePercentage(
    TfArg<num> failureTolerancePercentage,
  ) = CloudformationStackSetInstanceOperationPreferencesFailureTolerancePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudformationStackSetInstanceOperationPreferencesFailureTolerance.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class CloudformationStackSetInstanceOperationPreferencesFailureToleranceCount
    extends CloudformationStackSetInstanceOperationPreferencesFailureTolerance {
  const CloudformationStackSetInstanceOperationPreferencesFailureToleranceCount(
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

/// The [CloudformationStackSetInstanceOperationPreferencesFailureTolerance.failureTolerancePercentage] choice: sets `failure_tolerance_percentage`.
final class CloudformationStackSetInstanceOperationPreferencesFailureTolerancePercentage
    extends CloudformationStackSetInstanceOperationPreferencesFailureTolerance {
  const CloudformationStackSetInstanceOperationPreferencesFailureTolerancePercentage(
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

/// At most one of `max_concurrent_count`, `max_concurrent_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set_instance`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxConcurrentCount(...)`.
sealed class CloudformationStackSetInstanceOperationPreferencesMaxConcurrent {
  const CloudformationStackSetInstanceOperationPreferencesMaxConcurrent();

  /// Sets `max_concurrent_count`.
  const factory CloudformationStackSetInstanceOperationPreferencesMaxConcurrent.maxConcurrentCount(
    TfArg<num> maxConcurrentCount,
  ) = CloudformationStackSetInstanceOperationPreferencesMaxConcurrentCount;

  /// Sets `max_concurrent_percentage`.
  const factory CloudformationStackSetInstanceOperationPreferencesMaxConcurrent.maxConcurrentPercentage(
    TfArg<num> maxConcurrentPercentage,
  ) = CloudformationStackSetInstanceOperationPreferencesMaxConcurrentPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudformationStackSetInstanceOperationPreferencesMaxConcurrent.maxConcurrentCount] choice: sets `max_concurrent_count`.
final class CloudformationStackSetInstanceOperationPreferencesMaxConcurrentCount
    extends CloudformationStackSetInstanceOperationPreferencesMaxConcurrent {
  const CloudformationStackSetInstanceOperationPreferencesMaxConcurrentCount(
    this.maxConcurrentCount,
  );

  final TfArg<num> maxConcurrentCount;

  @override
  String get blockKey => 'max_concurrent_count';

  @override
  Map<String, Object?> encode() => {
    'max_concurrent_count': maxConcurrentCount.toTfJson(),
  };
}

/// The [CloudformationStackSetInstanceOperationPreferencesMaxConcurrent.maxConcurrentPercentage] choice: sets `max_concurrent_percentage`.
final class CloudformationStackSetInstanceOperationPreferencesMaxConcurrentPercentage
    extends CloudformationStackSetInstanceOperationPreferencesMaxConcurrent {
  const CloudformationStackSetInstanceOperationPreferencesMaxConcurrentPercentage(
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
enum CloudformationStackSetInstanceOperationPreferencesConcurrencyMode
    implements TerraformEnum {
  strictFailureTolerance('STRICT_FAILURE_TOLERANCE'),
  softFailureTolerance('SOFT_FAILURE_TOLERANCE');

  const CloudformationStackSetInstanceOperationPreferencesConcurrencyMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `region_concurrency_type` — derived from the provider schema description.
enum CloudformationStackSetInstanceOperationPreferencesRegionConcurrencyType
    implements TerraformEnum {
  sequential('SEQUENTIAL'),
  parallel('PARALLEL');

  const CloudformationStackSetInstanceOperationPreferencesRegionConcurrencyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudformation_stack_set_instance`.
final class AwsCloudformationStackSetInstance extends Resource {
  static const String tfType = 'aws_cloudformation_stack_set_instance';

  AwsCloudformationStackSetInstance({
    required super.localName,
    CloudformationStackSetInstanceTarget? target,
    TfArg<CloudformationStackSetInstanceCallAs>? callAs,
    TfArg<Map<String, String>>? parameterOverrides,
    CloudformationStackSetInstanceTargetRegion? targetRegion,
    TfArg<bool>? retainStack,
    required TfArg<String> stackSetName,
    CloudformationStackSetInstanceOperationPreferences? operationPreferences,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...?target?.argMap,
           'call_as': ?callAs,
           'parameter_overrides': ?parameterOverrides,
           ...?targetRegion?.argMap,
           'retain_stack': ?retainStack,
           'stack_set_name': stackSetName,
           if (operationPreferences != null)
             'operation_preferences': TfArg.literal(
               operationPreferences.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudformationStackSetInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudformationStackSetInstance>`.
  RefTo<AwsCloudformationStackSetInstance> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `organizational_unit_id` attribute.
  TfRef<String> get organizationalUnitId =>
      TfRef.attribute<String>(this, 'organizational_unit_id');

  /// Reference to `stack_id` attribute.
  TfRef<String> get stackId => TfRef.attribute<String>(this, 'stack_id');

  /// Reference to `stack_instance_summaries` attribute.
  TfRef<List<Map<String, Object?>>> get stackInstanceSummaries =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'stack_instance_summaries',
      );
}
