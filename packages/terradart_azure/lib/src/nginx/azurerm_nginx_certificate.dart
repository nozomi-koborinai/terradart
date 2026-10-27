// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_nginx_certificate`.
const Set<String> _azurermNginxCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_nginx_certificate`.
final class AzurermNginxCertificate extends Resource {
  static const String tfType = 'azurerm_nginx_certificate';

  AzurermNginxCertificate(
    super.localName, {
    required TfArg<String> certificateVirtualPath,
    required TfArg<String> keyVaultSecretId,
    required TfArg<String> keyVirtualPath,
    required TfArg<String> name,
    required TfArg<String> nginxDeploymentId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_virtual_path': certificateVirtualPath,
           'key_vault_secret_id': keyVaultSecretId,
           'key_virtual_path': keyVirtualPath,
           'name': name,
           'nginx_deployment_id': nginxDeploymentId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNginxCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNginxCertificate>`.
  RefTo<AzurermNginxCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_virtual_path` attribute.
  TfRef<String> get certificateVirtualPath =>
      TfRef.attribute<String>(this, 'certificate_virtual_path');

  /// Reference to `key_vault_secret_id` attribute.
  TfRef<String> get keyVaultSecretId =>
      TfRef.attribute<String>(this, 'key_vault_secret_id');

  /// Reference to `key_virtual_path` attribute.
  TfRef<String> get keyVirtualPath =>
      TfRef.attribute<String>(this, 'key_virtual_path');

  /// Reference to `nginx_deployment_id` attribute.
  TfRef<String> get nginxDeploymentId =>
      TfRef.attribute<String>(this, 'nginx_deployment_id');
}
