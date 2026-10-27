// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_container_app_environment_custom_domain`.
const Set<String> _azurermContainerAppEnvironmentCustomDomainSensitive =
    <String>{'certificate_password'};

/// Factory wrapper for `azurerm_container_app_environment_custom_domain`.
final class AzurermContainerAppEnvironmentCustomDomain extends Resource {
  static const String tfType =
      'azurerm_container_app_environment_custom_domain';

  AzurermContainerAppEnvironmentCustomDomain(
    super.localName, {
    required TfArg<String> certificateBlobBase64,
    required Sensitive<String> certificatePassword,
    required TfArg<String> containerAppEnvironmentId,
    required TfArg<String> dnsSuffix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_blob_base64': certificateBlobBase64,
           'certificate_password': certificatePassword,
           'container_app_environment_id': containerAppEnvironmentId,
           'dns_suffix': dnsSuffix,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermContainerAppEnvironmentCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermContainerAppEnvironmentCustomDomain>`.
  RefTo<AzurermContainerAppEnvironmentCustomDomain> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_blob_base64` attribute.
  TfRef<String> get certificateBlobBase64 =>
      TfRef.attribute<String>(this, 'certificate_blob_base64');

  /// Reference to `certificate_password` attribute.
  TfRef<String> get certificatePassword =>
      TfRef.attribute<String>(this, 'certificate_password');

  /// Reference to `container_app_environment_id` attribute.
  TfRef<String> get containerAppEnvironmentId =>
      TfRef.attribute<String>(this, 'container_app_environment_id');

  /// Reference to `dns_suffix` attribute.
  TfRef<String> get dnsSuffix => TfRef.attribute<String>(this, 'dns_suffix');
}
