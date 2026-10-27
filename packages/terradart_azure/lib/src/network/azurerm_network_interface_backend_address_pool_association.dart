// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_interface_backend_address_pool_association`.
const Set<String>
_azurermNetworkInterfaceBackendAddressPoolAssociationSensitive = <String>{};

/// Factory wrapper for `azurerm_network_interface_backend_address_pool_association`.
final class AzurermNetworkInterfaceBackendAddressPoolAssociation
    extends Resource {
  static const String tfType =
      'azurerm_network_interface_backend_address_pool_association';

  AzurermNetworkInterfaceBackendAddressPoolAssociation(
    super.localName, {
    required TfArg<String> backendAddressPoolId,
    required TfArg<String> ipConfigurationName,
    required TfArg<String> networkInterfaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend_address_pool_id': backendAddressPoolId,
           'ip_configuration_name': ipConfigurationName,
           'network_interface_id': networkInterfaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkInterfaceBackendAddressPoolAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkInterfaceBackendAddressPoolAssociation>`.
  RefTo<AzurermNetworkInterfaceBackendAddressPoolAssociation> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_address_pool_id` attribute.
  TfRef<String> get backendAddressPoolId =>
      TfRef.attribute<String>(this, 'backend_address_pool_id');

  /// Reference to `ip_configuration_name` attribute.
  TfRef<String> get ipConfigurationName =>
      TfRef.attribute<String>(this, 'ip_configuration_name');

  /// Reference to `network_interface_id` attribute.
  TfRef<String> get networkInterfaceId =>
      TfRef.attribute<String>(this, 'network_interface_id');
}
