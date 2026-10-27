// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../netapp/azurerm_netapp_pool.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_pool`.
const Set<String> _azurermNetappPoolSensitive = <String>{};

/// Factory wrapper for `azurerm_netapp_pool`.
final class DataAzurermNetappPool extends Data {
  static const String tfType = 'azurerm_netapp_pool';

  DataAzurermNetappPool(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappPoolSensitive;

  /// A reference to the `azurerm_netapp_pool` this data source reads, for
  /// arguments typed `RefTo<AzurermNetappPool>`.
  RefTo<AzurermNetappPool> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cool_access_enabled` attribute.
  TfRef<bool> get coolAccessEnabled =>
      TfRef.attribute<bool>(this, 'cool_access_enabled');

  /// Reference to `custom_throughput_mibps` attribute.
  TfRef<num> get customThroughputMibps =>
      TfRef.attribute<num>(this, 'custom_throughput_mibps');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `service_level` attribute.
  TfRef<String> get serviceLevel =>
      TfRef.attribute<String>(this, 'service_level');

  /// Reference to `size_in_tb` attribute.
  TfRef<num> get sizeInTb => TfRef.attribute<num>(this, 'size_in_tb');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
