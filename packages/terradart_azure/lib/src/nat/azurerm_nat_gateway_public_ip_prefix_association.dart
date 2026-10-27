// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_nat_gateway_public_ip_prefix_association`.
const Set<String> _azurermNatGatewayPublicIpPrefixAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_nat_gateway_public_ip_prefix_association`.
final class AzurermNatGatewayPublicIpPrefixAssociation extends Resource {
  static const String tfType =
      'azurerm_nat_gateway_public_ip_prefix_association';

  AzurermNatGatewayPublicIpPrefixAssociation(
    super.localName, {
    required TfArg<String> natGatewayId,
    required TfArg<String> publicIpPrefixId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'nat_gateway_id': natGatewayId,
           'public_ip_prefix_id': publicIpPrefixId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNatGatewayPublicIpPrefixAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNatGatewayPublicIpPrefixAssociation>`.
  RefTo<AzurermNatGatewayPublicIpPrefixAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `nat_gateway_id` attribute.
  TfRef<String> get natGatewayId =>
      TfRef.attribute<String>(this, 'nat_gateway_id');

  /// Reference to `public_ip_prefix_id` attribute.
  TfRef<String> get publicIpPrefixId =>
      TfRef.attribute<String>(this, 'public_ip_prefix_id');
}
