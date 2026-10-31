// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_sql_pool_security_alert_policy`.
const Set<String> _azurermSynapseSqlPoolSecurityAlertPolicySensitive = <String>{
  'storage_account_access_key',
};

/// Synapse Sql Pool Security Alert Policy Disabled enum for `disabled_alerts`.
extension type const SynapseSqlPoolSecurityAlertPolicyDisabledAlerts._(
  TfArg<String> _
) implements TfArg<String> {
  SynapseSqlPoolSecurityAlertPolicyDisabledAlerts.variable(String name)
    : this._(TfArg.variable(name));
  SynapseSqlPoolSecurityAlertPolicyDisabledAlerts.expression(String template)
    : this._(TfArg.expression(template));
  const SynapseSqlPoolSecurityAlertPolicyDisabledAlerts.arg(TfArg<String> arg)
    : this._(arg);

  static const sqlInjection = SynapseSqlPoolSecurityAlertPolicyDisabledAlerts._(
    TfArgLiteral('Sql_Injection'),
  );
  static const sqlInjectionVulnerability =
      SynapseSqlPoolSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Sql_Injection_Vulnerability'),
      );
  static const accessAnomaly =
      SynapseSqlPoolSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Access_Anomaly'),
      );
  static const dataExfiltration =
      SynapseSqlPoolSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Data_Exfiltration'),
      );
  static const unsafeAction = SynapseSqlPoolSecurityAlertPolicyDisabledAlerts._(
    TfArgLiteral('Unsafe_Action'),
  );

  static const List<SynapseSqlPoolSecurityAlertPolicyDisabledAlerts> values = [
    sqlInjection,
    sqlInjectionVulnerability,
    accessAnomaly,
    dataExfiltration,
    unsafeAction,
  ];
}

/// Factory wrapper for `azurerm_synapse_sql_pool_security_alert_policy`.
final class AzurermSynapseSqlPoolSecurityAlertPolicy extends Resource {
  static const String tfType = 'azurerm_synapse_sql_pool_security_alert_policy';

  AzurermSynapseSqlPoolSecurityAlertPolicy(
    super.localName, {
    EnumList<SynapseSqlPoolSecurityAlertPolicyDisabledAlerts>? disabledAlerts,
    TfArg<bool>? emailAccountAdminsEnabled,
    TfArg<List<String>>? emailAddresses,
    required TfArg<String> policyState,
    TfArg<num>? retentionDays,
    required TfArg<String> sqlPoolId,
    Sensitive<String>? storageAccountAccessKey,
    TfArg<String>? storageEndpoint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disabled_alerts': ?disabledAlerts,
           'email_account_admins_enabled': ?emailAccountAdminsEnabled,
           'email_addresses': ?emailAddresses,
           'policy_state': policyState,
           'retention_days': ?retentionDays,
           'sql_pool_id': sqlPoolId,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_endpoint': ?storageEndpoint,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSynapseSqlPoolSecurityAlertPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseSqlPoolSecurityAlertPolicy>`.
  RefTo<AzurermSynapseSqlPoolSecurityAlertPolicy> get ref => RefTo.of(this);

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

  /// Reference to `sql_pool_id` attribute.
  TfRef<String> get sqlPoolId => TfRef.attribute<String>(this, 'sql_pool_id');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_endpoint` attribute.
  TfRef<String> get storageEndpoint =>
      TfRef.attribute<String>(this, 'storage_endpoint');
}
