// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_hyperv_replication_policy`.
const Set<String> _azurermSiteRecoveryHypervReplicationPolicySensitive =
    <String>{};

/// Factory wrapper for `azurerm_site_recovery_hyperv_replication_policy`.
final class AzurermSiteRecoveryHypervReplicationPolicy extends Resource {
  static const String tfType =
      'azurerm_site_recovery_hyperv_replication_policy';

  AzurermSiteRecoveryHypervReplicationPolicy(
    super.localName, {
    required TfArg<num> applicationConsistentSnapshotFrequencyInHours,
    required TfArg<String> name,
    required TfArg<num> recoveryPointRetentionInHours,
    required TfArg<String> recoveryVaultId,
    required TfArg<num> replicationIntervalInSeconds,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_consistent_snapshot_frequency_in_hours':
               applicationConsistentSnapshotFrequencyInHours,
           'name': name,
           'recovery_point_retention_in_hours': recoveryPointRetentionInHours,
           'recovery_vault_id': recoveryVaultId,
           'replication_interval_in_seconds': replicationIntervalInSeconds,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryHypervReplicationPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryHypervReplicationPolicy>`.
  RefTo<AzurermSiteRecoveryHypervReplicationPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_consistent_snapshot_frequency_in_hours` attribute.
  TfRef<num> get applicationConsistentSnapshotFrequencyInHours =>
      TfRef.attribute<num>(
        this,
        'application_consistent_snapshot_frequency_in_hours',
      );

  /// Reference to `recovery_point_retention_in_hours` attribute.
  TfRef<num> get recoveryPointRetentionInHours =>
      TfRef.attribute<num>(this, 'recovery_point_retention_in_hours');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');

  /// Reference to `replication_interval_in_seconds` attribute.
  TfRef<num> get replicationIntervalInSeconds =>
      TfRef.attribute<num>(this, 'replication_interval_in_seconds');
}
