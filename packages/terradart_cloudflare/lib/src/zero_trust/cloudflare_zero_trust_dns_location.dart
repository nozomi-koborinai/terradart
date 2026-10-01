// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

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

  final ZeroTrustDnsLocationDoh doh;

  final ZeroTrustDnsLocationDot dot;

  final ZeroTrustDnsLocationIpv4 ipv4;

  final ZeroTrustDnsLocationIpv6 ipv6;

  @internal
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
final class ZeroTrustDnsLocationDoh {
  const ZeroTrustDnsLocationDoh({
    this.enabled,
    this.requireToken,
    this.networks,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? requireToken;

  final List<ZeroTrustDnsLocationNetworks>? networks;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'require_token': ?requireToken?.toTfJson(),
    if (networks != null) 'networks': [for (final e in networks!) e.encode()],
  };
}

/// Typed helper for the `networks` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class ZeroTrustDnsLocationNetworks {
  const ZeroTrustDnsLocationNetworks({required this.network});

  final TfArg<String> network;

  @internal
  Map<String, Object?> encode() => {'network': network.toTfJson()};
}

/// Typed helper for the `endpoints.dot` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationDot {
  const ZeroTrustDnsLocationDot({this.enabled, this.networks});

  final TfArg<bool>? enabled;

  final List<ZeroTrustDnsLocationNetworks>? networks;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (networks != null) 'networks': [for (final e in networks!) e.encode()],
  };
}

/// Typed helper for the `endpoints.ipv4` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationIpv4 {
  const ZeroTrustDnsLocationIpv4({this.enabled});

  final TfArg<bool>? enabled;

  @internal
  Map<String, Object?> encode() => {'enabled': ?enabled?.toTfJson()};
}

/// Typed helper for the `endpoints.ipv6` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationIpv6 {
  const ZeroTrustDnsLocationIpv6({this.enabled, this.networks});

  final TfArg<bool>? enabled;

  final List<ZeroTrustDnsLocationNetworks>? networks;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (networks != null) 'networks': [for (final e in networks!) e.encode()],
  };
}

/// Typed helper for the `max_ttl` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class ZeroTrustDnsLocationMaxTtl {
  const ZeroTrustDnsLocationMaxTtl({required this.mode, this.ttlSecs});

  final ZeroTrustDnsLocationMode mode;

  final TfArg<num>? ttlSecs;

  @internal
  Map<String, Object?> encode() => {
    'mode': mode.toTfJson(),
    'ttl_secs': ?ttlSecs?.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const ZeroTrustDnsLocationMode._(TfArg<String> _)
    implements TfArg<String> {
  ZeroTrustDnsLocationMode.variable(String name) : this._(TfArg.variable(name));
  ZeroTrustDnsLocationMode.expression(String template)
    : this._(TfArg.expression(template));
  const ZeroTrustDnsLocationMode.arg(TfArg<String> arg) : this._(arg);

  static const inherit = ZeroTrustDnsLocationMode._(TfArgLiteral('inherit'));
  static const overrideCase = ZeroTrustDnsLocationMode._(
    TfArgLiteral('override'),
  );
  static const disabled = ZeroTrustDnsLocationMode._(TfArgLiteral('disabled'));

  static const List<ZeroTrustDnsLocationMode> values = [
    inherit,
    overrideCase,
    disabled,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_dns_location`.
///
/// Accepted Permissions
///
/// - `Cloudflare Zero Trust Secure DNS Locations Write` - `Zero Trust Read` -
/// `Zero Trust Write`
final class CloudflareZeroTrustDnsLocation extends Resource {
  static const String tfType = 'cloudflare_zero_trust_dns_location';

  CloudflareZeroTrustDnsLocation(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    TfArg<bool>? clientDefault,
    TfArg<String>? dnsDestinationIpsId,
    TfArg<bool>? ecsSupport,
    required TfArg<String> name,
    ZeroTrustDnsLocationEndpoints? endpoints,
    ZeroTrustDnsLocationMaxTtl? maxTtl,
    List<ZeroTrustDnsLocationNetworks>? networks,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'client_default': ?clientDefault,
           'dns_destination_ips_id': ?dnsDestinationIpsId,
           'ecs_support': ?ecsSupport,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustDnsLocation>`.
  RefTo<CloudflareZeroTrustDnsLocation> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `client_default` attribute.
  TfRef<bool> get clientDefault =>
      TfRef.attribute<bool>(this, 'client_default');

  /// Reference to `dns_destination_ips_id` attribute.
  TfRef<String> get dnsDestinationIpsId =>
      TfRef.attribute<String>(this, 'dns_destination_ips_id');

  /// Reference to `ecs_support` attribute.
  TfRef<bool> get ecsSupport => TfRef.attribute<bool>(this, 'ecs_support');
}
