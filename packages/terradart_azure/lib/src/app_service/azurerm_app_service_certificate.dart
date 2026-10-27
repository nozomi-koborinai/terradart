// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_app_service_certificate`.
const Set<String> _azurermAppServiceCertificateSensitive = <String>{
  'password',
  'pfx_blob',
};

/// Exactly one of `key_vault_secret_id`, `pfx_blob` on `azurerm_app_service_certificate`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.keyVaultSecretId(...)`.
sealed class AppServiceCertificateKeyVaultSecretIdOrPfxBlob {
  const AppServiceCertificateKeyVaultSecretIdOrPfxBlob();

  /// Sets `key_vault_secret_id`.
  const factory AppServiceCertificateKeyVaultSecretIdOrPfxBlob.keyVaultSecretId(
    TfArg<String> keyVaultSecretId,
  ) = AppServiceCertificateKeyVaultSecretIdOrPfxBlobKeyVaultSecretId;

  /// Sets `pfx_blob`.
  const factory AppServiceCertificateKeyVaultSecretIdOrPfxBlob.pfxBlob(
    Sensitive<String> pfxBlob,
  ) = AppServiceCertificateKeyVaultSecretIdOrPfxBlobChoice;

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

/// The [AppServiceCertificateKeyVaultSecretIdOrPfxBlob.keyVaultSecretId] choice: sets `key_vault_secret_id`.
final class AppServiceCertificateKeyVaultSecretIdOrPfxBlobKeyVaultSecretId
    extends AppServiceCertificateKeyVaultSecretIdOrPfxBlob {
  const AppServiceCertificateKeyVaultSecretIdOrPfxBlobKeyVaultSecretId(
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

/// The [AppServiceCertificateKeyVaultSecretIdOrPfxBlob.pfxBlob] choice: sets `pfx_blob`.
final class AppServiceCertificateKeyVaultSecretIdOrPfxBlobChoice
    extends AppServiceCertificateKeyVaultSecretIdOrPfxBlob {
  const AppServiceCertificateKeyVaultSecretIdOrPfxBlobChoice(this.pfxBlob);

  final Sensitive<String> pfxBlob;

  @internal
  @override
  String get blockKey => 'pfx_blob';

  @internal
  @override
  Map<String, Object?> encode() => {'pfx_blob': pfxBlob.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'pfx_blob': pfxBlob};
}

/// Factory wrapper for `azurerm_app_service_certificate`.
final class AzurermAppServiceCertificate extends Resource {
  static const String tfType = 'azurerm_app_service_certificate';

  AzurermAppServiceCertificate(
    super.localName, {
    TfArg<String>? appServicePlanId,
    RefTo<AzurermKeyVault>? keyVaultId,
    required AppServiceCertificateKeyVaultSecretIdOrPfxBlob
    keyVaultSecretIdOrPfxBlob,
    required TfArg<String> location,
    required TfArg<String> name,
    Sensitive<String>? password,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'app_service_plan_id': ?appServicePlanId,
           'key_vault_id': ?keyVaultId?.encodeAs('id'),
           ...keyVaultSecretIdOrPfxBlob.argMap,
           'location': location,
           'name': name,
           'password': ?password,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermAppServiceCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermAppServiceCertificate>`.
  RefTo<AzurermAppServiceCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `expiration_date` attribute.
  TfRef<String> get expirationDate =>
      TfRef.attribute<String>(this, 'expiration_date');

  /// Reference to `friendly_name` attribute.
  TfRef<String> get friendlyName =>
      TfRef.attribute<String>(this, 'friendly_name');

  /// Reference to `host_names` attribute.
  TfRef<List<String>> get hostNames =>
      TfRef.attribute<List<String>>(this, 'host_names');

  /// Reference to `hosting_environment_profile_id` attribute.
  TfRef<String> get hostingEnvironmentProfileId =>
      TfRef.attribute<String>(this, 'hosting_environment_profile_id');

  /// Reference to `issue_date` attribute.
  TfRef<String> get issueDate => TfRef.attribute<String>(this, 'issue_date');

  /// Reference to `issuer` attribute.
  TfRef<String> get issuer => TfRef.attribute<String>(this, 'issuer');

  /// Reference to `subject_name` attribute.
  TfRef<String> get subjectName =>
      TfRef.attribute<String>(this, 'subject_name');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `app_service_plan_id` attribute.
  TfRef<String> get appServicePlanId =>
      TfRef.attribute<String>(this, 'app_service_plan_id');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `key_vault_secret_id` attribute.
  TfRef<String> get keyVaultSecretId =>
      TfRef.attribute<String>(this, 'key_vault_secret_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `pfx_blob` attribute.
  TfRef<String> get pfxBlob => TfRef.attribute<String>(this, 'pfx_blob');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
