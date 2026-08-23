// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_access_infrastructure_target`.
const Set<String> _cloudflareZeroTrustAccessInfrastructureTargetSensitive =
    <String>{};

/// Typed helper for the `ip` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class ZeroTrustAccessInfrastructureTargetIp {
  const ZeroTrustAccessInfrastructureTargetIp({this.ipv4, this.ipv6});

  final ZeroTrustAccessInfrastructureTargetIpIpv4? ipv4;

  final ZeroTrustAccessInfrastructureTargetIpIpv6? ipv6;

  Map<String, Object?> encode() => {
    if (ipv4 != null) 'ipv4': ipv4!.encode(),
    if (ipv6 != null) 'ipv6': ipv6!.encode(),
  };
}

/// Typed helper for the `ip.ipv4` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class ZeroTrustAccessInfrastructureTargetIpIpv4 {
  const ZeroTrustAccessInfrastructureTargetIpIpv4({
    this.ipAddr,
    this.virtualNetworkId,
  });

  final TfArg<String>? ipAddr;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    if (ipAddr != null) 'ip_addr': ipAddr!.toTfJson(),
    if (virtualNetworkId != null)
      'virtual_network_id': virtualNetworkId!.toTfJson(),
  };
}

/// Typed helper for the `ip.ipv6` block of
/// `cloudflare_zero_trust_access_infrastructure_target` (derived from provider schema).
@immutable
final class ZeroTrustAccessInfrastructureTargetIpIpv6 {
  const ZeroTrustAccessInfrastructureTargetIpIpv6({
    this.ipAddr,
    this.virtualNetworkId,
  });

  final TfArg<String>? ipAddr;

  final TfArg<String>? virtualNetworkId;

  Map<String, Object?> encode() => {
    if (ipAddr != null) 'ip_addr': ipAddr!.toTfJson(),
    if (virtualNetworkId != null)
      'virtual_network_id': virtualNetworkId!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_access_infrastructure_target`.
final class CloudflareZeroTrustAccessInfrastructureTarget extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_access_infrastructure_target';

  CloudflareZeroTrustAccessInfrastructureTarget({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> hostname,
    required ZeroTrustAccessInfrastructureTargetIp ip,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'hostname': hostname,
           'ip': TfArg.literal(ip.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustAccessInfrastructureTargetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `modified_at` attribute.
  TfRef<String> get modifiedAt => TfRef.attribute<String>(this, 'modified_at');
}
