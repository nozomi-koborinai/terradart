// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_workspace_security_alert_policy`.
const Set<String> _azurermSynapseWorkspaceSecurityAlertPolicySensitive =
    <String>{'storage_account_access_key'};

/// Synapse Workspace Security Alert Policy Disabled enum for `disabled_alerts`.
extension type const SynapseWorkspaceSecurityAlertPolicyDisabledAlerts._(
  TfArg<String> _
) implements TfArg<String> {
  SynapseWorkspaceSecurityAlertPolicyDisabledAlerts.variable(String name)
    : this._(TfArg.variable(name));
  SynapseWorkspaceSecurityAlertPolicyDisabledAlerts.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseWorkspaceSecurityAlertPolicyDisabledAlerts.arg(TfArg<String> arg)
    : this._(arg);

  static const sqlInjection =
      SynapseWorkspaceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Sql_Injection'),
      );
  static const sqlInjectionVulnerability =
      SynapseWorkspaceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Sql_Injection_Vulnerability'),
      );
  static const accessAnomaly =
      SynapseWorkspaceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Access_Anomaly'),
      );
  static const dataExfiltration =
      SynapseWorkspaceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Data_Exfiltration'),
      );
  static const unsafeAction =
      SynapseWorkspaceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Unsafe_Action'),
      );

  static const List<SynapseWorkspaceSecurityAlertPolicyDisabledAlerts> values =
      [
        sqlInjection,
        sqlInjectionVulnerability,
        accessAnomaly,
        dataExfiltration,
        unsafeAction,
      ];
}

/// Factory wrapper for `azurerm_synapse_workspace_security_alert_policy`.
final class AzurermSynapseWorkspaceSecurityAlertPolicy extends Resource {
  static const String tfType =
      'azurerm_synapse_workspace_security_alert_policy';

  AzurermSynapseWorkspaceSecurityAlertPolicy(
    super.localName, {
    List<SynapseWorkspaceSecurityAlertPolicyDisabledAlerts>? disabledAlerts,
    TfArg<bool>? emailAccountAdminsEnabled,
    TfArg<List<String>>? emailAddresses,
    required TfArg<String> policyState,
    TfArg<num>? retentionDays,
    Sensitive<String>? storageAccountAccessKey,
    TfArg<String>? storageEndpoint,
    required TfArg<String> synapseWorkspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (disabledAlerts != null)
             'disabled_alerts': TfArg.literal([
               for (final e in disabledAlerts) e.toTfJson(),
             ]),
           'email_account_admins_enabled': ?emailAccountAdminsEnabled,
           'email_addresses': ?emailAddresses,
           'policy_state': policyState,
           'retention_days': ?retentionDays,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_endpoint': ?storageEndpoint,
           'synapse_workspace_id': synapseWorkspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseWorkspaceSecurityAlertPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseWorkspaceSecurityAlertPolicy>`.
  RefTo<AzurermSynapseWorkspaceSecurityAlertPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disabled_alerts` attribute.
  TfRef<List<String>> get disabledAlerts =>
      TfRef.attribute<List<String>>(this, 'disabled_alerts');

  /// Reference to `email_account_admins_enabled` attribute.
  TfRef<bool> get emailAccountAdminsEnabled =>
      TfRef.attribute<bool>(this, 'email_account_admins_enabled');

  /// Reference to `email_addresses` attribute.
  TfRef<List<String>> get emailAddresses =>
      TfRef.attribute<List<String>>(this, 'email_addresses');

  /// Reference to `policy_state` attribute.
  TfRef<String> get policyState =>
      TfRef.attribute<String>(this, 'policy_state');

  /// Reference to `retention_days` attribute.
  TfRef<num> get retentionDays => TfRef.attribute<num>(this, 'retention_days');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_endpoint` attribute.
  TfRef<String> get storageEndpoint =>
      TfRef.attribute<String>(this, 'storage_endpoint');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');
}
