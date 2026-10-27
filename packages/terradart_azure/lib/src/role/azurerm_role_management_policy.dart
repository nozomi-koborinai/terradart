// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_role_management_policy`.
const Set<String> _azurermRoleManagementPolicySensitive = <String>{};

/// Typed helper for the `activation_rules` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyActivationRules {
  const RoleManagementPolicyActivationRules({
    this.maximumDuration,
    this.requireApproval,
    this.requireJustification,
    this.requireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext,
    this.requireTicketInfo,
    this.approvalStage,
  });

  final RoleManagementPolicyMaximumDuration? maximumDuration;

  final TfArg<bool>? requireApproval;

  final TfArg<bool>? requireJustification;

  final RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext?
  requireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext;

  final TfArg<bool>? requireTicketInfo;

  final RoleManagementPolicyApprovalStage? approvalStage;

  @internal
  Map<String, Object?> encode() => {
    'maximum_duration': ?maximumDuration?.toTfJson(),
    'require_approval': ?requireApproval?.toTfJson(),
    'require_justification': ?requireJustification?.toTfJson(),
    ...?requireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext
        ?.encode(),
    'require_ticket_info': ?requireTicketInfo?.toTfJson(),
    'approval_stage': ?approvalStage?.encode(),
  };
}

/// At most one of `require_multifactor_authentication`, `required_conditional_access_authentication_context` on the `activation_rules` block of `azurerm_role_management_policy`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.requireMultifactorAuthentication(...)`.
sealed class RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext {
  const RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext();

  /// Sets `require_multifactor_authentication`.
  const factory RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext.requireMultifactorAuthentication(
    TfArg<bool> requireMultifactorAuthentication,
  ) = RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContextRequireMultifactorAuthentication;

  /// Sets `required_conditional_access_authentication_context`.
  const factory RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext.requiredConditionalAccessAuthenticationContext(
    TfArg<String> requiredConditionalAccessAuthenticationContext,
  ) = RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContextChoice;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext.requireMultifactorAuthentication] choice: sets `require_multifactor_authentication`.
final class RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContextRequireMultifactorAuthentication
    extends
        RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext {
  const RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContextRequireMultifactorAuthentication(
    this.requireMultifactorAuthentication,
  );

  final TfArg<bool> requireMultifactorAuthentication;

  @internal
  @override
  String get blockKey => 'require_multifactor_authentication';

  @internal
  @override
  Map<String, Object?> encode() => {
    'require_multifactor_authentication': requireMultifactorAuthentication
        .toTfJson(),
  };
}

/// The [RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext.requiredConditionalAccessAuthenticationContext] choice: sets `required_conditional_access_authentication_context`.
final class RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContextChoice
    extends
        RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContext {
  const RoleManagementPolicyActivationRulesRequireMultifactorAuthenticationOrRequiredConditionalAccessAuthenticationContextChoice(
    this.requiredConditionalAccessAuthenticationContext,
  );

  final TfArg<String> requiredConditionalAccessAuthenticationContext;

  @internal
  @override
  String get blockKey => 'required_conditional_access_authentication_context';

  @internal
  @override
  Map<String, Object?> encode() => {
    'required_conditional_access_authentication_context':
        requiredConditionalAccessAuthenticationContext.toTfJson(),
  };
}

