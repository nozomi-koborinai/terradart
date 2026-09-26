// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_budgets_budget_action`.
const Set<String> _awsBudgetsBudgetActionSensitive = <String>{};

/// Typed helper for the `action_threshold` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionActionThreshold {
  const BudgetsBudgetActionActionThreshold({
    required this.actionThresholdType,
    required this.actionThresholdValue,
  });

  final TfArg<String> actionThresholdType;

  final TfArg<num> actionThresholdValue;

  Map<String, Object?> encode() => {
    'action_threshold_type': actionThresholdType.toTfJson(),
    'action_threshold_value': actionThresholdValue.toTfJson(),
  };
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

  final BudgetsBudgetActionDefinitionIamActionDefinition? iamActionDefinition;

  final BudgetsBudgetActionDefinitionScpActionDefinition? scpActionDefinition;

  final BudgetsBudgetActionDefinitionSsmActionDefinition? ssmActionDefinition;

  Map<String, Object?> encode() => {
    if (iamActionDefinition != null)
      'iam_action_definition': iamActionDefinition!.encode(),
    if (scpActionDefinition != null)
      'scp_action_definition': scpActionDefinition!.encode(),
    if (ssmActionDefinition != null)
      'ssm_action_definition': ssmActionDefinition!.encode(),
  };
}

/// Typed helper for the `definition.iam_action_definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionDefinitionIamActionDefinition {
  const BudgetsBudgetActionDefinitionIamActionDefinition({
    this.groups,
    required this.policyArn,
    this.roles,
    this.users,
  });

  final TfArg<List<Object?>>? groups;

  final TfArg<String> policyArn;

  final TfArg<List<Object?>>? roles;

  final TfArg<List<Object?>>? users;

  Map<String, Object?> encode() => {
    if (groups != null) 'groups': groups!.toTfJson(),
    'policy_arn': policyArn.toTfJson(),
    if (roles != null) 'roles': roles!.toTfJson(),
    if (users != null) 'users': users!.toTfJson(),
  };
}

/// Typed helper for the `definition.scp_action_definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionDefinitionScpActionDefinition {
  const BudgetsBudgetActionDefinitionScpActionDefinition({
    required this.policyId,
    required this.targetIds,
  });

  final TfArg<String> policyId;

  final TfArg<List<Object?>> targetIds;

  Map<String, Object?> encode() => {
    'policy_id': policyId.toTfJson(),
    'target_ids': targetIds.toTfJson(),
  };
}

/// Typed helper for the `definition.ssm_action_definition` block of
/// `aws_budgets_budget_action` (derived from provider schema).
@immutable
final class BudgetsBudgetActionDefinitionSsmActionDefinition {
  const BudgetsBudgetActionDefinitionSsmActionDefinition({
    required this.actionSubType,
    required this.instanceIds,
    required this.region,
  });

  final TfArg<String> actionSubType;

  final TfArg<List<Object?>> instanceIds;

  final TfArg<String> region;

  Map<String, Object?> encode() => {
    'action_sub_type': actionSubType.toTfJson(),
    'instance_ids': instanceIds.toTfJson(),
    'region': region.toTfJson(),
  };
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

  final TfArg<String> subscriptionType;

  Map<String, Object?> encode() => {
    'address': address.toTfJson(),
    'subscription_type': subscriptionType.toTfJson(),
  };
}

/// Factory wrapper for `aws_budgets_budget_action`.
final class AwsBudgetsBudgetAction extends Resource {
  static const String tfType = 'aws_budgets_budget_action';

  AwsBudgetsBudgetAction({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> actionType,
    required TfArg<String> approvalModel,
    required TfArg<String> budgetName,
    required TfArg<String> executionRoleArn,
    required TfArg<String> notificationType,
    TfArg<Map<String, String>>? tags,
    required BudgetsBudgetActionActionThreshold actionThreshold,
    required BudgetsBudgetActionDefinition definition,
    required List<BudgetsBudgetActionSubscriber> subscriber,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'action_type': actionType,
           'approval_model': approvalModel,
           'budget_name': budgetName,
           'execution_role_arn': executionRoleArn,
           'notification_type': notificationType,
           if (tags != null) 'tags': tags,
           'action_threshold': TfArg.literal(actionThreshold.encode()),
           'definition': TfArg.literal(definition.encode()),
           'subscriber': TfArg.literal([
             for (final e in subscriber) e.encode(),
           ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsBudgetsBudgetActionSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action_id` attribute.
  TfRef<String> get actionId => TfRef.attribute<String>(this, 'action_id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
