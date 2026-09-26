// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_instances`.
const Set<String> _awsCloudformationStackInstancesSensitive = <String>{};

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
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrentCount,
    this.maxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final TfArg<String>? concurrencyMode;

  final TfArg<num>? failureToleranceCount;

  final TfArg<num>? failureTolerancePercentage;

  final TfArg<num>? maxConcurrentCount;

  final TfArg<num>? maxConcurrentPercentage;

  final TfArg<String>? regionConcurrencyType;

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

/// Factory wrapper for `aws_cloudformation_stack_instances`.
final class AwsCloudformationStackInstances extends Resource {
  static const String tfType = 'aws_cloudformation_stack_instances';

  AwsCloudformationStackInstances({
    required super.localName,
    TfArg<List<String>>? accounts,
    TfArg<String>? callAs,
    TfArg<Map<String, String>>? parameterOverrides,
    TfArg<String>? region,
    TfArg<List<String>>? regions,
    TfArg<bool>? retainStacks,
    required TfArg<String> stackSetName,
    CloudformationStackInstancesDeploymentTargets? deploymentTargets,
    CloudformationStackInstancesOperationPreferences? operationPreferences,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accounts != null) 'accounts': accounts,
           if (callAs != null) 'call_as': callAs,
           if (parameterOverrides != null)
             'parameter_overrides': parameterOverrides,
           if (region != null) 'region': region,
           if (regions != null) 'regions': regions,
           if (retainStacks != null) 'retain_stacks': retainStacks,
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
