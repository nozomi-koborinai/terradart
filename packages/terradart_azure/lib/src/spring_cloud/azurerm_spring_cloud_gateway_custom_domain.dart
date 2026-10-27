// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_spring_cloud_gateway_custom_domain`.
const Set<String> _azurermSpringCloudGatewayCustomDomainSensitive = <String>{};

/// Factory wrapper for `azurerm_spring_cloud_gateway_custom_domain`.
final class AzurermSpringCloudGatewayCustomDomain extends Resource {
  static const String tfType = 'azurerm_spring_cloud_gateway_custom_domain';

  AzurermSpringCloudGatewayCustomDomain(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> springCloudGatewayId,
    TfArg<String>? thumbprint,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'spring_cloud_gateway_id': springCloudGatewayId,
           'thumbprint': ?thumbprint,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSpringCloudGatewayCustomDomainSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSpringCloudGatewayCustomDomain>`.
  RefTo<AzurermSpringCloudGatewayCustomDomain> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `spring_cloud_gateway_id` attribute.
  TfRef<String> get springCloudGatewayId =>
      TfRef.attribute<String>(this, 'spring_cloud_gateway_id');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');
}
