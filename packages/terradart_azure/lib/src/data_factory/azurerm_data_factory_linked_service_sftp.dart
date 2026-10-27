// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_sftp`.
const Set<String> _azurermDataFactoryLinkedServiceSftpSensitive = <String>{
  'password',
  'private_key_content_base64',
  'private_key_passphrase',
};

/// Typed helper for the `key_vault_password` block of
/// `azurerm_data_factory_linked_service_sftp` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSftpKeyVaultPassword {
  const DataFactoryLinkedServiceSftpKeyVaultPassword({
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

/// Typed helper for the `key_vault_private_key_content_base64` block of
/// `azurerm_data_factory_linked_service_sftp` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSftpKeyVaultPrivateKeyContentBase64 {
  const DataFactoryLinkedServiceSftpKeyVaultPrivateKeyContentBase64({
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

/// Typed helper for the `key_vault_private_key_passphrase` block of
/// `azurerm_data_factory_linked_service_sftp` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphrase {
  const DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphrase({
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

/// Factory wrapper for `azurerm_data_factory_linked_service_sftp`.
final class AzurermDataFactoryLinkedServiceSftp extends Resource {
  static const String tfType = 'azurerm_data_factory_linked_service_sftp';

  AzurermDataFactoryLinkedServiceSftp(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> authenticationType,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required TfArg<String> host,
    TfArg<String>? hostKeyFingerprint,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    Sensitive<String>? password,
    required TfArg<num> port,
    Sensitive<String>? privateKeyContentBase64,
    Sensitive<String>? privateKeyPassphrase,
    TfArg<String>? privateKeyPath,
    TfArg<bool>? skipHostKeyValidation,
    required TfArg<String> username,
    List<DataFactoryLinkedServiceSftpKeyVaultPassword>? keyVaultPassword,
    DataFactoryLinkedServiceSftpKeyVaultPrivateKeyContentBase64?
    keyVaultPrivateKeyContentBase64,
    DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphrase?
    keyVaultPrivateKeyPassphrase,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'authentication_type': authenticationType,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'host': host,
           'host_key_fingerprint': ?hostKeyFingerprint,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'password': ?password,
           'port': port,
           'private_key_content_base64': ?privateKeyContentBase64,
           'private_key_passphrase': ?privateKeyPassphrase,
           'private_key_path': ?privateKeyPath,
           'skip_host_key_validation': ?skipHostKeyValidation,
           'username': username,
           if (keyVaultPassword != null)
             'key_vault_password': TfArg.literal([
               for (final e in keyVaultPassword) e.encode(),
             ]),
           if (keyVaultPrivateKeyContentBase64 != null)
             'key_vault_private_key_content_base64': TfArg.literal(
               keyVaultPrivateKeyContentBase64.encode(),
             ),
           if (keyVaultPrivateKeyPassphrase != null)
             'key_vault_private_key_passphrase': TfArg.literal(
               keyVaultPrivateKeyPassphrase.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceSftpSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceSftp>`.
  RefTo<AzurermDataFactoryLinkedServiceSftp> get ref => RefTo.of(this);

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

  /// Reference to `authentication_type` attribute.
  TfRef<String> get authenticationType =>
      TfRef.attribute<String>(this, 'authentication_type');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `host_key_fingerprint` attribute.
  TfRef<String> get hostKeyFingerprint =>
      TfRef.attribute<String>(this, 'host_key_fingerprint');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `private_key_content_base64` attribute.
  TfRef<String> get privateKeyContentBase64 =>
      TfRef.attribute<String>(this, 'private_key_content_base64');

  /// Reference to `private_key_passphrase` attribute.
  TfRef<String> get privateKeyPassphrase =>
      TfRef.attribute<String>(this, 'private_key_passphrase');

  /// Reference to `private_key_path` attribute.
  TfRef<String> get privateKeyPath =>
      TfRef.attribute<String>(this, 'private_key_path');

  /// Reference to `skip_host_key_validation` attribute.
  TfRef<bool> get skipHostKeyValidation =>
      TfRef.attribute<bool>(this, 'skip_host_key_validation');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
