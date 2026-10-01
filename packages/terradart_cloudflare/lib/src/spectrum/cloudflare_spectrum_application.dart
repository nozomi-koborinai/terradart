// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_spectrum_application`.
const Set<String> _cloudflareSpectrumApplicationSensitive = <String>{};

/// Spectrum Application Proxy enum for `proxy_protocol`.
enum SpectrumApplicationProxyProtocol implements TerraformEnum {
  off('off'),
  v1('v1'),
  v2('v2'),
  simple('simple');

  const SpectrumApplicationProxyProtocol(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spectrum Application enum for `tls`.
enum SpectrumApplicationTls implements TerraformEnum {
  off('off'),
  flexible('flexible'),
  full('full'),
  strict('strict');

  const SpectrumApplicationTls(this.terraformValue);
  @override
  final String terraformValue;
}

/// Spectrum Application Traffic enum for `traffic_type`.
enum SpectrumApplicationTrafficType implements TerraformEnum {
  direct('direct'),
  http('http'),
  https('https'),
  worker('worker');

  const SpectrumApplicationTrafficType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `dns` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationDns {
  const SpectrumApplicationDns({this.name, this.type});

  final TfArg<String>? name;

  final TfArg<SpectrumApplicationDnsType>? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SpectrumApplicationDnsType implements TerraformEnum {
  cname('CNAME'),
  address('ADDRESS');

  const SpectrumApplicationDnsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `edge_ips` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationEdgeIps {
  const SpectrumApplicationEdgeIps({this.connectivity, this.ips, this.type});

  final TfArg<SpectrumApplicationConnectivity>? connectivity;

  final TfArg<List<String>>? ips;

  final TfArg<SpectrumApplicationEdgeIpsType>? type;

  Map<String, Object?> encode() => {
    'connectivity': ?connectivity?.toTfJson(),
    'ips': ?ips?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `connectivity` — derived from the provider schema description.
enum SpectrumApplicationConnectivity implements TerraformEnum {
  all('all'),
  ipv4('ipv4'),
  ipv6('ipv6');

  const SpectrumApplicationConnectivity(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum SpectrumApplicationEdgeIpsType implements TerraformEnum {
  dynamic('dynamic'),
  static('static');

  const SpectrumApplicationEdgeIpsType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `origin_dns` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationOriginDns {
  const SpectrumApplicationOriginDns({this.name, this.ttl, this.type});

  final TfArg<String>? name;

  final TfArg<num>? ttl;

  final TfArg<SpectrumApplicationOriginDnsType>? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum SpectrumApplicationOriginDnsType implements TerraformEnum {
  empty(''),
  a('A'),
  aaaa('AAAA'),
  srv('SRV');

  const SpectrumApplicationOriginDnsType(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<String>? originWorkerId,
    required TfArg<String> protocol,
    TfArg<SpectrumApplicationProxyProtocol>? proxyProtocol,
    TfArg<SpectrumApplicationTls>? tls,
    TfArg<SpectrumApplicationTrafficType>? trafficType,
    TfArg<String>? virtualNetworkId,
    required RefTo<CloudflareZone> zoneId,
    required SpectrumApplicationDns dns,
    SpectrumApplicationEdgeIps? edgeIps,
    SpectrumApplicationOriginDns? originDns,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'argo_smart_routing': ?argoSmartRouting,
           'ip_firewall': ?ipFirewall,
           'origin_direct': ?originDirect,
           'origin_port': ?originPort,
           'origin_worker_id': ?originWorkerId,
           'protocol': protocol,
           'proxy_protocol': ?proxyProtocol,
           'tls': ?tls,
           'traffic_type': ?trafficType,
           'virtual_network_id': ?virtualNetworkId,
           'zone_id': zoneId.encodeAs('id'),
           'dns': TfArg.literal(dns.encode()),
           if (edgeIps != null) 'edge_ips': TfArg.literal(edgeIps.encode()),
           if (originDns != null)
             'origin_dns': TfArg.literal(originDns.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareSpectrumApplicationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareSpectrumApplication>`.
  RefTo<CloudflareSpectrumApplication> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `argo_smart_routing` attribute.
  TfRef<bool> get argoSmartRouting =>
      TfRef.attribute<bool>(this, 'argo_smart_routing');

  /// Reference to `ip_firewall` attribute.
  TfRef<bool> get ipFirewall => TfRef.attribute<bool>(this, 'ip_firewall');

  /// Reference to `origin_direct` attribute.
  TfRef<List<String>> get originDirect =>
      TfRef.attribute<List<String>>(this, 'origin_direct');

  /// Reference to `origin_port` attribute.
  TfRef<Object?> get originPort =>
      TfRef.attribute<Object?>(this, 'origin_port');

  /// Reference to `origin_worker_id` attribute.
  TfRef<String> get originWorkerId =>
      TfRef.attribute<String>(this, 'origin_worker_id');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `proxy_protocol` attribute.
  TfRef<String> get proxyProtocol =>
      TfRef.attribute<String>(this, 'proxy_protocol');

  /// Reference to `tls` attribute.
  TfRef<String> get tls => TfRef.attribute<String>(this, 'tls');

  /// Reference to `traffic_type` attribute.
  TfRef<String> get trafficType =>
      TfRef.attribute<String>(this, 'traffic_type');

  /// Reference to `virtual_network_id` attribute.
  TfRef<String> get virtualNetworkId =>
      TfRef.attribute<String>(this, 'virtual_network_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
