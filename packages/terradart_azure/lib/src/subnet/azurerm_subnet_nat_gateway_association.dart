// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_subnet_nat_gateway_association`.
const Set<String> _azurermSubnetNatGatewayAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_subnet_nat_gateway_association`.
final class AzurermSubnetNatGatewayAssociation extends Resource {
  static const String tfType = 'azurerm_subnet_nat_gateway_association';

  AzurermSubnetNatGatewayAssociation(
    super.localName, {
    required TfArg<String> natGatewayId,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'nat_gateway_id': natGatewayId,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubnetNatGatewayAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubnetNatGatewayAssociation>`.
  RefTo<AzurermSubnetNatGatewayAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `nat_gateway_id` attribute.
  TfRef<String> get natGatewayId =>
      TfRef.attribute<String>(this, 'nat_gateway_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
