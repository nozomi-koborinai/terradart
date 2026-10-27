// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mssql_managed_instance_security_alert_policy`.
const Set<String> _azurermMssqlManagedInstanceSecurityAlertPolicySensitive =
    <String>{'storage_account_access_key'};

/// Mssql Managed Instance Security Alert Policy Disabled enum for `disabled_alerts`.
extension type const MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
  TfArg<String> _
) implements TfArg<String> {
  MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts.variable(String name)
    : this._(TfArg.variable(name));
  MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const sqlInjection =
      MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Sql_Injection'),
      );
  static const sqlInjectionVulnerability =
      MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Sql_Injection_Vulnerability'),
      );
  static const accessAnomaly =
      MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Access_Anomaly'),
      );
  static const dataExfiltration =
      MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Data_Exfiltration'),
      );
  static const unsafeAction =
      MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Unsafe_Action'),
      );
  static const bruteForce =
      MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts._(
        TfArgLiteral('Brute_Force'),
      );

  static const List<MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts>
  values = [
    sqlInjection,
    sqlInjectionVulnerability,
    accessAnomaly,
    dataExfiltration,
    unsafeAction,
    bruteForce,
  ];
}

/// Factory wrapper for `azurerm_mssql_managed_instance_security_alert_policy`.
final class AzurermMssqlManagedInstanceSecurityAlertPolicy extends Resource {
  static const String tfType =
      'azurerm_mssql_managed_instance_security_alert_policy';

  AzurermMssqlManagedInstanceSecurityAlertPolicy(
    super.localName, {
    List<MssqlManagedInstanceSecurityAlertPolicyDisabledAlerts>? disabledAlerts,
    TfArg<bool>? emailAccountAdminsEnabled,
    TfArg<List<String>>? emailAddresses,
    TfArg<bool>? enabled,
    required TfArg<String> managedInstanceName,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? retentionDays,
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
           'enabled': ?enabled,
           'managed_instance_name': managedInstanceName,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_days': ?retentionDays,
           'storage_account_access_key': ?storageAccountAccessKey,
           'storage_endpoint': ?storageEndpoint,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlManagedInstanceSecurityAlertPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedInstanceSecurityAlertPolicy>`.
  RefTo<AzurermMssqlManagedInstanceSecurityAlertPolicy> get ref =>
      RefTo.of(this);

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

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `managed_instance_name` attribute.
  TfRef<String> get managedInstanceName =>
      TfRef.attribute<String>(this, 'managed_instance_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_days` attribute.
  TfRef<num> get retentionDays => TfRef.attribute<num>(this, 'retention_days');

  /// Reference to `storage_account_access_key` attribute.
  TfRef<String> get storageAccountAccessKey =>
      TfRef.attribute<String>(this, 'storage_account_access_key');

  /// Reference to `storage_endpoint` attribute.
  TfRef<String> get storageEndpoint =>
      TfRef.attribute<String>(this, 'storage_endpoint');
}
