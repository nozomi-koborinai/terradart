// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_site_recovery_protection_container_mapping`.
const Set<String> _azurermSiteRecoveryProtectionContainerMappingSensitive =
    <String>{};

/// Typed helper for the `automatic_update` block of
/// `azurerm_site_recovery_protection_container_mapping` (derived from provider schema).
@immutable
final class SiteRecoveryProtectionContainerMappingAutomaticUpdate {
  const SiteRecoveryProtectionContainerMappingAutomaticUpdate({
    this.authenticationType,
    required this.automationAccountId,
  });

  final SiteRecoveryProtectionContainerMappingAuthenticationType?
  authenticationType;

  final TfArg<String> automationAccountId;

  @internal
  Map<String, Object?> encode() => {
    'authentication_type': ?authenticationType?.toTfJson(),
    'automation_account_id': automationAccountId.toTfJson(),
  };
}

/// `authentication_type` — derived from the provider schema description.
extension type const SiteRecoveryProtectionContainerMappingAuthenticationType._(
  TfArg<String> _
) implements TfArg<String> {
  SiteRecoveryProtectionContainerMappingAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  SiteRecoveryProtectionContainerMappingAuthenticationType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const SiteRecoveryProtectionContainerMappingAuthenticationType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const runasaccount =
      SiteRecoveryProtectionContainerMappingAuthenticationType._(
        TfArgLiteral('RunAsAccount'),
      );
  static const systemassignedidentity =
      SiteRecoveryProtectionContainerMappingAuthenticationType._(
        TfArgLiteral('SystemAssignedIdentity'),
      );

  static const List<SiteRecoveryProtectionContainerMappingAuthenticationType>
  values = [runasaccount, systemassignedidentity];
}

/// Factory wrapper for `azurerm_site_recovery_protection_container_mapping`.
final class AzurermSiteRecoveryProtectionContainerMapping extends Resource {
  static const String tfType =
      'azurerm_site_recovery_protection_container_mapping';

  AzurermSiteRecoveryProtectionContainerMapping(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> recoveryFabricName,
    required TfArg<String> recoveryReplicationPolicyId,
    required TfArg<String> recoverySourceProtectionContainerName,
    required TfArg<String> recoveryTargetProtectionContainerId,
    required TfArg<String> recoveryVaultName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    SiteRecoveryProtectionContainerMappingAutomaticUpdate? automaticUpdate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'recovery_fabric_name': recoveryFabricName,
           'recovery_replication_policy_id': recoveryReplicationPolicyId,
           'recovery_source_protection_container_name':
               recoverySourceProtectionContainerName,
           'recovery_target_protection_container_id':
               recoveryTargetProtectionContainerId,
           'recovery_vault_name': recoveryVaultName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (automaticUpdate != null)
             'automatic_update': TfArg.literal(automaticUpdate.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSiteRecoveryProtectionContainerMappingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSiteRecoveryProtectionContainerMapping>`.
  RefTo<AzurermSiteRecoveryProtectionContainerMapping> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `recovery_fabric_name` attribute.
  TfRef<String> get recoveryFabricName =>
      TfRef.attribute<String>(this, 'recovery_fabric_name');

  /// Reference to `recovery_replication_policy_id` attribute.
  TfRef<String> get recoveryReplicationPolicyId =>
      TfRef.attribute<String>(this, 'recovery_replication_policy_id');

  /// Reference to `recovery_source_protection_container_name` attribute.
  TfRef<String> get recoverySourceProtectionContainerName =>
      TfRef.attribute<String>(
        this,
        'recovery_source_protection_container_name',
      );

  /// Reference to `recovery_target_protection_container_id` attribute.
  TfRef<String> get recoveryTargetProtectionContainerId =>
      TfRef.attribute<String>(this, 'recovery_target_protection_container_id');

  /// Reference to `recovery_vault_name` attribute.
  TfRef<String> get recoveryVaultName =>
      TfRef.attribute<String>(this, 'recovery_vault_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
