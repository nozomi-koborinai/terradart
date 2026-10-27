// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_protection_backup_policy_disk`.
const Set<String> _azurermDataProtectionBackupPolicyDiskSensitive = <String>{};

/// Typed helper for the `retention_rule` block of
/// `azurerm_data_protection_backup_policy_disk` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyDiskRetentionRule {
  const DataProtectionBackupPolicyDiskRetentionRule({
    required this.duration,
    required this.name,
    required this.priority,
    required this.criteria,
  });

  final TfArg<String> duration;

  final TfArg<String> name;

  final TfArg<num> priority;

  final DataProtectionBackupPolicyDiskCriteria criteria;

  @internal
  Map<String, Object?> encode() => {
    'duration': duration.toTfJson(),
    'name': name.toTfJson(),
    'priority': priority.toTfJson(),
    'criteria': criteria.encode(),
  };
}

/// Typed helper for the `retention_rule.criteria` block of
/// `azurerm_data_protection_backup_policy_disk` (derived from provider schema).
@immutable
final class DataProtectionBackupPolicyDiskCriteria {
  const DataProtectionBackupPolicyDiskCriteria({this.absoluteCriteria});

  final TfArg<String>? absoluteCriteria;

  @internal
  Map<String, Object?> encode() => {
    'absolute_criteria': ?absoluteCriteria?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_protection_backup_policy_disk`.
final class AzurermDataProtectionBackupPolicyDisk extends Resource {
  static const String tfType = 'azurerm_data_protection_backup_policy_disk';

  AzurermDataProtectionBackupPolicyDisk(
    super.localName, {
    required TfArg<List<String>> backupRepeatingTimeIntervals,
    required TfArg<String> defaultRetentionDuration,
    required TfArg<String> name,
    TfArg<String>? timeZone,
    required TfArg<String> vaultId,
    List<DataProtectionBackupPolicyDiskRetentionRule>? retentionRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backup_repeating_time_intervals': backupRepeatingTimeIntervals,
           'default_retention_duration': defaultRetentionDuration,
           'name': name,
           'time_zone': ?timeZone,
           'vault_id': vaultId,
           if (retentionRule != null)
             'retention_rule': TfArg.literal([
               for (final e in retentionRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataProtectionBackupPolicyDiskSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataProtectionBackupPolicyDisk>`.
  RefTo<AzurermDataProtectionBackupPolicyDisk> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backup_repeating_time_intervals` attribute.
  TfRef<List<String>> get backupRepeatingTimeIntervals =>
      TfRef.attribute<List<String>>(this, 'backup_repeating_time_intervals');

  /// Reference to `default_retention_duration` attribute.
  TfRef<String> get defaultRetentionDuration =>
      TfRef.attribute<String>(this, 'default_retention_duration');

  /// Reference to `time_zone` attribute.
  TfRef<String> get timeZone => TfRef.attribute<String>(this, 'time_zone');

  /// Reference to `vault_id` attribute.
  TfRef<String> get vaultId => TfRef.attribute<String>(this, 'vault_id');
}
