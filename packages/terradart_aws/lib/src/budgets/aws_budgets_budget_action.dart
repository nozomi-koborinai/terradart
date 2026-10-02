// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_policy.dart' show AwsIamPolicy;
import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_budgets_budget_action`.
const Set<String> _awsBudgetsBudgetActionSensitive = <String>{};

/// Budgets Budget Action enum for `action_type`.
extension type const BudgetsBudgetActionType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetActionType.variable(String name) : this._(TfArg.variable(name));
  BudgetsBudgetActionType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetActionType.arg(TfArg<String> arg) : this._(arg);

  static const applyIamPolicy = BudgetsBudgetActionType._(
    TfArgLiteral('APPLY_IAM_POLICY'),
  );
  static const applyScpPolicy = BudgetsBudgetActionType._(
    TfArgLiteral('APPLY_SCP_POLICY'),
  );
  static const runSsmDocuments = BudgetsBudgetActionType._(
    TfArgLiteral('RUN_SSM_DOCUMENTS'),
  );

  static const List<BudgetsBudgetActionType> values = [
    applyIamPolicy,
    applyScpPolicy,
    runSsmDocuments,
  ];
}

/// Budgets Budget Action Approval enum for `approval_model`.
extension type const BudgetsBudgetActionApprovalModel._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetActionApprovalModel.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetActionApprovalModel.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetActionApprovalModel.arg(TfArg<String> arg) : this._(arg);

  static const automatic = BudgetsBudgetActionApprovalModel._(
    TfArgLiteral('AUTOMATIC'),
  );
  static const manual = BudgetsBudgetActionApprovalModel._(
    TfArgLiteral('MANUAL'),
  );

  static const List<BudgetsBudgetActionApprovalModel> values = [
    automatic,
    manual,
  ];
}

/// Budgets Budget Action Notification enum for `notification_type`.
extension type const BudgetsBudgetActionNotificationType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetActionNotificationType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetActionNotificationType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetActionNotificationType.arg(TfArg<String> arg)
    : this._(arg);

  static const actual = BudgetsBudgetActionNotificationType._(
    TfArgLiteral('ACTUAL'),
  );
  static const forecasted = BudgetsBudgetActionNotificationType._(
    TfArgLiteral('FORECASTED'),
  );

  static const List<BudgetsBudgetActionNotificationType> values = [
    actual,
    forecasted,
  ];
}

/// Typed helper for the `action_threshold` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionThreshold {
  const BudgetsBudgetActionThreshold({
    required this.actionThresholdType,
    required this.actionThresholdValue,
  });

  final BudgetsBudgetActionThresholdType actionThresholdType;

  final TfArg<num> actionThresholdValue;

  @internal
  Map<String, Object?> encode() => {
    'action_threshold_type': actionThresholdType.toTfJson(),
    'action_threshold_value': actionThresholdValue.toTfJson(),
  };
}

/// `action_threshold_type` — derived from the provider schema description.
extension type const BudgetsBudgetActionThresholdType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetActionThresholdType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetActionThresholdType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetActionThresholdType.arg(TfArg<String> arg) : this._(arg);

  static const percentage = BudgetsBudgetActionThresholdType._(
    TfArgLiteral('PERCENTAGE'),
  );
  static const absoluteValue = BudgetsBudgetActionThresholdType._(
    TfArgLiteral('ABSOLUTE_VALUE'),
  );

  static const List<BudgetsBudgetActionThresholdType> values = [
    percentage,
    absoluteValue,
  ];
}

/// Typed helper for the `definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionDefinition {
  const BudgetsBudgetActionDefinition({
    this.iamActionDefinition,
    this.scpActionDefinition,
    this.ssmActionDefinition,
  });

  final BudgetsBudgetActionIamActionDefinition? iamActionDefinition;

  final BudgetsBudgetActionScpActionDefinition? scpActionDefinition;

  final BudgetsBudgetActionSsmActionDefinition? ssmActionDefinition;

  @internal
  Map<String, Object?> encode() => {
    'iam_action_definition': ?iamActionDefinition?.encode(),
    'scp_action_definition': ?scpActionDefinition?.encode(),
    'ssm_action_definition': ?ssmActionDefinition?.encode(),
  };
}

/// Typed helper for the `definition.iam_action_definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionIamActionDefinition {
  const BudgetsBudgetActionIamActionDefinition({
    this.groups,
    required this.policyArn,
    this.roles,
    this.users,
  });

  final TfArg<List<String>>? groups;

  final RefTo<AwsIamPolicy> policyArn;

  final TfArg<List<RefTo<AwsIamRole>>>? roles;

  final TfArg<List<String>>? users;

  @internal
  Map<String, Object?> encode() => {
    'groups': ?groups?.toTfJson(),
    'policy_arn': policyArn.encodeAs('arn').toTfJson(),
    'roles': ?roles?.encodeAs('name').toTfJson(),
    'users': ?users?.toTfJson(),
  };
}

