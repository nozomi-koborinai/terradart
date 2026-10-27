// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_file_storage`.
const Set<String> _azurermDataFactoryLinkedServiceAzureFileStorageSensitive =
    <String>{'connection_string', 'password'};

/// Typed helper for the `key_vault_password` block of
/// `azurerm_data_factory_linked_service_azure_file_storage` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureFileStorageKeyVaultPassword {
  const DataFactoryLinkedServiceAzureFileStorageKeyVaultPassword({
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

/// Factory wrapper for `azurerm_data_factory_linked_service_azure_file_storage`.
final class AzurermDataFactoryLinkedServiceAzureFileStorage extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_azure_file_storage';

  AzurermDataFactoryLinkedServiceAzureFileStorage(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required Sensitive<String> connectionString,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? fileShare,
    TfArg<String>? host,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    Sensitive<String>? password,
    TfArg<String>? userId,
    DataFactoryLinkedServiceAzureFileStorageKeyVaultPassword? keyVaultPassword,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'connection_string': connectionString,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'file_share': ?fileShare,
           'host': ?host,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'password': ?password,
           'user_id': ?userId,
           if (keyVaultPassword != null)
             'key_vault_password': TfArg.literal(keyVaultPassword.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceAzureFileStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceAzureFileStorage>`.
  RefTo<AzurermDataFactoryLinkedServiceAzureFileStorage> get ref =>
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

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `file_share` attribute.
  TfRef<String> get fileShare => TfRef.attribute<String>(this, 'file_share');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `user_id` attribute.
  TfRef<String> get userId => TfRef.attribute<String>(this, 'user_id');
}
