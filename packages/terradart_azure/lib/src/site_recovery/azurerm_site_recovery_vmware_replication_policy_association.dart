// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_vmware_replication_policy_association`.
const Set<String>
_azurermSiteRecoveryVmwareReplicationPolicyAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_site_recovery_vmware_replication_policy_association`.
final class AzurermSiteRecoveryVmwareReplicationPolicyAssociation
    extends Resource {
  static const String tfType =
      'azurerm_site_recovery_vmware_replication_policy_association';

  AzurermSiteRecoveryVmwareReplicationPolicyAssociation(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> policyId,
    required TfArg<String> recoveryVaultId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_id': policyId,
           'recovery_vault_id': recoveryVaultId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryVmwareReplicationPolicyAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryVmwareReplicationPolicyAssociation>`.
  RefTo<AzurermSiteRecoveryVmwareReplicationPolicyAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `recovery_vault_id` attribute.
  TfRef<String> get recoveryVaultId =>
      TfRef.attribute<String>(this, 'recovery_vault_id');
}
