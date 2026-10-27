// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_subnet_route_table_association`.
const Set<String> _azurermSubnetRouteTableAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_subnet_route_table_association`.
final class AzurermSubnetRouteTableAssociation extends Resource {
  static const String tfType = 'azurerm_subnet_route_table_association';

  AzurermSubnetRouteTableAssociation(
    super.localName, {
    required TfArg<String> routeTableId,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'route_table_id': routeTableId,
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubnetRouteTableAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubnetRouteTableAssociation>`.
  RefTo<AzurermSubnetRouteTableAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `route_table_id` attribute.
  TfRef<String> get routeTableId =>
      TfRef.attribute<String>(this, 'route_table_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
