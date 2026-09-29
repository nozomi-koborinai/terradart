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
sealed class CloudformationStackInstancesAccountsOrDeploymentTargets {
  const CloudformationStackInstancesAccountsOrDeploymentTargets();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `accounts` (one of the [CloudformationStackInstancesAccountsOrDeploymentTargets] choices).
final class CloudformationStackInstancesAccountsOption
    extends CloudformationStackInstancesAccountsOrDeploymentTargets {
  const CloudformationStackInstancesAccountsOption({required this.accounts});

  final TfArg<List<String>> accounts;

  @override
  String get blockKey => 'accounts';

  @override
  Map<String, Object?> encode() => {'accounts': accounts.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'accounts': accounts};
}

/// Sets `deployment_targets` (one of the [CloudformationStackInstancesAccountsOrDeploymentTargets] choices).
final class CloudformationStackInstancesDeploymentTargetsOption
    extends CloudformationStackInstancesAccountsOrDeploymentTargets {
  const CloudformationStackInstancesDeploymentTargetsOption({
    required this.deploymentTargets,
  });

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

  final TfArg<List<Object?>>? accounts;

  final TfArg<String>? accountsUrl;

  final TfArg<List<Object?>>? organizationalUnitIds;

  Map<String, Object?> encode() => {
    if (accountFilterType != null)
      'account_filter_type': accountFilterType!.toTfJson(),
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    if (accountsUrl != null) 'accounts_url': accountsUrl!.toTfJson(),
    if (organizationalUnitIds != null)
      'organizational_unit_ids': organizationalUnitIds!.toTfJson(),
  };
}

/// Typed helper for the `operation_preferences` block of
/// `aws_cloudformation_stack_instances` (derived from provider schema).
@immutable
final class CloudformationStackInstancesOperationPreferences {
  const CloudformationStackInstancesOperationPreferences({
    this.concurrencyMode,
    this.failureToleranceCountOrFailureTolerancePercentage,
    this.maxConcurrentCountOrMaxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final TfArg<CloudformationStackInstancesOperationPreferencesConcurrencyMode>?
  concurrencyMode;

  final CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage?
  failureToleranceCountOrFailureTolerancePercentage;

  final CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage?
  maxConcurrentCountOrMaxConcurrentPercentage;

  final TfArg<
    CloudformationStackInstancesOperationPreferencesRegionConcurrencyType
  >?
  regionConcurrencyType;

  final TfArg<List<Object?>>? regionOrder;

  Map<String, Object?> encode() => {
    if (concurrencyMode != null)
      'concurrency_mode': concurrencyMode!.toTfJson(),
    ...?failureToleranceCountOrFailureTolerancePercentage?.encode(),
    ...?maxConcurrentCountOrMaxConcurrentPercentage?.encode(),
    if (regionConcurrencyType != null)
      'region_concurrency_type': regionConcurrencyType!.toTfJson(),
    if (regionOrder != null) 'region_order': regionOrder!.toTfJson(),
  };
}

/// At most one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_instances`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `failure_tolerance_count` (one of the [CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage] choices).
final class CloudformationStackInstancesOperationPreferencesFailureToleranceCountOption
    extends
        CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const CloudformationStackInstancesOperationPreferencesFailureToleranceCountOption({
    required this.failureToleranceCount,
  });

  final TfArg<num> failureToleranceCount;

  @override
  String get blockKey => 'failure_tolerance_count';

  @override
  Map<String, Object?> encode() => {
    'failure_tolerance_count': failureToleranceCount.toTfJson(),
  };
}

/// Sets `failure_tolerance_percentage` (one of the [CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage] choices).
final class CloudformationStackInstancesOperationPreferencesFailureTolerancePercentageOption
    extends
        CloudformationStackInstancesOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const CloudformationStackInstancesOperationPreferencesFailureTolerancePercentageOption({
    required this.failureTolerancePercentage,
  });

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
sealed class CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage {
  const CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `max_concurrent_count` (one of the [CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage] choices).
final class CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOption
    extends
        CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage {
  const CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOption({
    required this.maxConcurrentCount,
  });

  final TfArg<num> maxConcurrentCount;

  @override
  String get blockKey => 'max_concurrent_count';

  @override
  Map<String, Object?> encode() => {
    'max_concurrent_count': maxConcurrentCount.toTfJson(),
  };
}

/// Sets `max_concurrent_percentage` (one of the [CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage] choices).
final class CloudformationStackInstancesOperationPreferencesMaxConcurrentPercentageOption
    extends
        CloudformationStackInstancesOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage {
  const CloudformationStackInstancesOperationPreferencesMaxConcurrentPercentageOption({
    required this.maxConcurrentPercentage,
  });

  final TfArg<num> maxConcurrentPercentage;

  @override
  String get blockKey => 'max_concurrent_percentage';

  @override
  Map<String, Object?> encode() => {
    'max_concurrent_percentage': maxConcurrentPercentage.toTfJson(),
  };
}

/// `concurrency_mode` — derived from the provider schema description.
enum CloudformationStackInstancesOperationPreferencesConcurrencyMode
    implements TerraformEnum {
  strictFailureTolerance('STRICT_FAILURE_TOLERANCE'),
  softFailureTolerance('SOFT_FAILURE_TOLERANCE');

  const CloudformationStackInstancesOperationPreferencesConcurrencyMode(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `region_concurrency_type` — derived from the provider schema description.
enum CloudformationStackInstancesOperationPreferencesRegionConcurrencyType
    implements TerraformEnum {
  sequential('SEQUENTIAL'),
  parallel('PARALLEL');

  const CloudformationStackInstancesOperationPreferencesRegionConcurrencyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudformation_stack_instances`.
final class AwsCloudformationStackInstances extends Resource {
  static const String tfType = 'aws_cloudformation_stack_instances';

  AwsCloudformationStackInstances({
    required super.localName,
    CloudformationStackInstancesAccountsOrDeploymentTargets?
    accountsOrDeploymentTargets,
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
           ...?accountsOrDeploymentTargets?.argMap,
           if (callAs != null) 'call_as': callAs,
           if (parameterOverrides != null)
             'parameter_overrides': parameterOverrides,
           if (region != null) 'region': region,
           if (regions != null) 'regions': regions,
           if (retainStacks != null) 'retain_stacks': retainStacks,
           'stack_set_name': stackSetName,
           if (operationPreferences != null)
             'operation_preferences': TfArg.literal(
               operationPreferences.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationStackInstancesSensitive;

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
}
