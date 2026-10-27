// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_site_recovery_hyperv_replication_policy_association`.
const Set<String>
_azurermSiteRecoveryHypervReplicationPolicyAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_site_recovery_hyperv_replication_policy_association`.
final class AzurermSiteRecoveryHypervReplicationPolicyAssociation
    extends Resource {
  static const String tfType =
      'azurerm_site_recovery_hyperv_replication_policy_association';

  AzurermSiteRecoveryHypervReplicationPolicyAssociation(
    super.localName, {
    required TfArg<String> hypervSiteId,
    required TfArg<String> name,
    required TfArg<String> policyId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'hyperv_site_id': hypervSiteId,
           'name': name,
           'policy_id': policyId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryHypervReplicationPolicyAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryHypervReplicationPolicyAssociation>`.
  RefTo<AzurermSiteRecoveryHypervReplicationPolicyAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `hyperv_site_id` attribute.
  TfRef<String> get hypervSiteId =>
      TfRef.attribute<String>(this, 'hyperv_site_id');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');
}
