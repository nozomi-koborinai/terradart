// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_vpn_site`.
const Set<String> _azurermVpnSiteSensitive = <String>{};

/// Typed helper for the `link` block of
/// `azurerm_vpn_site` (derived from provider schema).
@immutable
final class VpnSiteLink {
  const VpnSiteLink({
    this.fqdn,
    this.ipAddress,
    required this.name,
    this.providerName,
    this.speedInMbps,
    this.bgp,
  });

  final TfArg<String>? fqdn;

  final TfArg<String>? ipAddress;

  final TfArg<String> name;

  final TfArg<String>? providerName;

  final TfArg<num>? speedInMbps;

  final VpnSiteBgp? bgp;

  @internal
  Map<String, Object?> encode() => {
    'fqdn': ?fqdn?.toTfJson(),
    'ip_address': ?ipAddress?.toTfJson(),
    'name': name.toTfJson(),
    'provider_name': ?providerName?.toTfJson(),
    'speed_in_mbps': ?speedInMbps?.toTfJson(),
    'bgp': ?bgp?.encode(),
  };
}

/// Typed helper for the `link.bgp` block of
/// `azurerm_vpn_site` (derived from provider schema).
@immutable
final class VpnSiteBgp {
  const VpnSiteBgp({required this.asn, required this.peeringAddress});

  final TfArg<num> asn;

  final TfArg<String> peeringAddress;

  @internal
  Map<String, Object?> encode() => {
    'asn': asn.toTfJson(),
    'peering_address': peeringAddress.toTfJson(),
  };
}

/// Typed helper for the `o365_policy` block of
/// `azurerm_vpn_site` (derived from provider schema).
@immutable
final class VpnSiteO365Policy {
  const VpnSiteO365Policy({this.trafficCategory});

  final VpnSiteTrafficCategory? trafficCategory;

  @internal
  Map<String, Object?> encode() => {
    'traffic_category': ?trafficCategory?.encode(),
  };
}

/// Typed helper for the `o365_policy.traffic_category` block of
/// `azurerm_vpn_site` (derived from provider schema).
@immutable
final class VpnSiteTrafficCategory {
  const VpnSiteTrafficCategory({
    this.allowEndpointEnabled,
    this.defaultEndpointEnabled,
    this.optimizeEndpointEnabled,
  });

  final TfArg<bool>? allowEndpointEnabled;

  final TfArg<bool>? defaultEndpointEnabled;

  final TfArg<bool>? optimizeEndpointEnabled;

  @internal
  Map<String, Object?> encode() => {
    'allow_endpoint_enabled': ?allowEndpointEnabled?.toTfJson(),
    'default_endpoint_enabled': ?defaultEndpointEnabled?.toTfJson(),
    'optimize_endpoint_enabled': ?optimizeEndpointEnabled?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_vpn_site`.
final class AzurermVpnSite extends Resource {
  static const String tfType = 'azurerm_vpn_site';

  AzurermVpnSite(
    super.localName, {
    TfArg<List<String>>? addressCidrs,
    TfArg<String>? deviceModel,
    TfArg<String>? deviceVendor,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> virtualWanId,
    List<VpnSiteLink>? link,
    VpnSiteO365Policy? o365Policy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'address_cidrs': ?addressCidrs,
           'device_model': ?deviceModel,
           'device_vendor': ?deviceVendor,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           'virtual_wan_id': virtualWanId,
           if (link != null)
             'link': TfArg.literal([for (final e in link) e.encode()]),
           if (o365Policy != null)
             'o365_policy': TfArg.literal(o365Policy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermVpnSiteSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermVpnSite>`.
  RefTo<AzurermVpnSite> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `address_cidrs` attribute.
  TfRef<List<String>> get addressCidrs =>
      TfRef.attribute<List<String>>(this, 'address_cidrs');

  /// Reference to `device_model` attribute.
  TfRef<String> get deviceModel =>
      TfRef.attribute<String>(this, 'device_model');

  /// Reference to `device_vendor` attribute.
  TfRef<String> get deviceVendor =>
      TfRef.attribute<String>(this, 'device_vendor');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `virtual_wan_id` attribute.
  TfRef<String> get virtualWanId =>
      TfRef.attribute<String>(this, 'virtual_wan_id');
}
