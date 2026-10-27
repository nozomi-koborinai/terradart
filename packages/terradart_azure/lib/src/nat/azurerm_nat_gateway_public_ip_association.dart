// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_nat_gateway_public_ip_association`.
const Set<String> _azurermNatGatewayPublicIpAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_nat_gateway_public_ip_association`.
final class AzurermNatGatewayPublicIpAssociation extends Resource {
  static const String tfType = 'azurerm_nat_gateway_public_ip_association';

  AzurermNatGatewayPublicIpAssociation(
    super.localName, {
    required TfArg<String> natGatewayId,
    required TfArg<String> publicIpAddressId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'nat_gateway_id': natGatewayId,
           'public_ip_address_id': publicIpAddressId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNatGatewayPublicIpAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNatGatewayPublicIpAssociation>`.
  RefTo<AzurermNatGatewayPublicIpAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `nat_gateway_id` attribute.
  TfRef<String> get natGatewayId =>
      TfRef.attribute<String>(this, 'nat_gateway_id');

  /// Reference to `public_ip_address_id` attribute.
  TfRef<String> get publicIpAddressId =>
      TfRef.attribute<String>(this, 'public_ip_address_id');
}
