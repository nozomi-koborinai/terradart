// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_spectrum_application`.
const Set<String> _cloudflareSpectrumApplicationSensitive = <String>{};

/// Spectrum Application Proxy enum for `proxy_protocol`.
extension type const SpectrumApplicationProxyProtocol._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationProxyProtocol.variable(String name)
    : this._(TfArg.variable(name));
  SpectrumApplicationProxyProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationProxyProtocol.arg(TfArg<String> arg) : this._(arg);

  static const off = SpectrumApplicationProxyProtocol._(TfArgLiteral('off'));
  static const v1 = SpectrumApplicationProxyProtocol._(TfArgLiteral('v1'));
  static const v2 = SpectrumApplicationProxyProtocol._(TfArgLiteral('v2'));
  static const simple = SpectrumApplicationProxyProtocol._(
    TfArgLiteral('simple'),
  );

  static const List<SpectrumApplicationProxyProtocol> values = [
    off,
    v1,
    v2,
    simple,
  ];
}

/// Spectrum Application enum for `tls`.
extension type const SpectrumApplicationTls._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationTls.variable(String name) : this._(TfArg.variable(name));
  SpectrumApplicationTls.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationTls.arg(TfArg<String> arg) : this._(arg);

  static const off = SpectrumApplicationTls._(TfArgLiteral('off'));
  static const flexible = SpectrumApplicationTls._(TfArgLiteral('flexible'));
  static const full = SpectrumApplicationTls._(TfArgLiteral('full'));
  static const strict = SpectrumApplicationTls._(TfArgLiteral('strict'));

  static const List<SpectrumApplicationTls> values = [
    off,
    flexible,
    full,
    strict,
  ];
}

/// Spectrum Application Traffic enum for `traffic_type`.
extension type const SpectrumApplicationTrafficType._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationTrafficType.variable(String name)
    : this._(TfArg.variable(name));
  SpectrumApplicationTrafficType.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationTrafficType.arg(TfArg<String> arg) : this._(arg);

  static const direct = SpectrumApplicationTrafficType._(
    TfArgLiteral('direct'),
  );
  static const http = SpectrumApplicationTrafficType._(TfArgLiteral('http'));
  static const https = SpectrumApplicationTrafficType._(TfArgLiteral('https'));
  static const worker = SpectrumApplicationTrafficType._(
    TfArgLiteral('worker'),
  );

  static const List<SpectrumApplicationTrafficType> values = [
    direct,
    http,
    https,
    worker,
  ];
}

/// Typed helper for the `dns` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationDns {
  const SpectrumApplicationDns({this.name, this.type});

  final TfArg<String>? name;

  final SpectrumApplicationDnsType? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SpectrumApplicationDnsType._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationDnsType.variable(String name)
    : this._(TfArg.variable(name));
  SpectrumApplicationDnsType.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationDnsType.arg(TfArg<String> arg) : this._(arg);

  static const cname = SpectrumApplicationDnsType._(TfArgLiteral('CNAME'));
  static const address = SpectrumApplicationDnsType._(TfArgLiteral('ADDRESS'));

  static const List<SpectrumApplicationDnsType> values = [cname, address];
}

/// Typed helper for the `edge_ips` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationEdgeIps {
  const SpectrumApplicationEdgeIps({this.connectivity, this.ips, this.type});

  final SpectrumApplicationConnectivity? connectivity;

  final TfArg<List<String>>? ips;

  final SpectrumApplicationEdgeIpsType? type;

  Map<String, Object?> encode() => {
    'connectivity': ?connectivity?.toTfJson(),
    'ips': ?ips?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `connectivity` — derived from the provider schema description.
extension type const SpectrumApplicationConnectivity._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationConnectivity.variable(String name)
    : this._(TfArg.variable(name));
  SpectrumApplicationConnectivity.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationConnectivity.arg(TfArg<String> arg) : this._(arg);

  static const all = SpectrumApplicationConnectivity._(TfArgLiteral('all'));
  static const ipv4 = SpectrumApplicationConnectivity._(TfArgLiteral('ipv4'));
  static const ipv6 = SpectrumApplicationConnectivity._(TfArgLiteral('ipv6'));

  static const List<SpectrumApplicationConnectivity> values = [all, ipv4, ipv6];
}

/// `type` — derived from the provider schema description.
extension type const SpectrumApplicationEdgeIpsType._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationEdgeIpsType.variable(String name)
    : this._(TfArg.variable(name));
  SpectrumApplicationEdgeIpsType.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationEdgeIpsType.arg(TfArg<String> arg) : this._(arg);

  static const dynamic = SpectrumApplicationEdgeIpsType._(
    TfArgLiteral('dynamic'),
  );
  static const static = SpectrumApplicationEdgeIpsType._(
    TfArgLiteral('static'),
  );

  static const List<SpectrumApplicationEdgeIpsType> values = [dynamic, static];
}

/// Typed helper for the `origin_dns` block of
/// `cloudflare_spectrum_application` (derived from provider schema).
@immutable
final class SpectrumApplicationOriginDns {
  const SpectrumApplicationOriginDns({this.name, this.ttl, this.type});

  final TfArg<String>? name;

  final TfArg<num>? ttl;

  final SpectrumApplicationOriginDnsType? type;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'ttl': ?ttl?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const SpectrumApplicationOriginDnsType._(TfArg<String> _)
    implements TfArg<String> {
  SpectrumApplicationOriginDnsType.variable(String name)
    : this._(TfArg.variable(name));
  SpectrumApplicationOriginDnsType.expression(String template)
    : this._(TfArg.expression(template));
  const SpectrumApplicationOriginDnsType.arg(TfArg<String> arg) : this._(arg);

  static const empty = SpectrumApplicationOriginDnsType._(TfArgLiteral(''));
  static const a = SpectrumApplicationOriginDnsType._(TfArgLiteral('A'));
  static const aaaa = SpectrumApplicationOriginDnsType._(TfArgLiteral('AAAA'));
  static const srv = SpectrumApplicationOriginDnsType._(TfArgLiteral('SRV'));

  static const List<SpectrumApplicationOriginDnsType> values = [
    empty,
    a,
    aaaa,
    srv,
  ];
}

/// Factory wrapper for `cloudflare_spectrum_application`.
///
/// Accepted Permissions
///
/// - `Zone Settings Read` - `Zone Settings Write`
final class CloudflareSpectrumApplication extends Resource {
  static const String tfType = 'cloudflare_spectrum_application';

  CloudflareSpectrumApplication(
    super.localName, {
    TfArg<bool>? argoSmartRouting,
    TfArg<bool>? ipFirewall,
    TfArg<List<String>>? originDirect,
    TfArg<Object?>? originPort,
    TfArg<String>? originWorkerId,
    required TfArg<String> protocol,
    SpectrumApplicationProxyProtocol? proxyProtocol,
    SpectrumApplicationTls? tls,
    SpectrumApplicationTrafficType? trafficType,
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
