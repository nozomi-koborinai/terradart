// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_custom_domain`.
const Set<String> _azurermSpringCloudCustomDomainSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_custom_domain`.
final class AzurermSpringCloudCustomDomain extends Resource {
  static const String tfType = 'azurerm_spring_cloud_custom_domain';

  AzurermSpringCloudCustomDomain(
    super.localName, {
    TfArg<String>? certificateName,
    required TfArg<String> name,
    required TfArg<String> springCloudAppId,
    TfArg<String>? thumbprint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_name': ?certificateName,
           'name': name,
           'spring_cloud_app_id': springCloudAppId,
           'thumbprint': ?thumbprint,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSpringCloudCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudCustomDomain>`.
  RefTo<AzurermSpringCloudCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_name` attribute.
  TfRef<String> get certificateName =>
      TfRef.attribute<String>(this, 'certificate_name');

  /// Reference to `spring_cloud_app_id` attribute.
  TfRef<String> get springCloudAppId =>
      TfRef.attribute<String>(this, 'spring_cloud_app_id');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');
}
