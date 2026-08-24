// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dns_location`.
const Set<String> _cloudflareZeroTrustDnsLocationSensitive = <String>{};

/// Typed helper for the `endpoints` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpoints {
  const ZeroTrustDnsLocationEndpoints({
    required this.doh,
    required this.dot,
    required this.ipv4,
    required this.ipv6,
  });

  final ZeroTrustDnsLocationEndpointsDoh doh;

  final ZeroTrustDnsLocationEndpointsDot dot;

  final ZeroTrustDnsLocationEndpointsIpv4 ipv4;

  final ZeroTrustDnsLocationEndpointsIpv6 ipv6;

  Map<String, Object?> encode() => {
    'doh': doh.encode(),
    'dot': dot.encode(),
    'ipv4': ipv4.encode(),
    'ipv6': ipv6.encode(),
  };
}

/// Typed helper for the `endpoints.doh` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsDoh {
  const ZeroTrustDnsLocationEndpointsDoh({
    this.enabled,
    this.requireToken,
    this.networks,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? requireToken;

  final List<ZeroTrustDnsLocationEndpointsDohNetworks>? networks;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (requireToken != null) 'require_token': requireToken!.toTfJson(),
    if (networks != null) 'networks': [for (final e in networks!) e.encode()],
  };
}

/// Typed helper for the `endpoints.doh.networks` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsDohNetworks {
  const ZeroTrustDnsLocationEndpointsDohNetworks({required this.network});

  final TfArg<String> network;

  Map<String, Object?> encode() => {'network': network.toTfJson()};
}

/// Typed helper for the `endpoints.dot` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsDot {
  const ZeroTrustDnsLocationEndpointsDot({this.enabled, this.networks});

  final TfArg<bool>? enabled;

  final List<ZeroTrustDnsLocationEndpointsDotNetworks>? networks;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (networks != null) 'networks': [for (final e in networks!) e.encode()],
  };
}

/// Typed helper for the `endpoints.dot.networks` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsDotNetworks {
  const ZeroTrustDnsLocationEndpointsDotNetworks({required this.network});

  final TfArg<String> network;

  Map<String, Object?> encode() => {'network': network.toTfJson()};
}

/// Typed helper for the `endpoints.ipv4` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsIpv4 {
  const ZeroTrustDnsLocationEndpointsIpv4({this.enabled});

  final TfArg<bool>? enabled;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
  };
}

/// Typed helper for the `endpoints.ipv6` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsIpv6 {
  const ZeroTrustDnsLocationEndpointsIpv6({this.enabled, this.networks});

  final TfArg<bool>? enabled;

  final List<ZeroTrustDnsLocationEndpointsIpv6Networks>? networks;

  Map<String, Object?> encode() => {
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (networks != null) 'networks': [for (final e in networks!) e.encode()],
  };
}

/// Typed helper for the `endpoints.ipv6.networks` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationEndpointsIpv6Networks {
  const ZeroTrustDnsLocationEndpointsIpv6Networks({required this.network});

  final TfArg<String> network;

  Map<String, Object?> encode() => {'network': network.toTfJson()};
}

/// Typed helper for the `max_ttl` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationMaxTtl {
  const ZeroTrustDnsLocationMaxTtl({required this.mode, this.ttlSecs});

  final TfArg<String> mode;

  final TfArg<num>? ttlSecs;

  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    if (ttlSecs != null) 'ttl_secs': ttlSecs!.toTfJson(),
  };
}

/// Typed helper for the `networks` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationNetworks {
  const ZeroTrustDnsLocationNetworks({required this.network});

  final TfArg<String> network;

  Map<String, Object?> encode() => {'network': network.toTfJson()};
}

/// Factory wrapper for `cloudflare_zero_trust_dns_location`.
///
/// Accepted Permissions
///
/// - `Cloudflare Zero Trust Secure DNS Locations Write` - `Zero Trust Read` -
/// `Zero Trust Write`
final class CloudflareZeroTrustDnsLocation extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dns_location';

  CloudflareZeroTrustDnsLocation({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<bool>? clientDefault,
    TfArg<String>? dnsDestinationIpsId,
    TfArg<bool>? ecsSupport,
    required TfArg<String> name,
    ZeroTrustDnsLocationEndpoints? endpoints,
    ZeroTrustDnsLocationMaxTtl? maxTtl,
    List<ZeroTrustDnsLocationNetworks>? networks,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (clientDefault != null) 'client_default': clientDefault,
           if (dnsDestinationIpsId != null)
             'dns_destination_ips_id': dnsDestinationIpsId,
           if (ecsSupport != null) 'ecs_support': ecsSupport,
           'name': name,
           if (endpoints != null)
             'endpoints': TfArg.literal(endpoints.encode()),
           if (maxTtl != null) 'max_ttl': TfArg.literal(maxTtl.encode()),
           if (networks != null)
             'networks': TfArg.literal([for (final e in networks) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDnsLocationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dns_destination_ipv6_block_id` attribute.
  TfRef<String> get dnsDestinationIpv6BlockId =>
      TfRef.attribute<String>(this, 'dns_destination_ipv6_block_id');

  /// Reference to `doh_subdomain` attribute.
  TfRef<String> get dohSubdomain =>
      TfRef.attribute<String>(this, 'doh_subdomain');

  /// Reference to `ip` attribute.
  TfRef<String> get ip => TfRef.attribute<String>(this, 'ip');

  /// Reference to `ipv4_destination` attribute.
  TfRef<String> get ipv4Destination =>
      TfRef.attribute<String>(this, 'ipv4_destination');

  /// Reference to `ipv4_destination_backup` attribute.
  TfRef<String> get ipv4DestinationBackup =>
      TfRef.attribute<String>(this, 'ipv4_destination_backup');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');
}
