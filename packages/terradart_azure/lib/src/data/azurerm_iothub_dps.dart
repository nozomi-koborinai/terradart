// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iothub/azurerm_iothub_dps.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_iothub_dps`.
const Set<String> _azurermIothubDpsSensitive = <String>{};

/// Factory wrapper for `azurerm_iothub_dps`.
final class DataAzurermIothubDps extends Data {
  static const String tfType = 'azurerm_iothub_dps';

  DataAzurermIothubDps(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermIothubDpsSensitive;

  /// A reference to the `azurerm_iothub_dps` this data source reads, for
  /// arguments typed `RefTo<AzurermIothubDps>`.
  RefTo<AzurermIothubDps> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `allocation_policy` attribute.
  TfRef<String> get allocationPolicy =>
      TfRef.attribute<String>(this, 'allocation_policy');

  /// Reference to `device_provisioning_host_name` attribute.
  TfRef<String> get deviceProvisioningHostName =>
      TfRef.attribute<String>(this, 'device_provisioning_host_name');

  /// Reference to `id_scope` attribute.
  TfRef<String> get idScope => TfRef.attribute<String>(this, 'id_scope');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `service_operations_host_name` attribute.
  TfRef<String> get serviceOperationsHostName =>
      TfRef.attribute<String>(this, 'service_operations_host_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
