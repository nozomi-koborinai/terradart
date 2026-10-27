// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_workspace_extended_auditing_policy`.
const Set<String> _azurermSynapseWorkspaceExtendedAuditingPolicySensitive =
    <String>{'storage_account_access_key'};

/// Factory wrapper for `azurerm_synapse_workspace_extended_auditing_policy`.
final class AzurermSynapseWorkspaceExtendedAuditingPolicy extends Resource {
  static const String tfType =
      'azurerm_synapse_workspace_extended_auditing_policy';

  AzurermSynapseWorkspaceExtendedAuditingPolicy(
    super.localName, {
    TfArg<bool>? logMonitoringEnabled,
    TfArg<num>? retentionInDays,
    Sensitive<String>? storageAccountAccessKey,
    TfArg<bool>? storageAccountAccessKeyIsSecondary,
    TfArg<String>? storageEndpoint,
    required TfArg<String> synapseWorkspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_monitoring_enabled': ?logMonitoringEnabled,
           'retention_in_days': ?retentionInDays,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_account_access_key_is_secondary':
               ?storageAccountAccessKeyIsSecondary,
           'storage_endpoint': ?storageEndpoint,
           'synapse_workspace_id': synapseWorkspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseWorkspaceExtendedAuditingPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseWorkspaceExtendedAuditingPolicy>`.
  RefTo<AzurermSynapseWorkspaceExtendedAuditingPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_monitoring_enabled` attribute.
  TfRef<bool> get logMonitoringEnabled =>
      TfRef.attribute<bool>(this, 'log_monitoring_enabled');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_account_access_key_is_secondary` attribute.
  TfRef<bool> get storageAccountAccessKeyIsSecondary =>
      TfRef.attribute<bool>(this, 'storage_account_access_key_is_secondary');

  /// Reference to `storage_endpoint` attribute.
  TfRef<String> get storageEndpoint =>
      TfRef.attribute<String>(this, 'storage_endpoint');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');
}
