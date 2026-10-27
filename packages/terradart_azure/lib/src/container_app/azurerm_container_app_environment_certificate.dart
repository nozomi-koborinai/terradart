// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_app_environment_certificate`.
const Set<String> _azurermContainerAppEnvironmentCertificateSensitive =
    <String>{'certificate_password'};

/// Exactly one of `certificate_blob_base64`, `certificate_key_vault` on `azurerm_container_app_environment_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.certificateBlobBase64(...)`.
sealed class ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault {
  const ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault();

  /// Sets `certificate_blob_base64`.
  const factory ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault.certificateBlobBase64(
    TfArg<String> certificateBlobBase64,
  ) = ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVaultCertificateBlobBase64;

  /// Sets `certificate_key_vault`.
  const factory ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault.certificateKeyVault(
    ContainerAppEnvironmentCertificateKeyVault certificateKeyVault,
  ) = ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVaultChoice;

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

/// The [ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault.certificateBlobBase64] choice: sets `certificate_blob_base64`.
final class ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVaultCertificateBlobBase64
    extends ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault {
  const ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVaultCertificateBlobBase64(
    this.certificateBlobBase64,
  );

  final TfArg<String> certificateBlobBase64;

  @internal
  @override
  String get blockKey => 'certificate_blob_base64';

  @internal
  @override
  Map<String, Object?> encode() => {
    'certificate_blob_base64': certificateBlobBase64.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate_blob_base64': certificateBlobBase64,
  };
}

/// The [ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault.certificateKeyVault] choice: sets `certificate_key_vault`.
final class ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVaultChoice
    extends ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault {
  const ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVaultChoice(
    this.certificateKeyVault,
  );

  final ContainerAppEnvironmentCertificateKeyVault certificateKeyVault;

  @internal
  @override
  String get blockKey => 'certificate_key_vault';

  @internal
  @override
  Map<String, Object?> encode() => {
    'certificate_key_vault': certificateKeyVault.encode(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'certificate_key_vault': TfArg.literal(certificateKeyVault.encode()),
  };
}

/// Typed helper for the `certificate_key_vault` block of
/// `azurerm_container_app_environment_certificate` (derived from provider schema).
@immutable
final class ContainerAppEnvironmentCertificateKeyVault {
  const ContainerAppEnvironmentCertificateKeyVault({
    this.identity,
    required this.keyVaultSecretId,
  });

  final TfArg<String>? identity;

  final TfArg<String> keyVaultSecretId;

  @internal
  Map<String, Object?> encode() => {
    'identity': ?identity?.toTfJson(),
    'key_vault_secret_id': keyVaultSecretId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_container_app_environment_certificate`.
final class AzurermContainerAppEnvironmentCertificate extends Resource {
  static const String tfType = 'azurerm_container_app_environment_certificate';

  AzurermContainerAppEnvironmentCertificate(
    super.localName, {
    required ContainerAppEnvironmentCertificateBlobBase64OrCertificateKeyVault
    certificateBlobBase64OrCertificateKeyVault,
    Sensitive<String>? certificatePassword,
    required TfArg<String> containerAppEnvironmentId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...certificateBlobBase64OrCertificateKeyVault.argMap,
           'certificate_password': ?certificatePassword,
           'container_app_environment_id': containerAppEnvironmentId,
           'name': name,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppEnvironmentCertificate>`.
  RefTo<AzurermContainerAppEnvironmentCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `issue_date` attribute.
  TfRef<String> get issueDate => TfRef.attribute<String>(this, 'issue_date');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `subject_name` attribute.
  TfRef<String> get subjectName =>
      TfRef.attribute<String>(this, 'subject_name');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `certificate_blob_base64` attribute.
  TfRef<String> get certificateBlobBase64 =>
      TfRef.attribute<String>(this, 'certificate_blob_base64');

  /// Reference to `certificate_password` attribute.
  TfRef<String> get certificatePassword =>
      TfRef.attribute<String>(this, 'certificate_password');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