/// `maximum_duration` — derived from the provider schema description.
extension type const RoleManagementPolicyMaximumDuration._(TfArg<String> _)
    implements TfArg<String> {
  RoleManagementPolicyMaximumDuration.variable(String name)
    : this._(TfArg.variable(name));
  RoleManagementPolicyMaximumDuration.expression(String template)
    : this._(TfArg.expression(template));
  const RoleManagementPolicyMaximumDuration.arg(TfArg<String> arg)
    : this._(arg);

  static const pt30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT30M'),
  );
  static const pt1h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT1H'),
  );
  static const pt1h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT1H30M'),
  );
  static const pt2h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT2H'),
  );
  static const pt2h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT2H30M'),
  );
  static const pt3h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT3H'),
  );
  static const pt3h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT3H30M'),
  );
  static const pt4h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT4H'),
  );
  static const pt4h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT4H30M'),
  );
  static const pt5h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT5H'),
  );
  static const pt5h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT5H30M'),
  );
  static const pt6h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT6H'),
  );
  static const pt6h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT6H30M'),
  );
  static const pt7h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT7H'),
  );
  static const pt7h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT7H30M'),
  );
  static const pt8h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT8H'),
  );
  static const pt8h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT8H30M'),
  );
  static const pt9h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT9H'),
  );
  static const pt9h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT9H30M'),
  );
  static const pt10h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT10H'),
  );
  static const pt10h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT10H30M'),
  );
  static const pt11h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT11H'),
  );
  static const pt11h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT11H30M'),
  );
  static const pt12h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT12H'),
  );
  static const pt12h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT12H30M'),
  );
  static const pt13h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT13H'),
  );
  static const pt13h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT13H30M'),
  );
  static const pt14h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT14H'),
  );
  static const pt14h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT14H30M'),
  );
  static const pt15h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT15H'),
  );
  static const pt15h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT15H30M'),
  );
  static const pt16h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT16H'),
  );
  static const pt16h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT16H30M'),
  );
  static const pt17h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT17H'),
  );
  static const pt17h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT17H30M'),
  );
  static const pt18h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT18H'),
  );
  static const pt18h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT18H30M'),
  );
  static const pt19h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT19H'),
  );
  static const pt19h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT19H30M'),
  );
  static const pt20h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT20H'),
  );
  static const pt20h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT20H30M'),
  );
  static const pt21h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT21H'),
  );
  static const pt21h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT21H30M'),
  );
  static const pt22h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT22H'),
  );
  static const pt22h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT22H30M'),
  );
  static const pt23h = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT23H'),
  );
  static const pt23h30m = RoleManagementPolicyMaximumDuration._(
    TfArgLiteral('PT23H30M'),
  );
  static const p1d = RoleManagementPolicyMaximumDuration._(TfArgLiteral('P1D'));

  static const List<RoleManagementPolicyMaximumDuration> values = [
    pt30m,
    pt1h,
    pt1h30m,
    pt2h,
    pt2h30m,
    pt3h,
    pt3h30m,
    pt4h,
    pt4h30m,
    pt5h,
    pt5h30m,
    pt6h,
    pt6h30m,
    pt7h,
    pt7h30m,
    pt8h,
    pt8h30m,
    pt9h,
    pt9h30m,
    pt10h,
    pt10h30m,
    pt11h,
    pt11h30m,
    pt12h,
    pt12h30m,
    pt13h,
    pt13h30m,
    pt14h,
    pt14h30m,
    pt15h,
    pt15h30m,
    pt16h,
    pt16h30m,
    pt17h,
    pt17h30m,
    pt18h,
    pt18h30m,
    pt19h,
    pt19h30m,
    pt20h,
    pt20h30m,
    pt21h,
    pt21h30m,
    pt22h,
    pt22h30m,
    pt23h,
    pt23h30m,
    p1d,
  ];
}

/// Typed helper for the `activation_rules.approval_stage` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyApprovalStage {
  const RoleManagementPolicyApprovalStage({required this.primaryApprover});

  final List<RoleManagementPolicyPrimaryApprover> primaryApprover;

  @internal
  Map<String, Object?> encode() => {
    'primary_approver': [for (final e in primaryApprover) e.encode()],
  };
}

/// Typed helper for the `activation_rules.approval_stage.primary_approver` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyPrimaryApprover {
  const RoleManagementPolicyPrimaryApprover({
    required this.objectId,
    required this.type,
  });

  final TfArg<String> objectId;

  final RoleManagementPolicyType type;

  @internal
  Map<String, Object?> encode() => {
    'object_id': objectId.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const RoleManagementPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  RoleManagementPolicyType.variable(String name) : this._(TfArg.variable(name));
  RoleManagementPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const RoleManagementPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const user = RoleManagementPolicyType._(TfArgLiteral('User'));
  static const group = RoleManagementPolicyType._(TfArgLiteral('Group'));

  static const List<RoleManagementPolicyType> values = [user, group];
}

/// Typed helper for the `active_assignment_rules` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyActiveAssignmentRules {
  const RoleManagementPolicyActiveAssignmentRules({
    this.expirationRequired,
    this.expireAfter,
    this.requireJustification,
    this.requireMultifactorAuthentication,
    this.requireTicketInfo,
  });

  final TfArg<bool>? expirationRequired;

  final RoleManagementPolicyExpireAfter? expireAfter;

  final TfArg<bool>? requireJustification;

  final TfArg<bool>? requireMultifactorAuthentication;

  final TfArg<bool>? requireTicketInfo;

  @internal
  Map<String, Object?> encode() => {
    'expiration_required': ?expirationRequired?.toTfJson(),
    'expire_after': ?expireAfter?.toTfJson(),
    'require_justification': ?requireJustification?.toTfJson(),
    'require_multifactor_authentication': ?requireMultifactorAuthentication
        ?.toTfJson(),
    'require_ticket_info': ?requireTicketInfo?.toTfJson(),
  };
}

