// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../site_recovery/azurerm_site_recovery_replication_policy.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_site_recovery_replication_policy`.
const Set<String> _azurermSiteRecoveryReplicationPolicySensitive = <String>{};

/// Factory wrapper for `azurerm_site_recovery_replication_policy`.
final class DataAzurermSiteRecoveryReplicationPolicy extends Data {
  static const String tfType = 'azurerm_site_recovery_replication_policy';

  DataAzurermSiteRecoveryReplicationPolicy(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryReplicationPolicySensitive;

  /// A reference to the `azurerm_site_recovery_replication_policy` this data source reads, for
  /// arguments typed `RefTo<AzurermSiteRecoveryReplicationPolicy>`.
  RefTo<AzurermSiteRecoveryReplicationPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
