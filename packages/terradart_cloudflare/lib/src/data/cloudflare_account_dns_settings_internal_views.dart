// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  DataCloudflareAccountDnsSettingsInternalViews({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? direction,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<String>? zoneId,
    TfArg<String>? zoneName,
    DataAccountDnsSettingsInternalViewsName? name,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'direction': ?direction,
           'match': ?match,
           'max_items': ?maxItems,
           'order': ?order,
           'zone_id': ?zoneId,
           'zone_name': ?zoneName,
           if (name != null) 'name': TfArg.literal(name.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountDnsSettingsInternalViewsSensitive;
}
