// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_sql_server`.
const Set<String> _azurermDataFactoryLinkedServiceSqlServerSensitive =
    <String>{};

/// Exactly one of `connection_string`, `key_vault_connection_string` on `azurerm_data_factory_linked_service_sql_server`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class DataFactoryLinkedServiceSqlServerConnection {
  const DataFactoryLinkedServiceSqlServerConnection();

  /// Sets `connection_string`.
  const factory DataFactoryLinkedServiceSqlServerConnection.connectionString(
    TfArg<String> connectionString,
  ) = DataFactoryLinkedServiceSqlServerConnectionString;

  /// Sets `key_vault_connection_string`.
  const factory DataFactoryLinkedServiceSqlServerConnection.keyVaultConnectionString(
    DataFactoryLinkedServiceSqlServerKeyVaultConnectionString
    keyVaultConnectionString,
  ) = DataFactoryLinkedServiceSqlServerConnectionKeyVaultConnectionString;

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

/// The [DataFactoryLinkedServiceSqlServerConnection.connectionString] choice: sets `connection_string`.
final class DataFactoryLinkedServiceSqlServerConnectionString
    extends DataFactoryLinkedServiceSqlServerConnection {
  const DataFactoryLinkedServiceSqlServerConnectionString(
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

/// The [DataFactoryLinkedServiceSqlServerConnection.keyVaultConnectionString] choice: sets `key_vault_connection_string`.
final class DataFactoryLinkedServiceSqlServerConnectionKeyVaultConnectionString
    extends DataFactoryLinkedServiceSqlServerConnection {
  const DataFactoryLinkedServiceSqlServerConnectionKeyVaultConnectionString(
    this.keyVaultConnectionString,
  );

  final DataFactoryLinkedServiceSqlServerKeyVaultConnectionString
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
/// `azurerm_data_factory_linked_service_sql_server` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSqlServerKeyVaultConnectionString {
  const DataFactoryLinkedServiceSqlServerKeyVaultConnectionString({
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
/// `azurerm_data_factory_linked_service_sql_server` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSqlServerKeyVaultPassword {
  const DataFactoryLinkedServiceSqlServerKeyVaultPassword({
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

/// Factory wrapper for `azurerm_data_factory_linked_service_sql_server`.
final class AzurermDataFactoryLinkedServiceSqlServer extends Resource {
  static const String tfType = 'azurerm_data_factory_linked_service_sql_server';

  AzurermDataFactoryLinkedServiceSqlServer(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required DataFactoryLinkedServiceSqlServerConnection connection,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    TfArg<String>? userName,
    DataFactoryLinkedServiceSqlServerKeyVaultPassword? keyVaultPassword,
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
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'user_name': ?userName,
           if (keyVaultPassword != null)
             'key_vault_password': TfArg.literal(keyVaultPassword.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceSqlServerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceSqlServer>`.
  RefTo<AzurermDataFactoryLinkedServiceSqlServer> get ref => RefTo.of(this);

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

  /// Reference to `user_name` attribute.
  TfRef<String> get userName => TfRef.attribute<String>(this, 'user_name');
}
