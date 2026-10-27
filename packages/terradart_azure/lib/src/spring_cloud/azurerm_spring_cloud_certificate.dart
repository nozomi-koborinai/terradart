// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_spring_cloud_certificate`.
const Set<String> _azurermSpringCloudCertificateSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_certificate`.
final class AzurermSpringCloudCertificate extends Resource {
  static const String tfType = 'azurerm_spring_cloud_certificate';

  AzurermSpringCloudCertificate(
    super.localName, {
    TfArg<String>? certificateContent,
    TfArg<bool>? excludePrivateKey,
    TfArg<String>? keyVaultCertificateId,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serviceName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_content': ?certificateContent,
           'exclude_private_key': ?excludePrivateKey,
           'key_vault_certificate_id': ?keyVaultCertificateId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'service_name': serviceName,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudCertificateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudCertificate>`.
  RefTo<AzurermSpringCloudCertificate> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `certificate_content` attribute.
  TfRef<String> get certificateContent =>
      TfRef.attribute<String>(this, 'certificate_content');

  /// Reference to `exclude_private_key` attribute.
  TfRef<bool> get excludePrivateKey =>
      TfRef.attribute<bool>(this, 'exclude_private_key');

  /// Reference to `key_vault_certificate_id` attribute.
  TfRef<String> get keyVaultCertificateId =>
      TfRef.attribute<String>(this, 'key_vault_certificate_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `service_name` attribute.
  TfRef<String> get serviceName =>
      TfRef.attribute<String>(this, 'service_name');
}
