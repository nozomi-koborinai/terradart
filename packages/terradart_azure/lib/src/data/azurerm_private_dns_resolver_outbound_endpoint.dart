// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../private_dns/azurerm_private_dns_resolver_outbound_endpoint.dart';

/// Sensitive field paths for `azurerm_private_dns_resolver_outbound_endpoint`.
const Set<String> _azurermPrivateDnsResolverOutboundEndpointSensitive =
    <String>{};

/// Factory wrapper for `azurerm_private_dns_resolver_outbound_endpoint`.
final class DataAzurermPrivateDnsResolverOutboundEndpoint extends Data {
  static const String tfType = 'azurerm_private_dns_resolver_outbound_endpoint';

  DataAzurermPrivateDnsResolverOutboundEndpoint(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> privateDnsResolverId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'private_dns_resolver_id': privateDnsResolverId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverOutboundEndpointSensitive;

  /// A reference to the `azurerm_private_dns_resolver_outbound_endpoint` this data source reads, for
  /// arguments typed `RefTo<AzurermPrivateDnsResolverOutboundEndpoint>`.
  RefTo<AzurermPrivateDnsResolverOutboundEndpoint> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `private_dns_resolver_id` attribute.
  TfRef<String> get privateDnsResolverId =>
      TfRef.attribute<String>(this, 'private_dns_resolver_id');
}
