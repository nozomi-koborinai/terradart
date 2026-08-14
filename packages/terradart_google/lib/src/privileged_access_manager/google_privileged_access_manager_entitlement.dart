// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privileged_access_manager_entitlement`.
const Set<String> _googlePrivilegedAccessManagerEntitlementSensitive =
    <String>{};

/// Typed helper for the `additional_notification_targets` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementAdditionalNotificationTargets {
  const PrivilegedAccessManagerEntitlementAdditionalNotificationTargets({
    this.adminEmailRecipients,
    this.requesterEmailRecipients,
  });

  final TfArg<List<Object?>>? adminEmailRecipients;

  final TfArg<List<Object?>>? requesterEmailRecipients;

  Map<String, Object?> encode() => {
    if (adminEmailRecipients != null)
      'admin_email_recipients': adminEmailRecipients!.toTfJson(),
    if (requesterEmailRecipients != null)
      'requester_email_recipients': requesterEmailRecipients!.toTfJson(),
  };
}

/// Typed helper for the `approval_workflow` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementApprovalWorkflow {
  const PrivilegedAccessManagerEntitlementApprovalWorkflow({
    required this.manualApprovals,
  });

  final PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovals
  manualApprovals;

  Map<String, Object?> encode() => {
    'manual_approvals': manualApprovals.encode(),
  };
}

/// Typed helper for the `approval_workflow.manual_approvals` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovals {
  const PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovals({
    this.requireApproverJustification,
    required this.steps,
  });

  final TfArg<bool>? requireApproverJustification;

  final List<
    PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovalsSteps
  >
  steps;

  Map<String, Object?> encode() => {
    if (requireApproverJustification != null)
      'require_approver_justification': requireApproverJustification!
          .toTfJson(),
    'steps': [for (final e in steps) e.encode()],
  };
}

/// Typed helper for the `approval_workflow.manual_approvals.steps` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovalsSteps {
  const PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovalsSteps({
    this.approvalsNeeded,
    this.approverEmailRecipients,
    required this.approvers,
  });

  final TfArg<num>? approvalsNeeded;

  final TfArg<List<Object?>>? approverEmailRecipients;

  final PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovalsStepsApprovers
  approvers;

  Map<String, Object?> encode() => {
    if (approvalsNeeded != null)
      'approvals_needed': approvalsNeeded!.toTfJson(),
    if (approverEmailRecipients != null)
      'approver_email_recipients': approverEmailRecipients!.toTfJson(),
    'approvers': approvers.encode(),
  };
}

/// Typed helper for the `approval_workflow.manual_approvals.steps.approvers` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovalsStepsApprovers {
  const PrivilegedAccessManagerEntitlementApprovalWorkflowManualApprovalsStepsApprovers({
    required this.principals,
  });

  final TfArg<List<Object?>> principals;

  Map<String, Object?> encode() => {'principals': principals.toTfJson()};
}

/// Typed helper for the `eligible_users` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementEligibleUsers {
  const PrivilegedAccessManagerEntitlementEligibleUsers({
    required this.principals,
  });

  final TfArg<List<Object?>> principals;

  Map<String, Object?> encode() => {'principals': principals.toTfJson()};
}

/// Typed helper for the `privileged_access` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementPrivilegedAccess {
  const PrivilegedAccessManagerEntitlementPrivilegedAccess({
    required this.gcpIamAccess,
  });

  final PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccess
  gcpIamAccess;

  Map<String, Object?> encode() => {'gcp_iam_access': gcpIamAccess.encode()};
}

/// Typed helper for the `privileged_access.gcp_iam_access` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccess {
  const PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccess({
    required this.resource,
    required this.resourceType,
    required this.roleBindings,
  });

  final TfArg<String> resource;

  final TfArg<String> resourceType;

  final List<
    PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccessRoleBindings
  >
  roleBindings;

  Map<String, Object?> encode() => {
    'resource': resource.toTfJson(),
    'resource_type': resourceType.toTfJson(),
    'role_bindings': [for (final e in roleBindings) e.encode()],
  };
}

/// Typed helper for the `privileged_access.gcp_iam_access.role_bindings` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccessRoleBindings {
  const PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccessRoleBindings({
    this.conditionExpression,
    required this.role,
  });

  final TfArg<String>? conditionExpression;

  final TfArg<String> role;

  Map<String, Object?> encode() => {
    if (conditionExpression != null)
      'condition_expression': conditionExpression!.toTfJson(),
    'role': role.toTfJson(),
  };
}

