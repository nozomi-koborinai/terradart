// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_api_management_certificate`.
const Set<String> _azurermApiManagementCertificateSensitive = <String>{
  'data',
  'password',
};

/// Exactly one of `data`, `key_vault_secret_id` on `azurerm_api_management_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.data(...)`.
sealed class ApiManagementCertificateDataOrKeyVaultSecretId {
  const ApiManagementCertificateDataOrKeyVaultSecretId();

  /// Sets `data`.
  const factory ApiManagementCertificateDataOrKeyVaultSecretId.data(
    Sensitive<String> data,
  ) = ApiManagementCertificateDataOrKeyVaultSecretIdData;

  /// Sets `key_vault_secret_id`.
  const factory ApiManagementCertificateDataOrKeyVaultSecretId.keyVaultSecretId(
    TfArg<String> keyVaultSecretId,
  ) = ApiManagementCertificateDataOrKeyVaultSecretIdChoice;

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

/// The [ApiManagementCertificateDataOrKeyVaultSecretId.data] choice: sets `data`.
final class ApiManagementCertificateDataOrKeyVaultSecretIdData
    extends ApiManagementCertificateDataOrKeyVaultSecretId {
  const ApiManagementCertificateDataOrKeyVaultSecretIdData(this.data);

  final Sensitive<String> data;

  @internal
  @override
  String get blockKey => 'data';

  @internal
  @override
  Map<String, Object?> encode() => {'data': data.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'data': data};
}

/// The [ApiManagementCertificateDataOrKeyVaultSecretId.keyVaultSecretId] choice: sets `key_vault_secret_id`.
final class ApiManagementCertificateDataOrKeyVaultSecretIdChoice
    extends ApiManagementCertificateDataOrKeyVaultSecretId {
  const ApiManagementCertificateDataOrKeyVaultSecretIdChoice(
    this.keyVaultSecretId,
  );

  final TfArg<String> keyVaultSecretId;

  @internal
  @override
  String get blockKey => 'key_vault_secret_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'key_vault_secret_id': keyVaultSecretId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'key_vault_secret_id': keyVaultSecretId,
  };
}

/// Factory wrapper for `azurerm_api_management_certificate`.
final class AzurermApiManagementCertificate extends Resource {
  static const String tfType = 'azurerm_api_management_certificate';

  AzurermApiManagementCertificate(
    super.localName, {
    required TfArg<String> apiManagementName,
    required ApiManagementCertificateDataOrKeyVaultSecretId
    dataOrKeyVaultSecretId,
    TfArg<String>? keyVaultIdentityClientId,
    required TfArg<String> name,
    Sensitive<String>? password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_name': apiManagementName,
           ...dataOrKeyVaultSecretId.argMap,
           'key_vault_identity_client_id': ?keyVaultIdentityClientId,
           'name': name,
           'password': ?password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApiManagementCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementCertificate>`.
  RefTo<AzurermApiManagementCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `subject` attribute.
  TfRef<String> get subject => TfRef.attribute<String>(this, 'subject');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `api_management_name` attribute.
  TfRef<String> get apiManagementName =>
      TfRef.attribute<String>(this, 'api_management_name');

  /// Reference to `data` attribute.
  TfRef<String> get data => TfRef.attribute<String>(this, 'data');

  /// Reference to `key_vault_identity_client_id` attribute.
  TfRef<String> get keyVaultIdentityClientId =>
      TfRef.attribute<String>(this, 'key_vault_identity_client_id');

  /// Reference to `key_vault_secret_id` attribute.
  TfRef<String> get keyVaultSecretId =>
      TfRef.attribute<String>(this, 'key_vault_secret_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
