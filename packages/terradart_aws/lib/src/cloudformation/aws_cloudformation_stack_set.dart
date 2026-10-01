// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cloudformation_stack_set`.
const Set<String> _awsCloudformationStackSetSensitive = <String>{};

/// Cloudformation Stack Set Call enum for `call_as`.
extension type const CloudformationStackSetCallAs._(TfArg<String> _)
    implements TfArg<String> {
  CloudformationStackSetCallAs.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackSetCallAs.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackSetCallAs.arg(TfArg<String> arg) : this._(arg);

  static const self = CloudformationStackSetCallAs._(TfArgLiteral('SELF'));
  static const delegatedAdmin = CloudformationStackSetCallAs._(
    TfArgLiteral('DELEGATED_ADMIN'),
  );

  static const List<CloudformationStackSetCallAs> values = [
    self,
    delegatedAdmin,
  ];
}

/// Cloudformation Stack Set enum for `capabilities`.
extension type const CloudformationStackSetCapabilities._(TfArg<String> _)
    implements TfArg<String> {
  CloudformationStackSetCapabilities.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackSetCapabilities.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackSetCapabilities.arg(TfArg<String> arg) : this._(arg);

  static const capabilityIam = CloudformationStackSetCapabilities._(
    TfArgLiteral('CAPABILITY_IAM'),
  );
  static const capabilityNamedIam = CloudformationStackSetCapabilities._(
    TfArgLiteral('CAPABILITY_NAMED_IAM'),
  );
  static const capabilityAutoExpand = CloudformationStackSetCapabilities._(
    TfArgLiteral('CAPABILITY_AUTO_EXPAND'),
  );

  static const List<CloudformationStackSetCapabilities> values = [
    capabilityIam,
    capabilityNamedIam,
    capabilityAutoExpand,
  ];
}

/// Cloudformation Stack Set Permission enum for `permission_model`.
extension type const CloudformationStackSetPermissionModel._(TfArg<String> _)
    implements TfArg<String> {
  CloudformationStackSetPermissionModel.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackSetPermissionModel.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackSetPermissionModel.arg(TfArg<String> arg)
    : this._(arg);

  static const serviceManaged = CloudformationStackSetPermissionModel._(
    TfArgLiteral('SERVICE_MANAGED'),
  );
  static const selfManaged = CloudformationStackSetPermissionModel._(
    TfArgLiteral('SELF_MANAGED'),
  );

  static const List<CloudformationStackSetPermissionModel> values = [
    serviceManaged,
    selfManaged,
  ];
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
  ) = CloudformationStackSetTemplateBody;

  /// Sets `template_url`.
  const factory CloudformationStackSetTemplate.templateUrl(
    TfArg<String> templateUrl,
  ) = CloudformationStackSetTemplateUrl;

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

/// The [CloudformationStackSetTemplate.templateBody] choice: sets `template_body`.
final class CloudformationStackSetTemplateBody
    extends CloudformationStackSetTemplate {
  const CloudformationStackSetTemplateBody(this.templateBody);

  final TfArg<String> templateBody;

  @internal
  @override
  String get blockKey => 'template_body';

  @internal
  @override
  Map<String, Object?> encode() => {'template_body': templateBody.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'template_body': templateBody};
}

