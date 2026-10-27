// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/azurerm_virtual_machine.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_virtual_machine`.
const Set<String> _azurermVirtualMachineSensitive = <String>{};

/// Factory wrapper for `azurerm_virtual_machine`.
final class DataAzurermVirtualMachine extends Data {
  static const String tfType = 'azurerm_virtual_machine';

  DataAzurermVirtualMachine(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVirtualMachineSensitive;

  /// A reference to the `azurerm_virtual_machine` this data source reads, for
  /// arguments typed `RefTo<AzurermVirtualMachine>`.
  RefTo<AzurermVirtualMachine> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `power_state` attribute.
  TfRef<String> get powerState => TfRef.attribute<String>(this, 'power_state');

  /// Reference to `private_ip_address` attribute.
  TfRef<String> get privateIpAddress =>
      TfRef.attribute<String>(this, 'private_ip_address');

  /// Reference to `private_ip_addresses` attribute.
  TfRef<List<String>> get privateIpAddresses =>
      TfRef.attribute<List<String>>(this, 'private_ip_addresses');

  /// Reference to `public_ip_address` attribute.
  TfRef<String> get publicIpAddress =>
      TfRef.attribute<String>(this, 'public_ip_address');

  /// Reference to `public_ip_addresses` attribute.
  TfRef<List<String>> get publicIpAddresses =>
      TfRef.attribute<List<String>>(this, 'public_ip_addresses');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
