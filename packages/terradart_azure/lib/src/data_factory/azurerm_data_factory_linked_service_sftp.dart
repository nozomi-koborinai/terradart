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

/// Data Factory Linked Service Sftp Authentication enum for `authentication_type`.
extension type const DataFactoryLinkedServiceSftpAuthenticationType._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryLinkedServiceSftpAuthenticationType.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryLinkedServiceSftpAuthenticationType.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryLinkedServiceSftpAuthenticationType.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = DataFactoryLinkedServiceSftpAuthenticationType._(
    TfArgLiteral('Basic'),
  );
  static const multifactor = DataFactoryLinkedServiceSftpAuthenticationType._(
    TfArgLiteral('MultiFactor'),
  );
  static const sshpublickey = DataFactoryLinkedServiceSftpAuthenticationType._(
    TfArgLiteral('SshPublicKey'),
  );

  static const List<DataFactoryLinkedServiceSftpAuthenticationType> values = [
    basic,
    multifactor,
    sshpublickey,
  ];
}

/// At most one of `key_vault_password`, `password` on `azurerm_data_factory_linked_service_sftp`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.keyVaultPassword(...)`.
sealed class DataFactoryLinkedServiceSftpPassword {
  const DataFactoryLinkedServiceSftpPassword();

  /// Sets `key_vault_password`.
  const factory DataFactoryLinkedServiceSftpPassword.keyVaultPassword(
    List<DataFactoryLinkedServiceSftpKeyVaultPassword> keyVaultPassword,
  ) = DataFactoryLinkedServiceSftpKeyVaultPasswordChoice;

  /// Sets `password`.
  const factory DataFactoryLinkedServiceSftpPassword.password(
    Sensitive<String> password,
  ) = DataFactoryLinkedServiceSftpPasswordChoice;

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

/// The [DataFactoryLinkedServiceSftpPassword.keyVaultPassword] choice: sets `key_vault_password`.
final class DataFactoryLinkedServiceSftpKeyVaultPasswordChoice
    extends DataFactoryLinkedServiceSftpPassword {
  const DataFactoryLinkedServiceSftpKeyVaultPasswordChoice(
    this.keyVaultPassword,
  );

  final List<DataFactoryLinkedServiceSftpKeyVaultPassword> keyVaultPassword;

  @internal
  @override
  String get blockKey => 'key_vault_password';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_password': [for (final e in keyVaultPassword) e.encode()],
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_password': TfArg.literal([
      for (final e in keyVaultPassword) e.encode(),
    ]),
  };
}

/// The [DataFactoryLinkedServiceSftpPassword.password] choice: sets `password`.
final class DataFactoryLinkedServiceSftpPasswordChoice
    extends DataFactoryLinkedServiceSftpPassword {
  const DataFactoryLinkedServiceSftpPasswordChoice(this.password);

  final Sensitive<String> password;

  @internal
  @override
  String get blockKey => 'password';

  @internal
  @override
  Map<String, Object?> encode() => {'password': password.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'password': password};
}

/// At most one of `key_vault_private_key_content_base64`, `private_key_content_base64`, `private_key_path` on `azurerm_data_factory_linked_service_sftp`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.keyVaultPrivateKeyContentBase64(...)`.
sealed class DataFactoryLinkedServiceSftpPrivateKey {
  const DataFactoryLinkedServiceSftpPrivateKey();

  /// Sets `key_vault_private_key_content_base64`.
  const factory DataFactoryLinkedServiceSftpPrivateKey.keyVaultPrivateKeyContentBase64(
    DataFactoryLinkedServiceSftpKeyVaultPrivateKeyContentBase64
    keyVaultPrivateKeyContentBase64,
  ) = DataFactoryLinkedServiceSftpPrivateKeyVaultPrivateKeyContentBase64;

  /// Sets `private_key_content_base64`.
  const factory DataFactoryLinkedServiceSftpPrivateKey.privateKeyContentBase64(
    Sensitive<String> privateKeyContentBase64,
  ) = DataFactoryLinkedServiceSftpPrivateKeyContentBase64;

  /// Sets `private_key_path`.
  const factory DataFactoryLinkedServiceSftpPrivateKey.privateKeyPath(
    TfArg<String> privateKeyPath,
  ) = DataFactoryLinkedServiceSftpPrivateKeyPath;

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

/// The [DataFactoryLinkedServiceSftpPrivateKey.keyVaultPrivateKeyContentBase64] choice: sets `key_vault_private_key_content_base64`.
final class DataFactoryLinkedServiceSftpPrivateKeyVaultPrivateKeyContentBase64
    extends DataFactoryLinkedServiceSftpPrivateKey {
  const DataFactoryLinkedServiceSftpPrivateKeyVaultPrivateKeyContentBase64(
    this.keyVaultPrivateKeyContentBase64,
  );

  final DataFactoryLinkedServiceSftpKeyVaultPrivateKeyContentBase64
  keyVaultPrivateKeyContentBase64;

  @internal
  @override
  String get blockKey => 'key_vault_private_key_content_base64';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_private_key_content_base64': keyVaultPrivateKeyContentBase64
        .encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_private_key_content_base64': TfArg.literal(
      keyVaultPrivateKeyContentBase64.encode(),
    ),
  };
}

