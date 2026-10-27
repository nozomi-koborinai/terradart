// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_vmware_replication_policy`.
const Set<String> _azurermSiteRecoveryVmwareReplicationPolicySensitive =
    <String>{};

/// Factory wrapper for `azurerm_site_recovery_vmware_replication_policy`.
final class AzurermSiteRecoveryVmwareReplicationPolicy extends Resource {
  static const String tfType =
      'azurerm_site_recovery_vmware_replication_policy';

  AzurermSiteRecoveryVmwareReplicationPolicy(
    super.localName, {
    required TfArg<num> applicationConsistentSnapshotFrequencyInMinutes,
    required TfArg<String> name,
    required TfArg<num> recoveryPointRetentionInMinutes,
    required TfArg<String> recoveryVaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_consistent_snapshot_frequency_in_minutes':
               applicationConsistentSnapshotFrequencyInMinutes,
           'name': name,
           'recovery_point_retention_in_minutes':
               recoveryPointRetentionInMinutes,
           'recovery_vault_id': recoveryVaultId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryVmwareReplicationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryVmwareReplicationPolicy>`.
  RefTo<AzurermSiteRecoveryVmwareReplicationPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_consistent_snapshot_frequency_in_minutes` attribute.
  TfRef<num> get applicationConsistentSnapshotFrequencyInMinutes =>
      TfRef.attribute<num>(
        this,
        'application_consistent_snapshot_frequency_in_minutes',
      );

  /// Reference to `recovery_point_retention_in_minutes` attribute.
  TfRef<num> get recoveryPointRetentionInMinutes =>
      TfRef.attribute<num>(this, 'recovery_point_retention_in_minutes');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');
}