/// `expire_after` — derived from the provider schema description.
extension type const RoleManagementPolicyExpireAfter._(TfArg<String> _)
    implements TfArg<String> {
  RoleManagementPolicyExpireAfter.variable(String name)
    : this._(TfArg.variable(name));
  RoleManagementPolicyExpireAfter.expression(String template)
    : this._(TfArg.expression(template));
  const RoleManagementPolicyExpireAfter.arg(TfArg<String> arg) : this._(arg);

  static const p15d = RoleManagementPolicyExpireAfter._(TfArgLiteral('P15D'));
  static const p30d = RoleManagementPolicyExpireAfter._(TfArgLiteral('P30D'));
  static const p90d = RoleManagementPolicyExpireAfter._(TfArgLiteral('P90D'));
  static const p180d = RoleManagementPolicyExpireAfter._(TfArgLiteral('P180D'));
  static const p365d = RoleManagementPolicyExpireAfter._(TfArgLiteral('P365D'));

  static const List<RoleManagementPolicyExpireAfter> values = [
    p15d,
    p30d,
    p90d,
    p180d,
    p365d,
  ];
}

/// Typed helper for the `eligible_assignment_rules` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyEligibleAssignmentRules {
  const RoleManagementPolicyEligibleAssignmentRules({
    this.expirationRequired,
    this.expireAfter,
  });

  final TfArg<bool>? expirationRequired;

  final RoleManagementPolicyExpireAfter? expireAfter;

  @internal
  Map<String, Object?> encode() => {
    'expiration_required': ?expirationRequired?.toTfJson(),
    'expire_after': ?expireAfter?.toTfJson(),
  };
}

/// Typed helper for the `notification_rules` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyNotificationRules {
  const RoleManagementPolicyNotificationRules({
    this.activeAssignments,
    this.eligibleActivations,
    this.eligibleAssignments,
  });

  final RoleManagementPolicyActiveAssignments? activeAssignments;

  final RoleManagementPolicyEligibleActivations? eligibleActivations;

  final RoleManagementPolicyEligibleAssignments? eligibleAssignments;

  @internal
  Map<String, Object?> encode() => {
    'active_assignments': ?activeAssignments?.encode(),
    'eligible_activations': ?eligibleActivations?.encode(),
    'eligible_assignments': ?eligibleAssignments?.encode(),
  };
}

