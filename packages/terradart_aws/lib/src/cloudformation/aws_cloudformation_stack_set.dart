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
///
/// Pick one with a dot shorthand: `.templateBody(...)`.
sealed class CloudformationStackSetTemplate {
  const CloudformationStackSetTemplate();

  /// Sets `template_body`.
  const factory CloudformationStackSetTemplate.templateBody(
    TfArg<String> templateBody,
  ) = CloudformationStackSetTemplateTemplateBody;

  /// Sets `template_url`.
  const factory CloudformationStackSetTemplate.templateUrl(
    TfArg<String> templateUrl,
  ) = CloudformationStackSetTemplateTemplateUrl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CloudformationStackSetTemplate.templateBody] choice: sets `template_body`.
final class CloudformationStackSetTemplateTemplateBody
    extends CloudformationStackSetTemplate {
  const CloudformationStackSetTemplateTemplateBody(this.templateBody);

  final TfArg<String> templateBody;

  @override
  String get blockKey => 'template_body';

  @override
  Map<String, Object?> encode() => {'template_body': templateBody.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'template_body': templateBody};
}

/// The [CloudformationStackSetTemplate.templateUrl] choice: sets `template_url`.
final class CloudformationStackSetTemplateTemplateUrl
    extends CloudformationStackSetTemplate {
  const CloudformationStackSetTemplateTemplateUrl(this.templateUrl);

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
    'depends_on_stack_sets': ?dependsOnStackSets?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'retain_stacks_on_account_removal': ?retainStacksOnAccountRemoval
        ?.toTfJson(),
  };
}

/// Typed helper for the `managed_execution` block of
/// `aws_cloudformation_stack_set` (derived from provider schema).
@immutable
final class CloudformationStackSetManagedExecution {
  const CloudformationStackSetManagedExecution({this.active});

  final TfArg<bool>? active;

  Map<String, Object?> encode() => {'active': ?active?.toTfJson()};
}

/// Typed helper for the `operation_preferences` block of
/// `aws_cloudformation_stack_set` (derived from provider schema).
@immutable
final class CloudformationStackSetOperationPreferences {
  const CloudformationStackSetOperationPreferences({
    this.failureTolerance,
    this.maxConcurrent,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  final CloudformationStackSetOperationPreferencesFailureTolerance?
  failureTolerance;

  final CloudformationStackSetOperationPreferencesMaxConcurrent? maxConcurrent;

  final TfArg<CloudformationStackSetOperationPreferencesRegionConcurrencyType>?
  regionConcurrencyType;

  final TfArg<List<Object?>>? regionOrder;

  Map<String, Object?> encode() => {
    ...?failureTolerance?.encode(),
    ...?maxConcurrent?.encode(),
    'region_concurrency_type': ?regionConcurrencyType?.toTfJson(),
    'region_order': ?regionOrder?.toTfJson(),
  };
}

/// At most one of `failure_tolerance_count`, `failure_tolerance_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.failureToleranceCount(...)`.
sealed class CloudformationStackSetOperationPreferencesFailureTolerance {
  const CloudformationStackSetOperationPreferencesFailureTolerance();

  /// Sets `failure_tolerance_count`.
  const factory CloudformationStackSetOperationPreferencesFailureTolerance.failureToleranceCount(
    TfArg<num> failureToleranceCount,
  ) = CloudformationStackSetOperationPreferencesFailureToleranceFailureToleranceCount;

  /// Sets `failure_tolerance_percentage`.
  const factory CloudformationStackSetOperationPreferencesFailureTolerance.failureTolerancePercentage(
    TfArg<num> failureTolerancePercentage,
  ) = CloudformationStackSetOperationPreferencesFailureToleranceFailureTolerancePercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudformationStackSetOperationPreferencesFailureTolerance.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class CloudformationStackSetOperationPreferencesFailureToleranceFailureToleranceCount
    extends CloudformationStackSetOperationPreferencesFailureTolerance {
  const CloudformationStackSetOperationPreferencesFailureToleranceFailureToleranceCount(
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

/// The [CloudformationStackSetOperationPreferencesFailureTolerance.failureTolerancePercentage] choice: sets `failure_tolerance_percentage`.
final class CloudformationStackSetOperationPreferencesFailureToleranceFailureTolerancePercentage
    extends CloudformationStackSetOperationPreferencesFailureTolerance {
  const CloudformationStackSetOperationPreferencesFailureToleranceFailureTolerancePercentage(
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

/// At most one of `max_concurrent_count`, `max_concurrent_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxConcurrentCount(...)`.
sealed class CloudformationStackSetOperationPreferencesMaxConcurrent {
  const CloudformationStackSetOperationPreferencesMaxConcurrent();

  /// Sets `max_concurrent_count`.
  const factory CloudformationStackSetOperationPreferencesMaxConcurrent.maxConcurrentCount(
    TfArg<num> maxConcurrentCount,
  ) = CloudformationStackSetOperationPreferencesMaxConcurrentMaxConcurrentCount;

  /// Sets `max_concurrent_percentage`.
  const factory CloudformationStackSetOperationPreferencesMaxConcurrent.maxConcurrentPercentage(
    TfArg<num> maxConcurrentPercentage,
  ) = CloudformationStackSetOperationPreferencesMaxConcurrentMaxConcurrentPercentage;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [CloudformationStackSetOperationPreferencesMaxConcurrent.maxConcurrentCount] choice: sets `max_concurrent_count`.
final class CloudformationStackSetOperationPreferencesMaxConcurrentMaxConcurrentCount
    extends CloudformationStackSetOperationPreferencesMaxConcurrent {
  const CloudformationStackSetOperationPreferencesMaxConcurrentMaxConcurrentCount(
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

/// The [CloudformationStackSetOperationPreferencesMaxConcurrent.maxConcurrentPercentage] choice: sets `max_concurrent_percentage`.
final class CloudformationStackSetOperationPreferencesMaxConcurrentMaxConcurrentPercentage
    extends CloudformationStackSetOperationPreferencesMaxConcurrent {
  const CloudformationStackSetOperationPreferencesMaxConcurrentMaxConcurrentPercentage(
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
    CloudformationStackSetTemplate? template,
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
           'administration_role_arn': ?administrationRoleArn,
           'call_as': ?callAs,
           if (capabilities != null)
             'capabilities': TfArg.literal([
               for (final e in capabilities) e.toTfJson(),
             ]),
           'description': ?description,
           'execution_role_name': ?executionRoleName,
           'name': name,
           'parameters': ?parameters,
           'permission_model': ?permissionModel,
           'region': ?region,
           'tags': ?tags,
           ...?template?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCloudformationStackSet>`.
  RefTo<AwsCloudformationStackSet> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stack_set_id` attribute.
  TfRef<String> get stackSetId => TfRef.attribute<String>(this, 'stack_set_id');
}
