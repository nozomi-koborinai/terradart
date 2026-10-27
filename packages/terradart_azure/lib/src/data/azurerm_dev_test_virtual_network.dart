// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../dev_test/azurerm_dev_test_virtual_network.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_dev_test_virtual_network`.
const Set<String> _azurermDevTestVirtualNetworkSensitive = <String>{};

/// Factory wrapper for `azurerm_dev_test_virtual_network`.
final class DataAzurermDevTestVirtualNetwork extends Data {
  static const String tfType = 'azurerm_dev_test_virtual_network';

  DataAzurermDevTestVirtualNetwork(
    super.localName, {
    required TfArg<String> labName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'lab_name': labName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermDevTestVirtualNetworkSensitive;

  /// A reference to the `azurerm_dev_test_virtual_network` this data source reads, for
  /// arguments typed `RefTo<AzurermDevTestVirtualNetwork>`.
  RefTo<AzurermDevTestVirtualNetwork> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allowed_subnets` attribute.
  TfRef<List<Map<String, Object?>>> get allowedSubnets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'allowed_subnets');

  /// Reference to `subnet_overrides` attribute.
  TfRef<List<Map<String, Object?>>> get subnetOverrides =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'subnet_overrides');

  /// Reference to `unique_identifier` attribute.
  TfRef<String> get uniqueIdentifier =>
      TfRef.attribute<String>(this, 'unique_identifier');

  /// Reference to `lab_name` attribute.
  TfRef<String> get labName => TfRef.attribute<String>(this, 'lab_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
