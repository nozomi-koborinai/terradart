// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_sql_database`.
const Set<String> _azurermDataFactoryLinkedServiceAzureSqlDatabaseSensitive =
    <String>{};

/// Typed helper for the `key_vault_connection_string` block of
/// `azurerm_data_factory_linked_service_azure_sql_database` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultConnectionString {
  const DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultConnectionString({
    required this.linkedServiceName,
    required this.secretName,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Typed helper for the `key_vault_password` block of
/// `azurerm_data_factory_linked_service_azure_sql_database` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultPassword {
  const DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultPassword({
    required this.linkedServiceName,
    required this.secretName,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_linked_service_azure_sql_database`.
final class AzurermDataFactoryLinkedServiceAzureSqlDatabase extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_azure_sql_database';

  AzurermDataFactoryLinkedServiceAzureSqlDatabase(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    TfArg<String>? connectionString,
    TfArg<String>? credentialName,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? servicePrincipalId,
    TfArg<String>? servicePrincipalKey,
    TfArg<String>? tenantId,
    TfArg<bool>? useManagedIdentity,
    DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultConnectionString?
    keyVaultConnectionString,
    DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultPassword? keyVaultPassword,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'connection_string': ?connectionString,
           'credential_name': ?credentialName,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'service_principal_id': ?servicePrincipalId,
           'service_principal_key': ?servicePrincipalKey,
           'tenant_id': ?tenantId,
           'use_managed_identity': ?useManagedIdentity,
           if (keyVaultConnectionString != null)
             'key_vault_connection_string': TfArg.literal(
               keyVaultConnectionString.encode(),
             ),
           if (keyVaultPassword != null)
             'key_vault_password': TfArg.literal(keyVaultPassword.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceAzureSqlDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceAzureSqlDatabase>`.
  RefTo<AzurermDataFactoryLinkedServiceAzureSqlDatabase> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `credential_name` attribute.
  TfRef<String> get credentialName =>
      TfRef.attribute<String>(this, 'credential_name');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `service_principal_id` attribute.
  TfRef<String> get servicePrincipalId =>
      TfRef.attribute<String>(this, 'service_principal_id');

  /// Reference to `service_principal_key` attribute.
  TfRef<String> get servicePrincipalKey =>
      TfRef.attribute<String>(this, 'service_principal_key');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `use_managed_identity` attribute.
  TfRef<bool> get useManagedIdentity =>
      TfRef.attribute<bool>(this, 'use_managed_identity');
}