/// Typed helper for the `notification_rules.active_assignments` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyActiveAssignments {
  const RoleManagementPolicyActiveAssignments({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  final RoleManagementPolicyActiveAssignmentsAdminNotifications?
  adminNotifications;

  final RoleManagementPolicyApproverNotifications? approverNotifications;

  final RoleManagementPolicyAssigneeNotifications? assigneeNotifications;

  @internal
  Map<String, Object?> encode() => {
    'admin_notifications': ?adminNotifications?.encode(),
    'approver_notifications': ?approverNotifications?.encode(),
    'assignee_notifications': ?assigneeNotifications?.encode(),
  };
}

/// Typed helper for the `notification_rules.active_assignments.admin_notifications` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyActiveAssignmentsAdminNotifications {
  const RoleManagementPolicyActiveAssignmentsAdminNotifications({
    this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  final TfArg<List<String>>? additionalRecipients;

  final TfArg<bool> defaultRecipients;

  final RoleManagementPolicyNotificationLevel notificationLevel;

  @internal
  Map<String, Object?> encode() => {
    'additional_recipients': ?additionalRecipients?.toTfJson(),
    'default_recipients': defaultRecipients.toTfJson(),
    'notification_level': notificationLevel.toTfJson(),
  };
}

/// `notification_level` — derived from the provider schema description.
extension type const RoleManagementPolicyNotificationLevel._(TfArg<String> _)
    implements TfArg<String> {
  RoleManagementPolicyNotificationLevel.variable(String name)
    : this._(TfArg.variable(name));
  RoleManagementPolicyNotificationLevel.expression(String template)
    : this._(TfArg.expression(template));
  const RoleManagementPolicyNotificationLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const all = RoleManagementPolicyNotificationLevel._(
    TfArgLiteral('All'),
  );
  static const critical = RoleManagementPolicyNotificationLevel._(
    TfArgLiteral('Critical'),
  );

  static const List<RoleManagementPolicyNotificationLevel> values = [
    all,
    critical,
  ];
}

/// Typed helper for the `notification_rules.active_assignments.approver_notifications` block of
/// `azurerm_role_management_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class RoleManagementPolicyApproverNotifications {
  const RoleManagementPolicyApproverNotifications({
    this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  final TfArg<List<String>>? additionalRecipients;

  final TfArg<bool> defaultRecipients;

  final TfArg<String> notificationLevel;

  @internal
  Map<String, Object?> encode() => {
    'additional_recipients': ?additionalRecipients?.toTfJson(),
    'default_recipients': defaultRecipients.toTfJson(),
    'notification_level': notificationLevel.toTfJson(),
  };
}

/// Typed helper for the `notification_rules.active_assignments.assignee_notifications` block of
/// `azurerm_role_management_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class RoleManagementPolicyAssigneeNotifications {
  const RoleManagementPolicyAssigneeNotifications({
    this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  final TfArg<List<String>>? additionalRecipients;

  final TfArg<bool> defaultRecipients;

  final TfArg<String> notificationLevel;

  @internal
  Map<String, Object?> encode() => {
    'additional_recipients': ?additionalRecipients?.toTfJson(),
    'default_recipients': defaultRecipients.toTfJson(),
    'notification_level': notificationLevel.toTfJson(),
  };
}

/// Typed helper for the `notification_rules.eligible_activations` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyEligibleActivations {
  const RoleManagementPolicyEligibleActivations({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  final RoleManagementPolicyEligibleActivationsAdminNotifications?
  adminNotifications;

  final RoleManagementPolicyApproverNotifications? approverNotifications;

  final RoleManagementPolicyAssigneeNotifications? assigneeNotifications;

  @internal
  Map<String, Object?> encode() => {
    'admin_notifications': ?adminNotifications?.encode(),
    'approver_notifications': ?approverNotifications?.encode(),
    'assignee_notifications': ?assigneeNotifications?.encode(),
  };
}

/// Typed helper for the `notification_rules.eligible_activations.admin_notifications` block of
/// `azurerm_role_management_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class RoleManagementPolicyEligibleActivationsAdminNotifications {
  const RoleManagementPolicyEligibleActivationsAdminNotifications({
    this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  final TfArg<List<String>>? additionalRecipients;

  final TfArg<bool> defaultRecipients;

  final TfArg<String> notificationLevel;

  @internal
  Map<String, Object?> encode() => {
    'additional_recipients': ?additionalRecipients?.toTfJson(),
    'default_recipients': defaultRecipients.toTfJson(),
    'notification_level': notificationLevel.toTfJson(),
  };
}

/// Typed helper for the `notification_rules.eligible_assignments` block of
/// `azurerm_role_management_policy` (derived from provider schema).
@immutable
final class RoleManagementPolicyEligibleAssignments {
  const RoleManagementPolicyEligibleAssignments({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  final RoleManagementPolicyEligibleActivationsAdminNotifications?
  adminNotifications;

  final RoleManagementPolicyApproverNotifications? approverNotifications;

  final RoleManagementPolicyAssigneeNotifications? assigneeNotifications;

  @internal
  Map<String, Object?> encode() => {
    'admin_notifications': ?adminNotifications?.encode(),
    'approver_notifications': ?approverNotifications?.encode(),
    'assignee_notifications': ?assigneeNotifications?.encode(),
  };
}

/// Factory wrapper for `azurerm_role_management_policy`.
final class AzurermRoleManagementPolicy extends Resource {
  static const String tfType = 'azurerm_role_management_policy';

  AzurermRoleManagementPolicy(
    super.localName, {
    required TfArg<String> roleDefinitionId,
    required TfArg<String> scope,
    RoleManagementPolicyActivationRules? activationRules,
    RoleManagementPolicyActiveAssignmentRules? activeAssignmentRules,
    RoleManagementPolicyEligibleAssignmentRules? eligibleAssignmentRules,
    RoleManagementPolicyNotificationRules? notificationRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'role_definition_id': roleDefinitionId,
           'scope': scope,
           if (activationRules != null)
             'activation_rules': TfArg.literal(activationRules.encode()),
           if (activeAssignmentRules != null)
             'active_assignment_rules': TfArg.literal(
               activeAssignmentRules.encode(),
             ),
           if (eligibleAssignmentRules != null)
             'eligible_assignment_rules': TfArg.literal(
               eligibleAssignmentRules.encode(),
             ),
           if (notificationRules != null)
             'notification_rules': TfArg.literal(notificationRules.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermRoleManagementPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermRoleManagementPolicy>`.
  RefTo<AzurermRoleManagementPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `role_definition_id` attribute.
  TfRef<String> get roleDefinitionId =>
      TfRef.attribute<String>(this, 'role_definition_id');

  /// Reference to `scope` attribute.
  TfRef<String> get scope => TfRef.attribute<String>(this, 'scope');
}
