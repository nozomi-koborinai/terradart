// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_zone.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_private_dns_zone`.
const Set<String> _azurermPrivateDnsZoneSensitive = <String>{};

/// Factory wrapper for `azurerm_private_dns_zone`.
final class DataAzurermPrivateDnsZone extends Data {
  static const String tfType = 'azurerm_private_dns_zone';

  DataAzurermPrivateDnsZone(
    super.localName, {
    required TfArg<String> name,
    RefTo<AzurermResourceGroup>? resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': ?resourceGroupName?.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermPrivateDnsZoneSensitive;

  /// A reference to the `azurerm_private_dns_zone` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsZone>`.
  RefTo<AzurermPrivateDnsZone> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `max_number_of_record_sets` attribute.
  TfRef<num> get maxNumberOfRecordSets =>
      TfRef.attribute<num>(this, 'max_number_of_record_sets');

  /// Reference to `max_number_of_virtual_network_links` attribute.
  TfRef<num> get maxNumberOfVirtualNetworkLinks =>
      TfRef.attribute<num>(this, 'max_number_of_virtual_network_links');

  /// Reference to `max_number_of_virtual_network_links_with_registration` attribute.
  TfRef<num> get maxNumberOfVirtualNetworkLinksWithRegistration =>
      TfRef.attribute<num>(
        this,
        'max_number_of_virtual_network_links_with_registration',
      );

  /// Reference to `number_of_record_sets` attribute.
  TfRef<num> get numberOfRecordSets =>
      TfRef.attribute<num>(this, 'number_of_record_sets');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
