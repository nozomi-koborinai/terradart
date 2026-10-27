// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_managed_instance_active_directory_administrator`.
const Set<String>
_azurermMssqlManagedInstanceActiveDirectoryAdministratorSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_managed_instance_active_directory_administrator`.
final class AzurermMssqlManagedInstanceActiveDirectoryAdministrator
    extends Resource {
  static const String tfType =
      'azurerm_mssql_managed_instance_active_directory_administrator';

  AzurermMssqlManagedInstanceActiveDirectoryAdministrator(
    super.localName, {
    TfArg<bool>? azureadAuthenticationOnly,
    required TfArg<String> loginUsername,
    required TfArg<String> managedInstanceId,
    required TfArg<String> objectId,
    required TfArg<String> tenantId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'azuread_authentication_only': ?azureadAuthenticationOnly,
           'login_username': loginUsername,
           'managed_instance_id': managedInstanceId,
           'object_id': objectId,
           'tenant_id': tenantId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMssqlManagedInstanceActiveDirectoryAdministratorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlManagedInstanceActiveDirectoryAdministrator>`.
  RefTo<AzurermMssqlManagedInstanceActiveDirectoryAdministrator> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `azuread_authentication_only` attribute.
  TfRef<bool> get azureadAuthenticationOnly =>
      TfRef.attribute<bool>(this, 'azuread_authentication_only');

  /// Reference to `login_username` attribute.
  TfRef<String> get loginUsername =>
      TfRef.attribute<String>(this, 'login_username');

  /// Reference to `managed_instance_id` attribute.
  TfRef<String> get managedInstanceId =>
      TfRef.attribute<String>(this, 'managed_instance_id');

  /// Reference to `object_id` attribute.
  TfRef<String> get objectId => TfRef.attribute<String>(this, 'object_id');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');
}
