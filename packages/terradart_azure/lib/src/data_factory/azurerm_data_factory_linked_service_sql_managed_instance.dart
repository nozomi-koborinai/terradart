// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_sql_managed_instance`.
const Set<String> _azurermDataFactoryLinkedServiceSqlManagedInstanceSensitive =
    <String>{'connection_string', 'service_principal_key'};

/// Exactly one of `connection_string`, `key_vault_connection_string` on `azurerm_data_factory_linked_service_sql_managed_instance`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString {
  const DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString();

  /// Sets `connection_string`.
  const factory DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString.connectionString(
    Sensitive<String> connectionString,
  ) = DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionStringChoice;

  /// Sets `key_vault_connection_string`.
  const factory DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString.keyVaultConnectionString(
    DataFactoryLinkedServiceSqlManagedInstanceKeyVaultConnectionString
    keyVaultConnectionString,
  ) = DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionStringOption;

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

/// The [DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString.connectionString] choice: sets `connection_string`.
final class DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionStringChoice
    extends
        DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString {
  const DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionStringChoice(
    this.connectionString,
  );

  final Sensitive<String> connectionString;

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

/// The [DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString.keyVaultConnectionString] choice: sets `key_vault_connection_string`.
final class DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionStringOption
    extends
        DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString {
  const DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionStringOption(
    this.keyVaultConnectionString,
  );

  final DataFactoryLinkedServiceSqlManagedInstanceKeyVaultConnectionString
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

/// Typed helper for the `key_vault_connection_string` block of
/// `azurerm_data_factory_linked_service_sql_managed_instance` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSqlManagedInstanceKeyVaultConnectionString {
  const DataFactoryLinkedServiceSqlManagedInstanceKeyVaultConnectionString({
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
/// `azurerm_data_factory_linked_service_sql_managed_instance` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSqlManagedInstanceKeyVaultPassword {
  const DataFactoryLinkedServiceSqlManagedInstanceKeyVaultPassword({
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

/// Factory wrapper for `azurerm_data_factory_linked_service_sql_managed_instance`.
final class AzurermDataFactoryLinkedServiceSqlManagedInstance extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_sql_managed_instance';

  AzurermDataFactoryLinkedServiceSqlManagedInstance(
    super.localName, {
    TfArg<List<String>>? annotations,
    required DataFactoryLinkedServiceSqlManagedInstanceConnectionStringOrKeyVaultConnectionString
    connectionStringOrKeyVaultConnectionString,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? servicePrincipalId,
    Sensitive<String>? servicePrincipalKey,
    TfArg<String>? tenant,
    DataFactoryLinkedServiceSqlManagedInstanceKeyVaultPassword?
    keyVaultPassword,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'annotations': ?annotations,
           ...connectionStringOrKeyVaultConnectionString.argMap,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'service_principal_id': ?servicePrincipalId,
           'service_principal_key': ?servicePrincipalKey,
           'tenant': ?tenant,
           if (keyVaultPassword != null)
             'key_vault_password': TfArg.literal(keyVaultPassword.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceSqlManagedInstanceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceSqlManagedInstance>`.
  RefTo<AzurermDataFactoryLinkedServiceSqlManagedInstance> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

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

  /// Reference to `tenant` attribute.
  TfRef<String> get tenant => TfRef.attribute<String>(this, 'tenant');
}