/// Typed helper for the `definition.scp_action_definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionScpActionDefinition {
  const BudgetsBudgetActionScpActionDefinition({
    required this.policyId,
    required this.targetIds,
  });

  final TfArg<String> policyId;

  final TfArg<List<String>> targetIds;

  @internal
  Map<String, Object?> encode() => {
    'policy_id': policyId.toTfJson(),
    'target_ids': targetIds.toTfJson(),
  };
}

/// Typed helper for the `definition.ssm_action_definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionSsmActionDefinition {
  const BudgetsBudgetActionSsmActionDefinition({
    required this.actionSubType,
    required this.instanceIds,
    required this.region,
  });

  final BudgetsBudgetActionSubType actionSubType;

  final TfArg<List<String>> instanceIds;

  final TfArg<String> region;

  @internal
  Map<String, Object?> encode() => {
    'action_sub_type': actionSubType.toTfJson(),
    'instance_ids': instanceIds.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// `action_sub_type` — derived from the provider schema description.
extension type const BudgetsBudgetActionSubType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetActionSubType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetActionSubType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetActionSubType.arg(TfArg<String> arg) : this._(arg);

  static const stopEc2Instances = BudgetsBudgetActionSubType._(
    TfArgLiteral('STOP_EC2_INSTANCES'),
  );
  static const stopRdsInstances = BudgetsBudgetActionSubType._(
    TfArgLiteral('STOP_RDS_INSTANCES'),
  );

  static const List<BudgetsBudgetActionSubType> values = [
    stopEc2Instances,
    stopRdsInstances,
  ];
}

/// Typed helper for the `subscriber` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionSubscriber {
  const BudgetsBudgetActionSubscriber({
    required this.address,
    required this.subscriptionType,
  });

  final TfArg<String> address;

  final BudgetsBudgetActionSubscriptionType subscriptionType;

  @internal
  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'subscription_type': subscriptionType.toTfJson(),
  };
}

/// `subscription_type` — derived from the provider schema description.
extension type const BudgetsBudgetActionSubscriptionType._(TfArg<String> _)
    implements TfArg<String> {
  BudgetsBudgetActionSubscriptionType.variable(String name)
    : this._(TfArg.variable(name));
  BudgetsBudgetActionSubscriptionType.expression(String template)
    : this._(TfArg.expression(template));
  const BudgetsBudgetActionSubscriptionType.arg(TfArg<String> arg)
    : this._(arg);

  static const sns = BudgetsBudgetActionSubscriptionType._(TfArgLiteral('SNS'));
  static const email = BudgetsBudgetActionSubscriptionType._(
    TfArgLiteral('EMAIL'),
  );

  static const List<BudgetsBudgetActionSubscriptionType> values = [sns, email];
}

/// Factory wrapper for `aws_budgets_budget_action`.
final class AwsBudgetsBudgetAction extends Resource {
  static const String tfType = 'aws_budgets_budget_action';

  AwsBudgetsBudgetAction(
    super.localName, {
    TfArg<String>? accountId,
    required BudgetsBudgetActionType actionType,
    required BudgetsBudgetActionApprovalModel approvalModel,
    required TfArg<String> budgetName,
    required RefTo<AwsIamRole> executionRoleArn,
    required BudgetsBudgetActionNotificationType notificationType,
    TfArg<Map<String, String>>? tags,
    required BudgetsBudgetActionThreshold actionThreshold,
    required BudgetsBudgetActionDefinition definition,
    required List<BudgetsBudgetActionSubscriber> subscriber,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'action_type': actionType,
           'approval_model': approvalModel,
           'budget_name': budgetName,
           'execution_role_arn': executionRoleArn.encodeAs('arn'),
           'notification_type': notificationType,
           'tags': ?tags,
           'action_threshold': TfArg.literal(actionThreshold.encode()),
           'definition': TfArg.literal(definition.encode()),
           'subscriber': TfArg.literal([
             for (final e in subscriber) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBudgetsBudgetActionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsBudgetsBudgetAction>`.
  RefTo<AwsBudgetsBudgetAction> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action_id` attribute.
  TfRef<String> get actionId => TfRef.attribute<String>(this, 'action_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `action_type` attribute.
  TfRef<String> get actionType => TfRef.attribute<String>(this, 'action_type');

  /// Reference to `approval_model` attribute.
  TfRef<String> get approvalModel =>
      TfRef.attribute<String>(this, 'approval_model');

  /// Reference to `budget_name` attribute.
  TfRef<String> get budgetName => TfRef.attribute<String>(this, 'budget_name');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArn =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `notification_type` attribute.
  TfRef<String> get notificationType =>
      TfRef.attribute<String>(this, 'notification_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
