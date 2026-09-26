// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_set`.
const Set<String> _awsCloudformationStackSetSensitive = <String>{};

/// Typed helper for the `auto_deployment` block of
/// `aws_cloudformation_stack_set` (derived from provider schema).
@immutable
final class CloudformationStackSetAutoDeployment {
  const CloudformationStackSetAutoDeployment({
    this.dependsOnStackSets,
    this.enabled,
    this.retainStacksOnAccountRemoval,
  });

  final TfArg<List<Object?>>? dependsOnStackSets;

  final TfArg<bool>? enabled;

  final TfArg<bool>? retainStacksOnAccountRemoval;

  Map<String, Object?> encode() => {
    if (dependsOnStackSets != null)
      'depends_on_stack_sets': dependsOnStackSets!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (retainStacksOnAccountRemoval != null)
      'retain_stacks_on_account_removal': retainStacksOnAccountRemoval!
          .toTfJson(),
  };
}

/// Typed helper for the `managed_execution` block of
/// `aws_cloudformation_stack_set` (derived from provider schema).
@immutable
final class CloudformationStackSetManagedExecution {
  const CloudformationStackSetManagedExecution({this.active});

  final TfArg<bool>? active;

  Map<String, Object?> encode() => {
    if (active != null) 'active': active!.toTfJson(),
  };
}

/// Typed helper for the `operation_preferences` block of
/// `aws_cloudformation_stack_set` (derived from provider schema).
@immutable
final class CloudformationStackSetOperationPreferences {
  const CloudformationStackSetOperationPreferences({
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrentCount,
    this.maxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final TfArg<num>? failureToleranceCount;

  final TfArg<num>? failureTolerancePercentage;

  final TfArg<num>? maxConcurrentCount;

  final TfArg<num>? maxConcurrentPercentage;

  final TfArg<String>? regionConcurrencyType;

  final TfArg<List<Object?>>? regionOrder;

  Map<String, Object?> encode() => {
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

/// Factory wrapper for `aws_cloudformation_stack_set`.
final class AwsCloudformationStackSet extends Resource {
  static const String tfType = 'aws_cloudformation_stack_set';

  AwsCloudformationStackSet({
    required super.localName,
    TfArg<String>? administrationRoleArn,
    TfArg<String>? callAs,
    TfArg<List<String>>? capabilities,
    TfArg<String>? description,
    TfArg<String>? executionRoleName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? permissionModel,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? templateBody,
    TfArg<String>? templateUrl,
    CloudformationStackSetAutoDeployment? autoDeployment,
    CloudformationStackSetManagedExecution? managedExecution,
    CloudformationStackSetOperationPreferences? operationPreferences,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (administrationRoleArn != null)
             'administration_role_arn': administrationRoleArn,
           if (callAs != null) 'call_as': callAs,
           if (capabilities != null) 'capabilities': capabilities,
           if (description != null) 'description': description,
           if (executionRoleName != null)
             'execution_role_name': executionRoleName,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (permissionModel != null) 'permission_model': permissionModel,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (templateBody != null) 'template_body': templateBody,
           if (templateUrl != null) 'template_url': templateUrl,
           if (autoDeployment != null)
             'auto_deployment': TfArg.literal(autoDeployment.encode()),
           if (managedExecution != null)
             'managed_execution': TfArg.literal(managedExecution.encode()),
           if (operationPreferences != null)
             'operation_preferences': TfArg.literal(
               operationPreferences.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCloudformationStackSetSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stack_set_id` attribute.
  TfRef<String> get stackSetId => TfRef.attribute<String>(this, 'stack_set_id');
}
