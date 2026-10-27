// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_service_tags`.
const Set<String> _azurermNetworkServiceTagsSensitive = <String>{};

/// Factory wrapper for `azurerm_network_service_tags`.
final class DataAzurermNetworkServiceTags extends Data {
  static const String tfType = 'azurerm_network_service_tags';

  DataAzurermNetworkServiceTags(
    super.localName, {
    required TfArg<String> location,
    TfArg<String>? locationFilter,
    required TfArg<String> service,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'location_filter': ?locationFilter,
           'service': service,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkServiceTagsSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_prefixes` attribute.
  TfRef<List<String>> get addressPrefixes =>
      TfRef.attribute<List<String>>(this, 'address_prefixes');

  /// Reference to `ipv4_cidrs` attribute.
  TfRef<List<String>> get ipv4Cidrs =>
      TfRef.attribute<List<String>>(this, 'ipv4_cidrs');

  /// Reference to `ipv6_cidrs` attribute.
  TfRef<List<String>> get ipv6Cidrs =>
      TfRef.attribute<List<String>>(this, 'ipv6_cidrs');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `location_filter` attribute.
  TfRef<String> get locationFilter =>
      TfRef.attribute<String>(this, 'location_filter');

  /// Reference to `service` attribute.
  TfRef<String> get service => TfRef.attribute<String>(this, 'service');
}
