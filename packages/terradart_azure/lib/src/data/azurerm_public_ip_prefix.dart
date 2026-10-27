// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../network/azurerm_public_ip_prefix.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_public_ip_prefix`.
const Set<String> _azurermPublicIpPrefixSensitive = <String>{};

/// Factory wrapper for `azurerm_public_ip_prefix`.
final class DataAzurermPublicIpPrefix extends Data {
  static const String tfType = 'azurerm_public_ip_prefix';

  DataAzurermPublicIpPrefix(
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
  Set<String> get sensitiveFields => _azurermPublicIpPrefixSensitive;

  /// A reference to the `azurerm_public_ip_prefix` this data source reads, for
  /// arguments typed `RefTo<AzurermPublicIpPrefix>`.
  RefTo<AzurermPublicIpPrefix> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `custom_ip_prefix_id` attribute.
  TfRef<String> get customIpPrefixId =>
      TfRef.attribute<String>(this, 'custom_ip_prefix_id');

  /// Reference to `ip_prefix` attribute.
  TfRef<String> get ipPrefix => TfRef.attribute<String>(this, 'ip_prefix');

  /// Reference to `ip_version` attribute.
  TfRef<String> get ipVersion => TfRef.attribute<String>(this, 'ip_version');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `prefix_length` attribute.
  TfRef<num> get prefixLength => TfRef.attribute<num>(this, 'prefix_length');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `sku_tier` attribute.
  TfRef<String> get skuTier => TfRef.attribute<String>(this, 'sku_tier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
