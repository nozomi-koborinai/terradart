// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_private_dns_resolver_inbound_endpoint`.
const Set<String> _azurermPrivateDnsResolverInboundEndpointSensitive =
    <String>{};

/// Typed helper for the `ip_configurations` block of
/// `azurerm_private_dns_resolver_inbound_endpoint` (derived from provider schema).
@immutable
final class PrivateDnsResolverInboundEndpointIpConfigurations {
  const PrivateDnsResolverInboundEndpointIpConfigurations({
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    required this.subnetId,
  });

  final TfArg<String>? privateIpAddress;

  final PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod?
  privateIpAllocationMethod;

  final TfArg<String> subnetId;

  @internal
  Map<String, Object?> encode() => {
    'private_ip_address': ?privateIpAddress?.toTfJson(),
    'private_ip_allocation_method': ?privateIpAllocationMethod?.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
  };
}

/// `private_ip_allocation_method` — derived from the provider schema description.
extension type const PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod._(
  TfArg<String> _
) implements TfArg<String> {
  PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod.variable(
    String name,
  ) : this._(TfArg.variable(name));
  PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const dynamic =
      PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod._(
        TfArgLiteral('Dynamic'),
      );
  static const static =
      PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod._(
        TfArgLiteral('Static'),
      );

  static const List<PrivateDnsResolverInboundEndpointPrivateIpAllocationMethod>
  values = [dynamic, static];
}

/// Factory wrapper for `azurerm_private_dns_resolver_inbound_endpoint`.
final class AzurermPrivateDnsResolverInboundEndpoint extends Resource {
  static const String tfType = 'azurerm_private_dns_resolver_inbound_endpoint';

  AzurermPrivateDnsResolverInboundEndpoint(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> privateDnsResolverId,
    TfArg<Map<String, String>>? tags,
    required PrivateDnsResolverInboundEndpointIpConfigurations ipConfigurations,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'private_dns_resolver_id': privateDnsResolverId,
           'tags': ?tags,
           'ip_configurations': TfArg.literal(ipConfigurations.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPrivateDnsResolverInboundEndpointSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPrivateDnsResolverInboundEndpoint>`.
  RefTo<AzurermPrivateDnsResolverInboundEndpoint> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `private_dns_resolver_id` attribute.
  TfRef<String> get privateDnsResolverId =>
      TfRef.attribute<String>(this, 'private_dns_resolver_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