/// The [DataFactoryLinkedServiceSftpPrivateKey.privateKeyContentBase64] choice: sets `private_key_content_base64`.
final class DataFactoryLinkedServiceSftpPrivateKeyContentBase64
    extends DataFactoryLinkedServiceSftpPrivateKey {
  const DataFactoryLinkedServiceSftpPrivateKeyContentBase64(
    this.privateKeyContentBase64,
  );

  final Sensitive<String> privateKeyContentBase64;

  @internal
  @override
  String get blockKey => 'private_key_content_base64';

  @internal
  @override
  Map<String, Object?> encode() => {
    'private_key_content_base64': privateKeyContentBase64.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'private_key_content_base64': privateKeyContentBase64,
  };
}

/// The [DataFactoryLinkedServiceSftpPrivateKey.privateKeyPath] choice: sets `private_key_path`.
final class DataFactoryLinkedServiceSftpPrivateKeyPath
    extends DataFactoryLinkedServiceSftpPrivateKey {
  const DataFactoryLinkedServiceSftpPrivateKeyPath(this.privateKeyPath);

  final TfArg<String> privateKeyPath;

  @internal
  @override
  String get blockKey => 'private_key_path';

  @internal
  @override
  Map<String, Object?> encode() => {
    'private_key_path': privateKeyPath.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'private_key_path': privateKeyPath,
  };
}

/// At most one of `key_vault_private_key_passphrase`, `private_key_passphrase` on `azurerm_data_factory_linked_service_sftp`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.keyVaultPrivateKeyPassphrase(...)`.
sealed class DataFactoryLinkedServiceSftpPassphrase {
  const DataFactoryLinkedServiceSftpPassphrase();

  /// Sets `key_vault_private_key_passphrase`.
  const factory DataFactoryLinkedServiceSftpPassphrase.keyVaultPrivateKeyPassphrase(
    DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphrase
    keyVaultPrivateKeyPassphrase,
  ) = DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphraseChoice;

  /// Sets `private_key_passphrase`.
  const factory DataFactoryLinkedServiceSftpPassphrase.privateKeyPassphrase(
    Sensitive<String> privateKeyPassphrase,
  ) = DataFactoryLinkedServiceSftpPrivateKeyPassphrase;

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

/// The [DataFactoryLinkedServiceSftpPassphrase.keyVaultPrivateKeyPassphrase] choice: sets `key_vault_private_key_passphrase`.
final class DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphraseChoice
    extends DataFactoryLinkedServiceSftpPassphrase {
  const DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphraseChoice(
    this.keyVaultPrivateKeyPassphrase,
  );

  final DataFactoryLinkedServiceSftpKeyVaultPrivateKeyPassphrase
  keyVaultPrivateKeyPassphrase;

  @internal
  @override
  String get blockKey => 'key_vault_private_key_passphrase';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_private_key_passphrase': keyVaultPrivateKeyPassphrase.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_private_key_passphrase': TfArg.literal(
      keyVaultPrivateKeyPassphrase.encode(),
    ),
  };
}

/// The [DataFactoryLinkedServiceSftpPassphrase.privateKeyPassphrase] choice: sets `private_key_passphrase`.
final class DataFactoryLinkedServiceSftpPrivateKeyPassphrase
    extends DataFactoryLinkedServiceSftpPassphrase {
  const DataFactoryLinkedServiceSftpPrivateKeyPassphrase(
    this.privateKeyPassphrase,
  );

  final Sensitive<String> privateKeyPassphrase;

  @internal
  @override
  String get blockKey => 'private_key_passphrase';

  @internal
  @override
  Map<String, Object?> encode() => {
    'private_key_passphrase': privateKeyPassphrase.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'private_key_passphrase': privateKeyPassphrase,
  };
}

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
    required DataFactoryLinkedServiceSftpAuthenticationType authenticationType,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    required TfArg<String> host,
    TfArg<String>? hostKeyFingerprint,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryLinkedServiceSftpPassword? password,
    required TfArg<num> port,
    DataFactoryLinkedServiceSftpPrivateKey? privateKey,
    DataFactoryLinkedServiceSftpPassphrase? passphrase,
    TfArg<bool>? skipHostKeyValidation,
    required TfArg<String> username,
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
           ...?password?.argMap,
           'port': port,
           ...?privateKey?.argMap,
           ...?passphrase?.argMap,
           'skip_host_key_validation': ?skipHostKeyValidation,
           'username': username,
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
