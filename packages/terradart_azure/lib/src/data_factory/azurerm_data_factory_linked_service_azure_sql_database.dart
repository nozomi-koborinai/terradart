// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_sql_database`.
const Set<String> _azurermDataFactoryLinkedServiceAzureSqlDatabaseSensitive =
    <String>{};

/// Exactly one of `connection_string`, `key_vault_connection_string` on `azurerm_data_factory_linked_service_azure_sql_database`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class DataFactoryLinkedServiceAzureSqlDatabaseConnection {
  const DataFactoryLinkedServiceAzureSqlDatabaseConnection();

  /// Sets `connection_string`.
  const factory DataFactoryLinkedServiceAzureSqlDatabaseConnection.connectionString(
    TfArg<String> connectionString,
  ) = DataFactoryLinkedServiceAzureSqlDatabaseConnectionString;

  /// Sets `key_vault_connection_string`.
  const factory DataFactoryLinkedServiceAzureSqlDatabaseConnection.keyVaultConnectionString(
    DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultConnectionString
    keyVaultConnectionString,
  ) = DataFactoryLinkedServiceAzureSqlDatabaseConnectionKeyVaultConnectionString;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataFactoryLinkedServiceAzureSqlDatabaseConnection.connectionString] choice: sets `connection_string`.
final class DataFactoryLinkedServiceAzureSqlDatabaseConnectionString
    extends DataFactoryLinkedServiceAzureSqlDatabaseConnection {
  const DataFactoryLinkedServiceAzureSqlDatabaseConnectionString(
    this.connectionString,
  );

  final TfArg<String> connectionString;

  @internal
  @override
  String get blockKey => 'connection_string';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'connection_string': connectionString,
  };
}

/// The [DataFactoryLinkedServiceAzureSqlDatabaseConnection.keyVaultConnectionString] choice: sets `key_vault_connection_string`.
final class DataFactoryLinkedServiceAzureSqlDatabaseConnectionKeyVaultConnectionString
    extends DataFactoryLinkedServiceAzureSqlDatabaseConnection {
  const DataFactoryLinkedServiceAzureSqlDatabaseConnectionKeyVaultConnectionString(
    this.keyVaultConnectionString,
  );

  final DataFactoryLinkedServiceAzureSqlDatabaseKeyVaultConnectionString
  keyVaultConnectionString;

  @internal
  @override
  String get blockKey => 'key_vault_connection_string';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_connection_string': keyVaultConnectionString.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_connection_string': TfArg.literal(
      keyVaultConnectionString.encode(),
    ),
  };
}

/// At most one of `service_principal_id`, `use_managed_identity` on `azurerm_data_factory_linked_service_azure_sql_database`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.servicePrincipalId(...)`.
sealed class DataFactoryLinkedServiceAzureSqlDatabaseAuthentication {
  const DataFactoryLinkedServiceAzureSqlDatabaseAuthentication();

  /// Sets `service_principal_id`.
  const factory DataFactoryLinkedServiceAzureSqlDatabaseAuthentication.servicePrincipalId(
    TfArg<String> servicePrincipalId,
  ) = DataFactoryLinkedServiceAzureSqlDatabaseAuthenticationServicePrincipalId;

  /// Sets `use_managed_identity`.
  const factory DataFactoryLinkedServiceAzureSqlDatabaseAuthentication.useManagedIdentity(
    TfArg<bool> useManagedIdentity,
  ) = DataFactoryLinkedServiceAzureSqlDatabaseAuthenticationUseManagedIdentity;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataFactoryLinkedServiceAzureSqlDatabaseAuthentication.servicePrincipalId] choice: sets `service_principal_id`.
final class DataFactoryLinkedServiceAzureSqlDatabaseAuthenticationServicePrincipalId
    extends DataFactoryLinkedServiceAzureSqlDatabaseAuthentication {
  const DataFactoryLinkedServiceAzureSqlDatabaseAuthenticationServicePrincipalId(
    this.servicePrincipalId,
  );

  final TfArg<String> servicePrincipalId;

  @internal
  @override
  String get blockKey => 'service_principal_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_principal_id': servicePrincipalId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_principal_id': servicePrincipalId,
  };
}

/// The [DataFactoryLinkedServiceAzureSqlDatabaseAuthentication.useManagedIdentity] choice: sets `use_managed_identity`.
final class DataFactoryLinkedServiceAzureSqlDatabaseAuthenticationUseManagedIdentity
    extends DataFactoryLinkedServiceAzureSqlDatabaseAuthentication {
  const DataFactoryLinkedServiceAzureSqlDatabaseAuthenticationUseManagedIdentity(
    this.useManagedIdentity,
  );

  final TfArg<bool> useManagedIdentity;

  @internal
  @override
  String get blockKey => 'use_managed_identity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'use_managed_identity': useManagedIdentity.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'use_managed_identity': useManagedIdentity,
  };
}

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
    required DataFactoryLinkedServiceAzureSqlDatabaseConnection connection,
    TfArg<String>? credentialName,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryLinkedServiceAzureSqlDatabaseAuthentication? authentication,
    TfArg<String>? servicePrincipalKey,
    TfArg<String>? tenantId,
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
           ...connection.argMap,
           'credential_name': ?credentialName,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           ...?authentication?.argMap,
           'service_principal_key': ?servicePrincipalKey,
           'tenant_id': ?tenantId,
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
