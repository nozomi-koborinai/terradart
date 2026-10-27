// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_resolver.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_resolver`.
const Set<String> _azurermPrivateDnsResolverSensitive = <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver`.
final class DataAzurermPrivateDnsResolver extends Data {
  static const String tfType = 'azurerm_private_dns_resolver';

  DataAzurermPrivateDnsResolver(
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
  Set<String> get sensitiveFields => _azurermPrivateDnsResolverSensitive;

  /// A reference to the `azurerm_private_dns_resolver` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsResolver>`.
  RefTo<AzurermPrivateDnsResolver> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
