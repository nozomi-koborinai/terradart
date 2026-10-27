// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/azurerm_network_security_group.dart'
    show AzurermNetworkSecurityGroup;

/// Sensitive field paths for `azurerm_network_interface_security_group_association`.
const Set<String> _azurermNetworkInterfaceSecurityGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_interface_security_group_association`.
final class AzurermNetworkInterfaceSecurityGroupAssociation extends Resource {
  static const String tfType =
      'azurerm_network_interface_security_group_association';

  AzurermNetworkInterfaceSecurityGroupAssociation(
    super.localName, {
    required TfArg<String> networkInterfaceId,
    required RefTo<AzurermNetworkSecurityGroup> networkSecurityGroupId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'network_interface_id': networkInterfaceId,
           'network_security_group_id': networkSecurityGroupId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkInterfaceSecurityGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkInterfaceSecurityGroupAssociation>`.
  RefTo<AzurermNetworkInterfaceSecurityGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');

  /// Reference to `network_security_group_id` attribute.
  TfRef<String> get networkSecurityGroupId =>
      TfRef.attribute<String>(this, 'network_security_group_id');
}
