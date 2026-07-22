// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_backup_policy`.
const Set<String> _googleNetappBackupPolicySensitive = <String>{};

/// Factory wrapper for `google_netapp_backup_policy`.
///
/// A backup policy is used to schedule backups at regular daily, weekly, or
/// monthly intervals. Backup policies allow you to attach a backup schedule to
/// a volume. The policy defines how many backups to retain at daily, weekly, or
/// monthly intervals.
///
/// NetApp Volumes **backup policy** (schedule limits for vaulted backups).
///
/// **Cost:** no Cloud Billing Catalog SKU for the policy itself under
/// `FC86-5113-7C81` — backup storage bills when backups exist (SKU
/// `DCB6-FE72-5443`). Deferred with the pool Wave (no apply-smoke
/// quickstart).
///
/// Example:
/// ```dart
/// GoogleNetappBackupPolicy(
///   localName: 'policy',
///   name: TfArg.literal('daily'),
///   location: TfArg.literal('us-central1'),
///   dailyBackupLimit: TfArg.literal(2),
///   weeklyBackupLimit: TfArg.literal(1),
///   monthlyBackupLimit: TfArg.literal(1),
///   enabled: TfArg.literal(true),
/// );
/// ```
final class GoogleNetappBackupPolicy extends Resource {
  static const String tfType = 'google_netapp_backup_policy';

  GoogleNetappBackupPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<num> dailyBackupLimit,
    required TfArg<num> weeklyBackupLimit,
    required TfArg<num> monthlyBackupLimit,
    TfArg<bool>? enabled,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'daily_backup_limit': dailyBackupLimit,
           'weekly_backup_limit': weeklyBackupLimit,
           'monthly_backup_limit': monthlyBackupLimit,
           if (enabled != null) 'enabled': enabled,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappBackupPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `assigned_volume_count` attribute.
  TfRef<num> get assignedVolumeCount =>
      TfRef.attribute<num>(this, 'assigned_volume_count');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
