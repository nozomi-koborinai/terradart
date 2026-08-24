// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_spectrum_application`.
const Set<String> _cloudflareSpectrumApplicationSensitive = <String>{};

/// Typed helper for the `dns` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationDns {
  const SpectrumApplicationDns({this.name, this.type});

  final TfArg<String>? name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `edge_ips` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationEdgeIps {
  const SpectrumApplicationEdgeIps({this.connectivity, this.ips, this.type});

  final TfArg<String>? connectivity;

  final TfArg<List<Object?>>? ips;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (connectivity != null) 'connectivity': connectivity!.toTfJson(),
    if (ips != null) 'ips': ips!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Typed helper for the `origin_dns` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationOriginDns {
  const SpectrumApplicationOriginDns({this.name, this.ttl, this.type});

  final TfArg<String>? name;

  final TfArg<num>? ttl;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    if (name != null) 'name': name!.toTfJson(),
    if (ttl != null) 'ttl': ttl!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_spectrum_application`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareSpectrumApplication extends Resource {
  static const String tfType = 'cloudflare_spectrum_application';

  CloudflareSpectrumApplication({
    required super.localName,
    TfArg<bool>? argoSmartRouting,
    TfArg<bool>? ipFirewall,
    TfArg<List<String>>? originDirect,
    TfArg<Object?>? originPort,
    required TfArg<String> protocol,
    TfArg<String>? proxyProtocol,
    TfArg<String>? tls,
    TfArg<String>? trafficType,
    TfArg<String>? virtualNetworkId,
    required TfArg<String> zoneId,
    required SpectrumApplicationDns dns,
    SpectrumApplicationEdgeIps? edgeIps,
    SpectrumApplicationOriginDns? originDns,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (argoSmartRouting != null) 'argo_smart_routing': argoSmartRouting,
           if (ipFirewall != null) 'ip_firewall': ipFirewall,
           if (originDirect != null) 'origin_direct': originDirect,
           if (originPort != null) 'origin_port': originPort,
           'protocol': protocol,
           if (proxyProtocol != null) 'proxy_protocol': proxyProtocol,
           if (tls != null) 'tls': tls,
           if (trafficType != null) 'traffic_type': trafficType,
           if (virtualNetworkId != null) 'virtual_network_id': virtualNetworkId,
           'zone_id': zoneId,
           'dns': TfArg.literal(dns.encode()),
           if (edgeIps != null) 'edge_ips': TfArg.literal(edgeIps.encode()),
           if (originDns != null)
             'origin_dns': TfArg.literal(originDns.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
