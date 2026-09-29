// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_set`.
const Set<String> _awsCloudformationStackSetSensitive = <String>{};

/// Cloudformation Stack Set Call enum for `call_as`.
enum CloudformationStackSetCallAs implements TerraformEnum {
  self('SELF'),
  delegatedAdmin('DELEGATED_ADMIN');

  const CloudformationStackSetCallAs(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudformation Stack Set enum for `capabilities`.
enum CloudformationStackSetCapabilities implements TerraformEnum {
  capabilityIam('CAPABILITY_IAM'),
  capabilityNamedIam('CAPABILITY_NAMED_IAM'),
  capabilityAutoExpand('CAPABILITY_AUTO_EXPAND');

  const CloudformationStackSetCapabilities(this.terraformValue);
  @override
  final String terraformValue;
}

/// Cloudformation Stack Set Permission enum for `permission_model`.
enum CloudformationStackSetPermissionModel implements TerraformEnum {
  serviceManaged('SERVICE_MANAGED'),
  selfManaged('SELF_MANAGED');

  const CloudformationStackSetPermissionModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `template_body`, `template_url` on `aws_cloudformation_stack_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CloudformationStackSetTemplateBodyOrTemplateUrl {
  const CloudformationStackSetTemplateBodyOrTemplateUrl();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// Sets `template_body` (one of the [CloudformationStackSetTemplateBodyOrTemplateUrl] choices).
final class CloudformationStackSetTemplateBodyOption
    extends CloudformationStackSetTemplateBodyOrTemplateUrl {
  const CloudformationStackSetTemplateBodyOption({required this.templateBody});

  final TfArg<String> templateBody;

  @override
  String get blockKey => 'template_body';

  @override
  Map<String, Object?> encode() => {'template_body': templateBody.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_body': templateBody};
}

/// Sets `template_url` (one of the [CloudformationStackSetTemplateBodyOrTemplateUrl] choices).
final class CloudformationStackSetTemplateUrlOption
    extends CloudformationStackSetTemplateBodyOrTemplateUrl {
  const CloudformationStackSetTemplateUrlOption({required this.templateUrl});

  final TfArg<String> templateUrl;

  @override
  String get blockKey => 'template_url';

  @override
  Map<String, Object?> encode() => {'template_url': templateUrl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_url': templateUrl};
}

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
    this.failureToleranceCountOrFailureTolerancePercentage,
    this.maxConcurrentCountOrMaxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage?
  failureToleranceCountOrFailureTolerancePercentage;

  final CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage?
  maxConcurrentCountOrMaxConcurrentPercentage;

  final TfArg<CloudformationStackSetOperationPreferencesRegionConcurrencyType>?
  regionConcurrencyType;

  final TfArg<List<Object?>>? regionOrder;

  Map<String, Object?> encode() => {
    ...?failureToleranceCountOrFailureTolerancePercentage?.encode(),
    ...?maxConcurrentCountOrMaxConcurrentPercentage?.encode(),
    if (regionConcurrencyType != null)
      'region_concurrency_type': regionConcurrencyType!.toTfJson(),
    if (regionOrder != null) 'region_order': regionOrder!.toTfJson(),
  };
}

/// At most one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `failure_tolerance_count` (one of the [CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage] choices).
final class CloudformationStackSetOperationPreferencesFailureToleranceCountOption
    extends
        CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const CloudformationStackSetOperationPreferencesFailureToleranceCountOption({
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

/// Sets `failure_tolerance_percentage` (one of the [CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage] choices).
final class CloudformationStackSetOperationPreferencesFailureTolerancePercentageOption
    extends
        CloudformationStackSetOperationPreferencesFailureToleranceCountOrFailureTolerancePercentage {
  const CloudformationStackSetOperationPreferencesFailureTolerancePercentageOption({
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

/// At most one of `max_concurrent_count`, `max_concurrent_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
sealed class CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage {
  const CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage();

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// Sets `max_concurrent_count` (one of the [CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage] choices).
final class CloudformationStackSetOperationPreferencesMaxConcurrentCountOption
    extends
        CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage {
  const CloudformationStackSetOperationPreferencesMaxConcurrentCountOption({
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

/// Sets `max_concurrent_percentage` (one of the [CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage] choices).
final class CloudformationStackSetOperationPreferencesMaxConcurrentPercentageOption
    extends
        CloudformationStackSetOperationPreferencesMaxConcurrentCountOrMaxConcurrentPercentage {
  const CloudformationStackSetOperationPreferencesMaxConcurrentPercentageOption({
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

/// `region_concurrency_type` — derived from the provider schema description.
enum CloudformationStackSetOperationPreferencesRegionConcurrencyType
    implements TerraformEnum {
  sequential('SEQUENTIAL'),
  parallel('PARALLEL');

  const CloudformationStackSetOperationPreferencesRegionConcurrencyType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cloudformation_stack_set`.
final class AwsCloudformationStackSet extends Resource {
  static const String tfType = 'aws_cloudformation_stack_set';

  AwsCloudformationStackSet({
    required super.localName,
    TfArg<String>? administrationRoleArn,
    TfArg<CloudformationStackSetCallAs>? callAs,
    List<TfArg<CloudformationStackSetCapabilities>>? capabilities,
    TfArg<String>? description,
    TfArg<String>? executionRoleName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<CloudformationStackSetPermissionModel>? permissionModel,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    CloudformationStackSetTemplateBodyOrTemplateUrl? templateBodyOrTemplateUrl,
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
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.toTfJson(),
             ]),
           if (description != null) 'description': description,
           if (executionRoleName != null)
             'execution_role_name': executionRoleName,
           'name': name,
           if (parameters != null) 'parameters': parameters,
           if (permissionModel != null) 'permission_model': permissionModel,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           ...?templateBodyOrTemplateUrl?.argMap,
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
