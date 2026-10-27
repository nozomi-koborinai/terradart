// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_palo_alto_virtual_network_appliance`.
const Set<String> _azurermPaloAltoVirtualNetworkApplianceSensitive = <String>{};

/// Factory wrapper for `azurerm_palo_alto_virtual_network_appliance`.
final class AzurermPaloAltoVirtualNetworkAppliance extends Resource {
  static const String tfType = 'azurerm_palo_alto_virtual_network_appliance';

  AzurermPaloAltoVirtualNetworkAppliance(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> virtualHubId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'virtual_hub_id': virtualHubId},
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPaloAltoVirtualNetworkApplianceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPaloAltoVirtualNetworkAppliance>`.
  RefTo<AzurermPaloAltoVirtualNetworkAppliance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `virtual_hub_id` attribute.
  TfRef<String> get virtualHubId =>
      TfRef.attribute<String>(this, 'virtual_hub_id');
}
