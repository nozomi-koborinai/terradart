// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_zero_trust_dns_locations`.
const Set<String> _cloudflareZeroTrustDnsLocationsSensitive = <String>{};

/// Data Zero Trust Dns Locations enum for `direction`.
extension type const DataZeroTrustDnsLocationsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustDnsLocationsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustDnsLocationsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustDnsLocationsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZeroTrustDnsLocationsDirection._(TfArgLiteral('asc'));
  static const desc = DataZeroTrustDnsLocationsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataZeroTrustDnsLocationsDirection> values = [asc, desc];
}

/// Data Zero Trust Dns Locations Order enum for `order_by`.
extension type const DataZeroTrustDnsLocationsOrderBy._(TfArg<String> _)
    implements TfArg<String> {
  DataZeroTrustDnsLocationsOrderBy.variable(String name)
    : this._(TfArg.variable(name));
  DataZeroTrustDnsLocationsOrderBy.expression(String template)
    : this._(TfArg.expression(template));
  const DataZeroTrustDnsLocationsOrderBy.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZeroTrustDnsLocationsOrderBy._(TfArgLiteral('name'));
  static const createdAt = DataZeroTrustDnsLocationsOrderBy._(
    TfArgLiteral('created_at'),
  );
  static const updatedAt = DataZeroTrustDnsLocationsOrderBy._(
    TfArgLiteral('updated_at'),
  );

  static const List<DataZeroTrustDnsLocationsOrderBy> values = [
    name,
    createdAt,
    updatedAt,
  ];
}

/// Factory wrapper for `cloudflare_zero_trust_dns_locations`.
///
/// Accepted Permissions
///
/// - `Cloudflare Zero Trust Secure DNS Locations Write` - `Zero Trust Read` -
/// `Zero Trust Write`
final class DataCloudflareZeroTrustDnsLocations extends Data {
  static const String tfType = 'cloudflare_zero_trust_dns_locations';

  DataCloudflareZeroTrustDnsLocations(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    DataZeroTrustDnsLocationsDirection? direction,
    TfArg<List<String>>? filter,
    TfArg<num>? maxItems,
    DataZeroTrustDnsLocationsOrderBy? orderBy,
    TfArg<String>? search,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'filter': ?filter,
           'max_items': ?maxItems,
           'order_by': ?orderBy,
           'search': ?search,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZeroTrustDnsLocationsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `filter` attribute.
  TfRef<List<String>> get filter =>
      TfRef.attribute<List<String>>(this, 'filter');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order_by` attribute.
  TfRef<String> get orderBy => TfRef.attribute<String>(this, 'order_by');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');
}
