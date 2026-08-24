// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zero_trust_dns_location`.
const Set<String> _cloudflareZeroTrustDnsLocationSensitive = <String>{};

/// Factory wrapper for `cloudflare_zero_trust_dns_location`.
///
/// Accepted Permissions
///
/// - `Cloudflare Zero Trust Secure DNS Locations Write` - `Zero Trust Read` -
/// `Zero Trust Write`
final class DataCloudflareZeroTrustDnsLocation extends Data {
  static const String tfType = 'cloudflare_zero_trust_dns_location';

  DataCloudflareZeroTrustDnsLocation({
    required super.localName,
    TfArg<String>? accountId,
    required TfArg<String> locationId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           'location_id': locationId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDnsLocationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `client_default` attribute.
  TfRef<bool> get clientDefault =>
      TfRef.attribute<bool>(this, 'client_default');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `dns_destination_ips_id` attribute.
  TfRef<String> get dnsDestinationIpsId =>
      TfRef.attribute<String>(this, 'dns_destination_ips_id');

  /// Reference to `dns_destination_ipv6_block_id` attribute.
  TfRef<String> get dnsDestinationIpv6BlockId =>
      TfRef.attribute<String>(this, 'dns_destination_ipv6_block_id');

  /// Reference to `doh_subdomain` attribute.
  TfRef<String> get dohSubdomain =>
      TfRef.attribute<String>(this, 'doh_subdomain');

  /// Reference to `ecs_support` attribute.
  TfRef<bool> get ecsSupport => TfRef.attribute<bool>(this, 'ecs_support');

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