/// Typed helper for the `requester_justification_config` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementRequesterJustificationConfig {
  const PrivilegedAccessManagerEntitlementRequesterJustificationConfig({
    this.notMandatory,
    this.unstructured,
  });

  final PrivilegedAccessManagerEntitlementRequesterJustificationConfigNotMandatory?
  notMandatory;

  final PrivilegedAccessManagerEntitlementRequesterJustificationConfigUnstructured?
  unstructured;

  Map<String, Object?> encode() => {
    if (notMandatory != null) 'not_mandatory': notMandatory!.encode(),
    if (unstructured != null) 'unstructured': unstructured!.encode(),
  };
}

/// Typed helper for the `requester_justification_config.not_mandatory` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementRequesterJustificationConfigNotMandatory {
  const PrivilegedAccessManagerEntitlementRequesterJustificationConfigNotMandatory();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `requester_justification_config.unstructured` block of
/// `google_privileged_access_manager_entitlement` (derived from provider schema).
@immutable
final class PrivilegedAccessManagerEntitlementRequesterJustificationConfigUnstructured {
  const PrivilegedAccessManagerEntitlementRequesterJustificationConfigUnstructured();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `google_privileged_access_manager_entitlement`.
///
/// An Entitlement defines the eligibility of a set of users to obtain a
/// predefined access for some time possibly after going through an approval
/// workflow.
///
/// Privileged Access Manager **entitlement** — who may request a
/// time-bound IAM role on a project, folder, or organization. Creating
/// the entitlement does not grant access; a separate grant request is
/// required. This leftover uses the official project-scoped recipe
/// without an approval workflow (auto-grant if someone requests).
///
/// [maxRequestDuration] must be between 30 minutes and 7 days
/// (`1800s` … `604800s`). Prefer an in-stack service account in
/// [eligibleUsers] — a Google Group cannot be created via Terraform.
///
/// Enable `privilegedaccessmanager.googleapis.com` via
/// [GoogleProjectService] before apply. Set [deletionPolicy] to
/// `DELETE` so destroy removes the unused entitlement.
///
/// Example:
/// ```dart
/// GooglePrivilegedAccessManagerEntitlement(
///   localName: 'viewer',
///   location: TfArg.literal('global'),
///   entitlementId: TfArg.literal('terradart-pam'),
///   parent: TfArg.literal('projects/my-project'),
///   maxRequestDuration: TfArg.literal('1800s'),
///   eligibleUsers: [
///     PrivilegedAccessManagerEntitlementEligibleUsers(
///       principals: TfArg.literal([
///         'serviceAccount:pam-requester@my-project.iam.gserviceaccount.com',
///       ]),
///     ),
///   ],
///   privilegedAccess:
///       PrivilegedAccessManagerEntitlementPrivilegedAccess(
///     gcpIamAccess:
///         PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccess(
///       resourceType: TfArg.literal(
///         'cloudresourcemanager.googleapis.com/Project',
///       ),
///       resource: TfArg.literal(
///         '//cloudresourcemanager.googleapis.com/projects/my-project',
///       ),
///       roleBindings: [
///         PrivilegedAccessManagerEntitlementPrivilegedAccessGcpIamAccessRoleBindings(
///           role: TfArg.literal('roles/browser'),
///         ),
///       ],
///     ),
///   ),
///   requesterJustificationConfig:
///       PrivilegedAccessManagerEntitlementRequesterJustificationConfig(
///     unstructured:
///         const PrivilegedAccessManagerEntitlementRequesterJustificationConfigUnstructured(),
///   ),
///   deletionPolicy: TfArg.literal('DELETE'),
/// );
/// ```
final class GooglePrivilegedAccessManagerEntitlement extends Resource {
  static const String tfType = 'google_privileged_access_manager_entitlement';

  GooglePrivilegedAccessManagerEntitlement({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> entitlementId,
    required TfArg<String> parent,
    required TfArg<String> maxRequestDuration,
    required List<PrivilegedAccessManagerEntitlementEligibleUsers>
    eligibleUsers,
    required PrivilegedAccessManagerEntitlementPrivilegedAccess
    privilegedAccess,
    required PrivilegedAccessManagerEntitlementRequesterJustificationConfig
    requesterJustificationConfig,
    PrivilegedAccessManagerEntitlementApprovalWorkflow? approvalWorkflow,
    PrivilegedAccessManagerEntitlementAdditionalNotificationTargets?
    additionalNotificationTargets,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'entitlement_id': entitlementId,
           'parent': parent,
           'max_request_duration': maxRequestDuration,
           'eligible_users': TfArg.literal([
             for (final e in eligibleUsers) e.encode(),
           ]),
           'privileged_access': TfArg.literal(privilegedAccess.encode()),
           'requester_justification_config': TfArg.literal(
             requesterJustificationConfig.encode(),
           ),
           if (approvalWorkflow != null)
             'approval_workflow': TfArg.literal(approvalWorkflow.encode()),
           if (additionalNotificationTargets != null)
             'additional_notification_targets': TfArg.literal(
               additionalNotificationTargets.encode(),
             ),
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivilegedAccessManagerEntitlementSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
