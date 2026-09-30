// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;

/// Sensitive field paths for `aws_budgets_budget_action`.
const Set<String> _awsBudgetsBudgetActionSensitive = <String>{};

/// Budgets Budget Action Action enum for `action_type`.
enum BudgetsBudgetActionActionType implements TerraformEnum {
  applyIamPolicy('APPLY_IAM_POLICY'),
  applyScpPolicy('APPLY_SCP_POLICY'),
  runSsmDocuments('RUN_SSM_DOCUMENTS');

  const BudgetsBudgetActionActionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Budgets Budget Action Approval enum for `approval_model`.
enum BudgetsBudgetActionApprovalModel implements TerraformEnum {
  automatic('AUTOMATIC'),
  manual('MANUAL');

  const BudgetsBudgetActionApprovalModel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Budgets Budget Action Notification enum for `notification_type`.
enum BudgetsBudgetActionNotificationType implements TerraformEnum {
  actual('ACTUAL'),
  forecasted('FORECASTED');

  const BudgetsBudgetActionNotificationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `action_threshold` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionThreshold {
  const BudgetsBudgetActionThreshold({
    required this.actionThresholdType,
    required this.actionThresholdValue,
  });

  final TfArg<BudgetsBudgetActionThresholdType> actionThresholdType;

  final TfArg<num> actionThresholdValue;

  Map<String, Object?> encode() => {
    'action_threshold_type': actionThresholdType.toTfJson(),
    'action_threshold_value': actionThresholdValue.toTfJson(),
  };
}

/// `action_threshold_type` — derived from the provider schema description.
enum BudgetsBudgetActionThresholdType implements TerraformEnum {
  percentage('PERCENTAGE'),
  absoluteValue('ABSOLUTE_VALUE');

  const BudgetsBudgetActionThresholdType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<String> policyArn;

  final TfArg<List<RefTo<AwsIamRole>>>? roles;

  final TfArg<List<String>>? users;

  Map<String, Object?> encode() => {
    'groups': ?groups?.toTfJson(),
    'policy_arn': policyArn.toTfJson(),
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

  final TfArg<BudgetsBudgetActionSubType> actionSubType;

  final TfArg<List<String>> instanceIds;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    'action_sub_type': actionSubType.toTfJson(),
    'instance_ids': instanceIds.toTfJson(),
    'region': region.toTfJson(),
  };
}

/// `action_sub_type` — derived from the provider schema description.
enum BudgetsBudgetActionSubType implements TerraformEnum {
  stopEc2Instances('STOP_EC2_INSTANCES'),
  stopRdsInstances('STOP_RDS_INSTANCES');

  const BudgetsBudgetActionSubType(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<BudgetsBudgetActionSubscriptionType> subscriptionType;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'subscription_type': subscriptionType.toTfJson(),
  };
}

/// `subscription_type` — derived from the provider schema description.
enum BudgetsBudgetActionSubscriptionType implements TerraformEnum {
  sns('SNS'),
  email('EMAIL');

  const BudgetsBudgetActionSubscriptionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_budgets_budget_action`.
final class AwsBudgetsBudgetAction extends Resource {
  static const String tfType = 'aws_budgets_budget_action';

  AwsBudgetsBudgetAction({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<BudgetsBudgetActionActionType> actionType,
    required TfArg<BudgetsBudgetActionApprovalModel> approvalModel,
    required TfArg<String> budgetName,
    required RefTo<AwsIamRole> executionRoleArn,
    required TfArg<BudgetsBudgetActionNotificationType> notificationType,
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
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `action_type` attribute.
  TfRef<String> get actionTypeRef =>
      TfRef.attribute<String>(this, 'action_type');

  /// Reference to `approval_model` attribute.
  TfRef<String> get approvalModelRef =>
      TfRef.attribute<String>(this, 'approval_model');

  /// Reference to `budget_name` attribute.
  TfRef<String> get budgetNameRef =>
      TfRef.attribute<String>(this, 'budget_name');

  /// Reference to `execution_role_arn` attribute.
  TfRef<String> get executionRoleArnRef =>
      TfRef.attribute<String>(this, 'execution_role_arn');

  /// Reference to `notification_type` attribute.
  TfRef<String> get notificationTypeRef =>
      TfRef.attribute<String>(this, 'notification_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
