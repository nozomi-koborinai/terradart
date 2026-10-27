// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../nat/azurerm_nat_gateway.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_nat_gateway`.
const Set<String> _azurermNatGatewaySensitive = <String>{};

/// Factory wrapper for `azurerm_nat_gateway`.
final class DataAzurermNatGateway extends Data {
  static const String tfType = 'azurerm_nat_gateway';

  DataAzurermNatGateway(
    super.localName, {
    required TfArg<String> name,
    TfArg<List<String>>? publicIpAddressIds,
    TfArg<List<String>>? publicIpPrefixIds,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'public_ip_address_ids': ?publicIpAddressIds,
           'public_ip_prefix_ids': ?publicIpPrefixIds,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNatGatewaySensitive;

  /// A reference to the `azurerm_nat_gateway` this data source reads, for
  /// arguments typed `RefTo<AzurermNatGateway>`.
  RefTo<AzurermNatGateway> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `idle_timeout_in_minutes` attribute.
  TfRef<num> get idleTimeoutInMinutes =>
      TfRef.attribute<num>(this, 'idle_timeout_in_minutes');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_guid` attribute.
  TfRef<String> get resourceGuid =>
      TfRef.attribute<String>(this, 'resource_guid');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `public_ip_address_ids` attribute.
  TfRef<List<String>> get publicIpAddressIds =>
      TfRef.attribute<List<String>>(this, 'public_ip_address_ids');

  /// Reference to `public_ip_prefix_ids` attribute.
  TfRef<List<String>> get publicIpPrefixIds =>
      TfRef.attribute<List<String>>(this, 'public_ip_prefix_ids');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
