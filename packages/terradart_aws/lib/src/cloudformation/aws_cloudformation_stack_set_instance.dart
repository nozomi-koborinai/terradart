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
    if (accountFilterType != null)
      'account_filter_type': accountFilterType!.toTfJson(),
    if (accounts != null) 'accounts': accounts!.toTfJson(),
    if (accountsUrl != null) 'accounts_url': accountsUrl!.toTfJson(),
    if (organizationalUnitIds != null)
      'organizational_unit_ids': organizationalUnitIds!.toTfJson(),
  };
}

/// Typed helper for the `operation_preferences` block of
/// `aws_cloudformation_stack_set_instance` (derived from provider schema).
@immutable
final class CloudformationStackSetInstanceOperationPreferences {
  const CloudformationStackSetInstanceOperationPreferences({
    this.concurrencyMode,
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrentCount,
    this.maxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final TfArg<
    CloudformationStackSetInstanceOperationPreferencesConcurrencyMode
  >?
  concurrencyMode;

  final TfArg<num>? failureToleranceCount;

  final TfArg<num>? failureTolerancePercentage;

  final TfArg<num>? maxConcurrentCount;

  final TfArg<num>? maxConcurrentPercentage;

  final TfArg<
    CloudformationStackSetInstanceOperationPreferencesRegionConcurrencyType
  >?
  regionConcurrencyType;

  final TfArg<List<Object?>>? regionOrder;

  Map<String, Object?> encode() => {
    if (concurrencyMode != null)
      'concurrency_mode': concurrencyMode!.toTfJson(),
    if (failureToleranceCount != null)
      'failure_tolerance_count': failureToleranceCount!.toTfJson(),
    if (failureTolerancePercentage != null)
      'failure_tolerance_percentage': failureTolerancePercentage!.toTfJson(),
    if (maxConcurrentCount != null)
      'max_concurrent_count': maxConcurrentCount!.toTfJson(),
    if (maxConcurrentPercentage != null)
      'max_concurrent_percentage': maxConcurrentPercentage!.toTfJson(),
    if (regionConcurrencyType != null)
      'region_concurrency_type': regionConcurrencyType!.toTfJson(),
    if (regionOrder != null) 'region_order': regionOrder!.toTfJson(),
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
    TfArg<String>? accountId,
    TfArg<CloudformationStackSetInstanceCallAs>? callAs,
    TfArg<Map<String, String>>? parameterOverrides,
    TfArg<String>? region,
    TfArg<bool>? retainStack,
    TfArg<String>? stackSetInstanceRegion,
    required TfArg<String> stackSetName,
    CloudformationStackSetInstanceDeploymentTargets? deploymentTargets,
    CloudformationStackSetInstanceOperationPreferences? operationPreferences,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (callAs != null) 'call_as': callAs,
           if (parameterOverrides != null)
             'parameter_overrides': parameterOverrides,
           if (region != null) 'region': region,
           if (retainStack != null) 'retain_stack': retainStack,
           if (stackSetInstanceRegion != null)
             'stack_set_instance_region': stackSetInstanceRegion,
           'stack_set_name': stackSetName,
           if (deploymentTargets != null)
             'deployment_targets': TfArg.literal(deploymentTargets.encode()),
           if (operationPreferences != null)
             'operation_preferences': TfArg.literal(
               operationPreferences.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCloudformationStackSetInstanceSensitive;

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
