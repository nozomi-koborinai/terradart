// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_network_security_group.dart'
    show AzurermNetworkSecurityGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_subnet_network_security_group_association`.
const Set<String> _azurermSubnetNetworkSecurityGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_subnet_network_security_group_association`.
final class AzurermSubnetNetworkSecurityGroupAssociation extends Resource {
  static const String tfType =
      'azurerm_subnet_network_security_group_association';

  AzurermSubnetNetworkSecurityGroupAssociation(
    super.localName, {
    required RefTo<AzurermNetworkSecurityGroup> networkSecurityGroupId,
    required RefTo<AzurermSubnet> subnetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_security_group_id': networkSecurityGroupId.encodeAs('id'),
           'subnet_id': subnetId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSubnetNetworkSecurityGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSubnetNetworkSecurityGroupAssociation>`.
  RefTo<AzurermSubnetNetworkSecurityGroupAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_security_group_id` attribute.
  TfRef<String> get networkSecurityGroupId =>
      TfRef.attribute<String>(this, 'network_security_group_id');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');
}