/// The [CloudformationStackSetTemplate.templateUrl] choice: sets `template_url`.
final class CloudformationStackSetTemplateUrl
    extends CloudformationStackSetTemplate {
  const CloudformationStackSetTemplateUrl(this.templateUrl);

  final TfArg<String> templateUrl;

  @internal
  @override
  String get blockKey => 'template_url';

  @internal
  @override
  Map<String, Object?> encode() => {'template_url': templateUrl.toTfJson()};

  @internal
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

  final TfArg<List<String>>? dependsOnStackSets;

  final TfArg<bool>? enabled;

  final TfArg<bool>? retainStacksOnAccountRemoval;

  @internal
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

  @internal
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

  final CloudformationStackSetFailureTolerance? failureTolerance;

  final CloudformationStackSetMaxConcurrent? maxConcurrent;

  final CloudformationStackSetRegionConcurrencyType? regionConcurrencyType;

  final TfArg<List<String>>? regionOrder;

  @internal
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
sealed class CloudformationStackSetFailureTolerance {
  const CloudformationStackSetFailureTolerance();

  /// Sets `failure_tolerance_count`.
  const factory CloudformationStackSetFailureTolerance.failureToleranceCount(
    TfArg<num> failureToleranceCount,
  ) = CloudformationStackSetFailureToleranceCount;

  /// Sets `failure_tolerance_percentage`.
  const factory CloudformationStackSetFailureTolerance.failureTolerancePercentage(
    TfArg<num> failureTolerancePercentage,
  ) = CloudformationStackSetFailureTolerancePercentage;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudformationStackSetFailureTolerance.failureToleranceCount] choice: sets `failure_tolerance_count`.
final class CloudformationStackSetFailureToleranceCount
    extends CloudformationStackSetFailureTolerance {
  const CloudformationStackSetFailureToleranceCount(this.failureToleranceCount);

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

/// The [CloudformationStackSetFailureTolerance.failureTolerancePercentage] choice: sets `failure_tolerance_percentage`.
final class CloudformationStackSetFailureTolerancePercentage
    extends CloudformationStackSetFailureTolerance {
  const CloudformationStackSetFailureTolerancePercentage(
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

/// At most one of `max_concurrent_count`, `max_concurrent_percentage` on the `operation_preferences` block of `aws_cloudformation_stack_set`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.maxConcurrentCount(...)`.
sealed class CloudformationStackSetMaxConcurrent {
  const CloudformationStackSetMaxConcurrent();

  /// Sets `max_concurrent_count`.
  const factory CloudformationStackSetMaxConcurrent.maxConcurrentCount(
    TfArg<num> maxConcurrentCount,
  ) = CloudformationStackSetMaxConcurrentCount;

  /// Sets `max_concurrent_percentage`.
  const factory CloudformationStackSetMaxConcurrent.maxConcurrentPercentage(
    TfArg<num> maxConcurrentPercentage,
  ) = CloudformationStackSetMaxConcurrentPercentage;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [CloudformationStackSetMaxConcurrent.maxConcurrentCount] choice: sets `max_concurrent_count`.
final class CloudformationStackSetMaxConcurrentCount
    extends CloudformationStackSetMaxConcurrent {
  const CloudformationStackSetMaxConcurrentCount(this.maxConcurrentCount);

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

/// The [CloudformationStackSetMaxConcurrent.maxConcurrentPercentage] choice: sets `max_concurrent_percentage`.
final class CloudformationStackSetMaxConcurrentPercentage
    extends CloudformationStackSetMaxConcurrent {
  const CloudformationStackSetMaxConcurrentPercentage(
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

/// `region_concurrency_type` — derived from the provider schema description.
extension type const CloudformationStackSetRegionConcurrencyType._(
  TfArg<String> _
) implements TfArg<String> {
  CloudformationStackSetRegionConcurrencyType.variable(String name)
    : this._(TfArg.variable(name));
  CloudformationStackSetRegionConcurrencyType.expression(String template)
    : this._(TfArg.expression(template));
  const CloudformationStackSetRegionConcurrencyType.arg(TfArg<String> arg)
    : this._(arg);

  static const sequential = CloudformationStackSetRegionConcurrencyType._(
    TfArgLiteral('SEQUENTIAL'),
  );
  static const parallel = CloudformationStackSetRegionConcurrencyType._(
    TfArgLiteral('PARALLEL'),
  );

  static const List<CloudformationStackSetRegionConcurrencyType> values = [
    sequential,
    parallel,
  ];
}

/// Factory wrapper for `aws_cloudformation_stack_set`.
final class AwsCloudformationStackSet extends Resource {
  static const String tfType = 'aws_cloudformation_stack_set';

  AwsCloudformationStackSet(
    super.localName, {
    TfArg<String>? administrationRoleArn,
    CloudformationStackSetCallAs? callAs,
    List<CloudformationStackSetCapabilities>? capabilities,
    TfArg<String>? description,
    TfArg<String>? executionRoleName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    CloudformationStackSetPermissionModel? permissionModel,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `stack_set_id` attribute.
  TfRef<String> get stackSetId => TfRef.attribute<String>(this, 'stack_set_id');

  /// Reference to `administration_role_arn` attribute.
  TfRef<String> get administrationRoleArn =>
      TfRef.attribute<String>(this, 'administration_role_arn');

  /// Reference to `call_as` attribute.
  TfRef<String> get callAs => TfRef.attribute<String>(this, 'call_as');

  /// Reference to `capabilities` attribute.
  TfRef<List<String>> get capabilities =>
      TfRef.attribute<List<String>>(this, 'capabilities');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `execution_role_name` attribute.
  TfRef<String> get executionRoleName =>
      TfRef.attribute<String>(this, 'execution_role_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `permission_model` attribute.
  TfRef<String> get permissionModel =>
      TfRef.attribute<String>(this, 'permission_model');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `template_body` attribute.
  TfRef<String> get templateBody =>
      TfRef.attribute<String>(this, 'template_body');

  /// Reference to `template_url` attribute.
  TfRef<String> get templateUrl =>
      TfRef.attribute<String>(this, 'template_url');
}
