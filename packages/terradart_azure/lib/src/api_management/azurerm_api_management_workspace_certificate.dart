// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_api_management_workspace_certificate`.
const Set<String> _azurermApiManagementWorkspaceCertificateSensitive = <String>{
  'certificate_data_base64',
  'password',
};

/// Exactly one of `certificate_data_base64`, `key_vault_secret_id` on `azurerm_api_management_workspace_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.certificateDataBase64(...)`.
sealed class ApiManagementWorkspaceCertificateSource {
  const ApiManagementWorkspaceCertificateSource();

  /// Sets `certificate_data_base64`.
  const factory ApiManagementWorkspaceCertificateSource.certificateDataBase64(
    Sensitive<String> certificateDataBase64,
  ) = ApiManagementWorkspaceCertificateSourceCertificateDataBase64;

  /// Sets `key_vault_secret_id`.
  const factory ApiManagementWorkspaceCertificateSource.keyVaultSecretId(
    TfArg<String> keyVaultSecretId,
  ) = ApiManagementWorkspaceCertificateSourceKeyVaultSecretId;

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

/// The [ApiManagementWorkspaceCertificateSource.certificateDataBase64] choice: sets `certificate_data_base64`.
final class ApiManagementWorkspaceCertificateSourceCertificateDataBase64
    extends ApiManagementWorkspaceCertificateSource {
  const ApiManagementWorkspaceCertificateSourceCertificateDataBase64(
    this.certificateDataBase64,
  );

  final Sensitive<String> certificateDataBase64;

  @internal
  @override
  String get blockKey => 'certificate_data_base64';

  @internal
  @override
  Map<String, Object?> encode() => {
    'certificate_data_base64': certificateDataBase64.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate_data_base64': certificateDataBase64,
  };
}

/// The [ApiManagementWorkspaceCertificateSource.keyVaultSecretId] choice: sets `key_vault_secret_id`.
final class ApiManagementWorkspaceCertificateSourceKeyVaultSecretId
    extends ApiManagementWorkspaceCertificateSource {
  const ApiManagementWorkspaceCertificateSourceKeyVaultSecretId(
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

/// Factory wrapper for `azurerm_api_management_workspace_certificate`.
final class AzurermApiManagementWorkspaceCertificate extends Resource {
  static const String tfType = 'azurerm_api_management_workspace_certificate';

  AzurermApiManagementWorkspaceCertificate(
    super.localName, {
    required TfArg<String> apiManagementWorkspaceId,
    required ApiManagementWorkspaceCertificateSource source,
    required TfArg<String> name,
    Sensitive<String>? password,
    TfArg<String>? userAssignedIdentityClientId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_management_workspace_id': apiManagementWorkspaceId,
           ...source.argMap,
           'name': name,
           'password': ?password,
           'user_assigned_identity_client_id': ?userAssignedIdentityClientId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermApiManagementWorkspaceCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApiManagementWorkspaceCertificate>`.
  RefTo<AzurermApiManagementWorkspaceCertificate> get ref => RefTo.of(this);

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

  /// Reference to `api_management_workspace_id` attribute.
  TfRef<String> get apiManagementWorkspaceId =>
      TfRef.attribute<String>(this, 'api_management_workspace_id');

  /// Reference to `certificate_data_base64` attribute.
  TfRef<String> get certificateDataBase64 =>
      TfRef.attribute<String>(this, 'certificate_data_base64');

  /// Reference to `key_vault_secret_id` attribute.
  TfRef<String> get keyVaultSecretId =>
      TfRef.attribute<String>(this, 'key_vault_secret_id');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `user_assigned_identity_client_id` attribute.
  TfRef<String> get userAssignedIdentityClientId =>
      TfRef.attribute<String>(this, 'user_assigned_identity_client_id');
}
