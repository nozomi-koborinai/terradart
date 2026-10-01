// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zero_trust/cloudflare_zero_trust_dns_location.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dns_location`.
const Set<String> _cloudflareZeroTrustDnsLocationSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zero_trust_dns_location` (derived from provider schema).
@immutable
final class DataZeroTrustDnsLocationFilter {
  const DataZeroTrustDnsLocationFilter({
    this.direction,
    this.filter,
    this.orderBy,
    this.search,
  });

  final TfArg<DataZeroTrustDnsLocationDirection>? direction;

  final TfArg<List<String>>? filter;

  final TfArg<DataZeroTrustDnsLocationOrderBy>? orderBy;

  final TfArg<String>? search;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'filter': ?filter?.toTfJson(),
    'order_by': ?orderBy?.toTfJson(),
    'search': ?search?.toTfJson(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataZeroTrustDnsLocationDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataZeroTrustDnsLocationDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order_by` — derived from the provider schema description.
enum DataZeroTrustDnsLocationOrderBy implements TerraformEnum {
  name('name'),
  createdAt('created_at'),
  updatedAt('updated_at');

  const DataZeroTrustDnsLocationOrderBy(this.terraformValue);
  @override
  final String terraformValue;
}

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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? locationId,
    DataZeroTrustDnsLocationFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'location_id': ?locationId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDnsLocationSensitive;

  /// A reference to the `cloudflare_zero_trust_dns_location` this data source reads, for
  /// arguments typed `RefTo<CloudflareZeroTrustDnsLocation>`.
  RefTo<CloudflareZeroTrustDnsLocation> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `location_id` attribute.
  TfRef<String> get locationId => TfRef.attribute<String>(this, 'location_id');
}
