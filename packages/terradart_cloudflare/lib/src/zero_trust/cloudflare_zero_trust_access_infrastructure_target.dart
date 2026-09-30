// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_access_infrastructure_target`.
const Set<String> _cloudflareZeroTrustAccessInfrastructureTargetSensitive =
    <String>{};

/// Typed helper for the `ip` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class ZeroTrustAccessInfrastructureTargetIp {
  const ZeroTrustAccessInfrastructureTargetIp({this.ipv4, this.ipv6});

  final ZeroTrustAccessInfrastructureTargetIpv4? ipv4;

  final ZeroTrustAccessInfrastructureTargetIpv6? ipv6;

  Map<String, Object?> encode() => {
    'ipv4': ?ipv4?.encode(),
    'ipv6': ?ipv6?.encode(),
  };
}

/// Typed helper for the `ip.ipv4` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class ZeroTrustAccessInfrastructureTargetIpv4 {
  const ZeroTrustAccessInfrastructureTargetIpv4({
    this.ipAddr,
    this.virtualNetworkId,
  });

  final TfArg<String>? ipAddr;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    'ip_addr': ?ipAddr?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
  };
}

/// Typed helper for the `ip.ipv6` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class ZeroTrustAccessInfrastructureTargetIpv6 {
  const ZeroTrustAccessInfrastructureTargetIpv6({
    this.ipAddr,
    this.virtualNetworkId,
  });

  final TfArg<String>? ipAddr;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    'ip_addr': ?ipAddr?.toTfJson(),
    'virtual_network_id': ?virtualNetworkId?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_infrastructure_target`.
final class CloudflareZeroTrustAccessInfrastructureTarget extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_access_infrastructure_target';

  CloudflareZeroTrustAccessInfrastructureTarget({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> hostname,
    TfArg<Map<String, String>>? tags,
    required ZeroTrustAccessInfrastructureTargetIp ip,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'hostname': hostname,
           'tags': ?tags,
           'ip': TfArg.literal(ip.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessInfrastructureTargetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZeroTrustAccessInfrastructureTarget>`.
  RefTo<CloudflareZeroTrustAccessInfrastructureTarget> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostnameRef => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
