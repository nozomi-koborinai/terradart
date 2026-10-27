// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_interface_application_security_group_association`.
const Set<String>
_azurermNetworkInterfaceApplicationSecurityGroupAssociationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_network_interface_application_security_group_association`.
final class AzurermNetworkInterfaceApplicationSecurityGroupAssociation
    extends Resource {
  static const String tfType =
      'azurerm_network_interface_application_security_group_association';

  AzurermNetworkInterfaceApplicationSecurityGroupAssociation(
    super.localName, {
    required TfArg<String> applicationSecurityGroupId,
    required TfArg<String> networkInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_security_group_id': applicationSecurityGroupId,
           'network_interface_id': networkInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkInterfaceApplicationSecurityGroupAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkInterfaceApplicationSecurityGroupAssociation>`.
  RefTo<AzurermNetworkInterfaceApplicationSecurityGroupAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `application_security_group_id` attribute.
  TfRef<String> get applicationSecurityGroupId =>
      TfRef.attribute<String>(this, 'application_security_group_id');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');
}
