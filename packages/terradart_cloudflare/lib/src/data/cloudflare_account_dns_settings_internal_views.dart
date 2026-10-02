// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_account_dns_settings_internal_views`.
const Set<String> _cloudflareAccountDnsSettingsInternalViewsSensitive =
    <String>{};

/// Typed helper for the `name` block of
/// `cloudflare_account_dns_settings_internal_views` (derived from provider schema).
@immutable
final class DataAccountDnsSettingsInternalViewsName {
  const DataAccountDnsSettingsInternalViewsName({
    this.contains,
    this.endswith,
    this.exact,
    this.startswith,
  });

  final TfArg<String>? contains;

  final TfArg<String>? endswith;

  final TfArg<String>? exact;

  final TfArg<String>? startswith;

  @internal
  Map<String, Object?> encode() => {
    'contains': ?contains?.toTfJson(),
    'endswith': ?endswith?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'startswith': ?startswith?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_account_dns_settings_internal_views`.
///
/// Accepted Permissions
///
/// - `DNS View Read` - `DNS View Write`
final class DataCloudflareAccountDnsSettingsInternalViews extends Data {
  static const String tfType = 'cloudflare_account_dns_settings_internal_views';

  DataCloudflareAccountDnsSettingsInternalViews(
    super.localName, {
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? direction,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    RefTo<CloudflareZone>? zoneId,
    TfArg<String>? zoneName,
    DataAccountDnsSettingsInternalViewsName? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'direction': ?direction,
           'match': ?match,
           'max_items': ?maxItems,
           'order': ?order,
           'zone_id': ?zoneId?.encodeAs('id'),
           'zone_name': ?zoneName,
           if (name != null) 'name': TfArg.literal(name.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountDnsSettingsInternalViewsSensitive;

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');

  /// Reference to `zone_name` attribute.
  TfRef<String> get zoneName => TfRef.attribute<String>(this, 'zone_name');
}
