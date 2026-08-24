// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_device_default_profile_local_domain_fallback`.
const Set<String>
_cloudflareZeroTrustDeviceDefaultProfileLocalDomainFallbackSensitive =
    <String>{};

/// Typed helper for the `domains` block of
/// `cloudflare_zero_trust_device_default_profile_local_domain_fallback` (derived from provider schema).
@immutable
final class ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomains {
  const ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomains({
    this.description,
    this.dnsServer,
    required this.suffix,
  });

  final TfArg<String>? description;

  final TfArg<List<Object?>>? dnsServer;

  final TfArg<String> suffix;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (dnsServer != null) 'dns_server': dnsServer!.toTfJson(),
    'suffix': suffix.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zero_trust_device_default_profile_local_domain_fallback`.
///
/// Accepted Permissions
///
/// - `Zero Trust Write`
final class CloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback
    extends Resource {
  static const String tfType =
      'cloudflare_zero_trust_device_default_profile_local_domain_fallback';

  CloudflareZeroTrustDeviceDefaultProfileLocalDomainFallback({
    required super.localName,
    required TfArg<String> accountId,
    required List<ZeroTrustDeviceDefaultProfileLocalDomainFallbackDomains>
    domains,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'domains': TfArg.literal([for (final e in domains) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareZeroTrustDeviceDefaultProfileLocalDomainFallbackSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
