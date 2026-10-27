// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../nginx/azurerm_nginx_certificate.dart';

/// Sensitive field paths for `azurerm_nginx_certificate`.
const Set<String> _azurermNginxCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_nginx_certificate`.
final class DataAzurermNginxCertificate extends Data {
  static const String tfType = 'azurerm_nginx_certificate';

  DataAzurermNginxCertificate(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> nginxDeploymentId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'nginx_deployment_id': nginxDeploymentId},
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxCertificateSensitive;

  /// A reference to the `azurerm_nginx_certificate` this data source reads, for
  /// arguments typed `RefTo<AzurermNginxCertificate>`.
  RefTo<AzurermNginxCertificate> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_virtual_path` attribute.
  TfRef<String> get certificateVirtualPath =>
      TfRef.attribute<String>(this, 'certificate_virtual_path');

  /// Reference to `error_code` attribute.
  TfRef<String> get errorCode => TfRef.attribute<String>(this, 'error_code');

  /// Reference to `error_message` attribute.
  TfRef<String> get errorMessage =>
      TfRef.attribute<String>(this, 'error_message');

  /// Reference to `key_vault_secret_creation_date` attribute.
  TfRef<String> get keyVaultSecretCreationDate =>
      TfRef.attribute<String>(this, 'key_vault_secret_creation_date');

  /// Reference to `key_vault_secret_id` attribute.
  TfRef<String> get keyVaultSecretId =>
      TfRef.attribute<String>(this, 'key_vault_secret_id');

  /// Reference to `key_vault_secret_version` attribute.
  TfRef<String> get keyVaultSecretVersion =>
      TfRef.attribute<String>(this, 'key_vault_secret_version');

  /// Reference to `key_virtual_path` attribute.
  TfRef<String> get keyVirtualPath =>
      TfRef.attribute<String>(this, 'key_virtual_path');

  /// Reference to `sha1_thumbprint` attribute.
  TfRef<String> get sha1Thumbprint =>
      TfRef.attribute<String>(this, 'sha1_thumbprint');

  /// Reference to `nginx_deployment_id` attribute.
  TfRef<String> get nginxDeploymentId =>
      TfRef.attribute<String>(this, 'nginx_deployment_id');
}
