// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_backup_dr_auto_protection_policy`.
const Set<String> _googleBackupDrAutoProtectionPolicySensitive = <String>{};

/// Typed helper for the `backup_plan_details` block of
/// `google_backup_dr_auto_protection_policy` (derived from provider schema).
@immutable
final class BackupDrAutoProtectionPolicyBackupPlanDetails {
  const BackupDrAutoProtectionPolicyBackupPlanDetails({
    required this.backupPlan,
    required this.resourceType,
  });

  final TfArg<String> backupPlan;

  final TfArg<String> resourceType;

  @internal
  Map<String, Object?> encode() => {
    'backup_plan': backupPlan.toTfJson(),
    'resource_type': resourceType.toTfJson(),
  };
}

/// Typed helper for the `criteria` block of
/// `google_backup_dr_auto_protection_policy` (derived from provider schema).
@immutable
final class BackupDrAutoProtectionPolicyCriteria {
  const BackupDrAutoProtectionPolicyCriteria({
    required this.matchingConditions,
  });

  final List<BackupDrAutoProtectionPolicyMatchingConditions> matchingConditions;

  @internal
  Map<String, Object?> encode() => {
    'matching_conditions': [for (final e in matchingConditions) e.encode()],
  };
}

/// Typed helper for the `criteria.matching_conditions` block of
/// `google_backup_dr_auto_protection_policy` (derived from provider schema).
@immutable
final class BackupDrAutoProtectionPolicyMatchingConditions {
  const BackupDrAutoProtectionPolicyMatchingConditions({this.labelCondition});

  final BackupDrAutoProtectionPolicyLabelCondition? labelCondition;

  @internal
  Map<String, Object?> encode() => {
    'label_condition': ?labelCondition?.encode(),
  };
}

/// Typed helper for the `criteria.matching_conditions.label_condition` block of
/// `google_backup_dr_auto_protection_policy` (derived from provider schema).
@immutable
final class BackupDrAutoProtectionPolicyLabelCondition {
  const BackupDrAutoProtectionPolicyLabelCondition({
    required this.key,
    required this.values,
  });

  final TfArg<String> key;

  final TfArg<List<String>> values;

  @internal
  Map<String, Object?> encode() => {
    'key': key.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `google_backup_dr_auto_protection_policy`.
///
/// An AutoProtectionPolicy automates backup management by applying a backup
/// plan to all eligible resources that match the policy's criteria, instead of
/// protecting each resource individually. A policy takes effect only after it
/// is attached to a scope, such as a project, with a
/// `google_backup_dr_auto_protection_policy_binding`.
final class GoogleBackupDrAutoProtectionPolicy extends Resource {
  static const String tfType = 'google_backup_dr_auto_protection_policy';

  GoogleBackupDrAutoProtectionPolicy(
    super.localName, {
    required TfArg<String> autoProtectionPolicyId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> location,
    TfArg<String>? project,
    required List<BackupDrAutoProtectionPolicyBackupPlanDetails>
    backupPlanDetails,
    required BackupDrAutoProtectionPolicyCriteria criteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_protection_policy_id': autoProtectionPolicyId,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'location': location,
           'project': ?project,
           'backup_plan_details': TfArg.literal([
             for (final e in backupPlanDetails) e.encode(),
           ]),
           'criteria': TfArg.literal(criteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBackupDrAutoProtectionPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBackupDrAutoProtectionPolicy>`.
  RefTo<GoogleBackupDrAutoProtectionPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `binding_summary` attribute.
  TfRef<List<Map<String, Object?>>> get bindingSummary =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'binding_summary');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_evaluation_summary` attribute.
  TfRef<List<Map<String, Object?>>> get policyEvaluationSummary =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'policy_evaluation_summary',
      );

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `auto_protection_policy_id` attribute.
  TfRef<String> get autoProtectionPolicyId =>
      TfRef.attribute<String>(this, 'auto_protection_policy_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
