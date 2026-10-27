// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_server_security_alert_policy`.
const Set<String> _azurermMssqlServerSecurityAlertPolicySensitive = <String>{
  'storage_account_access_key',
};

/// Mssql Server Security Alert Policy Disabled enum for `disabled_alerts`.
extension type const MssqlServerSecurityAlertPolicyDisabledAlerts._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlServerSecurityAlertPolicyDisabledAlerts.variable(String name)
    : this._(TfArg.variable(name));
  MssqlServerSecurityAlertPolicyDisabledAlerts.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlServerSecurityAlertPolicyDisabledAlerts.arg(TfArg<String> arg)
    : this._(arg);

  static const sqlInjection = MssqlServerSecurityAlertPolicyDisabledAlerts._(
    TfArgLiteral('Sql_Injection'),
  );
  static const sqlInjectionVulnerability =
      MssqlServerSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Sql_Injection_Vulnerability'),
      );
  static const accessAnomaly = MssqlServerSecurityAlertPolicyDisabledAlerts._(
    TfArgLiteral('Access_Anomaly'),
  );
  static const dataExfiltration =
      MssqlServerSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Data_Exfiltration'),
      );
  static const unsafeAction = MssqlServerSecurityAlertPolicyDisabledAlerts._(
    TfArgLiteral('Unsafe_Action'),
  );

  static const List<MssqlServerSecurityAlertPolicyDisabledAlerts> values = [
    sqlInjection,
    sqlInjectionVulnerability,
    accessAnomaly,
    dataExfiltration,
    unsafeAction,
  ];
}

/// Mssql Server Security Alert Policy enum for `state`.
extension type const MssqlServerSecurityAlertPolicyState._(TfArg<String> _)
    implements TfArg<String> {
  MssqlServerSecurityAlertPolicyState.variable(String name)
    : this._(TfArg.variable(name));
  MssqlServerSecurityAlertPolicyState.expression(String template)
    : this._(TfArg.expression(template));
  const MssqlServerSecurityAlertPolicyState.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = MssqlServerSecurityAlertPolicyState._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = MssqlServerSecurityAlertPolicyState._(
    TfArgLiteral('Enabled'),
  );

  static const List<MssqlServerSecurityAlertPolicyState> values = [
    disabled,
    enabled,
  ];
}

/// Factory wrapper for `azurerm_mssql_server_security_alert_policy`.
final class AzurermMssqlServerSecurityAlertPolicy extends Resource {
  static const String tfType = 'azurerm_mssql_server_security_alert_policy';

  AzurermMssqlServerSecurityAlertPolicy(
    super.localName, {
    List<MssqlServerSecurityAlertPolicyDisabledAlerts>? disabledAlerts,
    TfArg<bool>? emailAccountAdminsEnabled,
    TfArg<List<String>>? emailAddresses,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? retentionDays,
    required TfArg<String> serverName,
    required MssqlServerSecurityAlertPolicyState state,
    Sensitive<String>? storageAccountAccessKey,
    TfArg<String>? storageEndpoint,
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
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_days': ?retentionDays,
           'server_name': serverName,
           'state': state,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_endpoint': ?storageEndpoint,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlServerSecurityAlertPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlServerSecurityAlertPolicy>`.
  RefTo<AzurermMssqlServerSecurityAlertPolicy> get ref => RefTo.of(this);

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

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_days` attribute.
  TfRef<num> get retentionDays => TfRef.attribute<num>(this, 'retention_days');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_endpoint` attribute.
  TfRef<String> get storageEndpoint =>
      TfRef.attribute<String>(this, 'storage_endpoint');
}
