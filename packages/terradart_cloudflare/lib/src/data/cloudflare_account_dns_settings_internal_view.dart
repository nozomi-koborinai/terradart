// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_account_dns_settings_internal_view`.
const Set<String> _cloudflareAccountDnsSettingsInternalViewSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_account_dns_settings_internal_view` (derived from provider schema).
@immutable
final class DataAccountDnsSettingsInternalViewFilter {
  const DataAccountDnsSettingsInternalViewFilter({
    this.direction,
    this.match,
    this.order,
    this.zoneId,
    this.zoneName,
    this.name,
  });

  final TfArg<String>? direction;

  final TfArg<String>? match;

  final TfArg<String>? order;

  final TfArg<String>? zoneId;

  final TfArg<String>? zoneName;

  final DataAccountDnsSettingsInternalViewFilterName? name;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (match != null) 'match': match!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (zoneId != null) 'zone_id': zoneId!.toTfJson(),
    if (zoneName != null) 'zone_name': zoneName!.toTfJson(),
    if (name != null) 'name': name!.encode(),
  };
}

/// Typed helper for the `filter.name` block of
/// `cloudflare_account_dns_settings_internal_view` (derived from provider schema).
@immutable
final class DataAccountDnsSettingsInternalViewFilterName {
  const DataAccountDnsSettingsInternalViewFilterName({
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_account_dns_settings_internal_view`.
///
/// Accepted Permissions
///
/// - `DNS View Read` - `DNS View Write`
final class DataCloudflareAccountDnsSettingsInternalView extends Data {
  static const String tfType = 'cloudflare_account_dns_settings_internal_view';

  DataCloudflareAccountDnsSettingsInternalView({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<String>? viewId,
    DataAccountDnsSettingsInternalViewFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (viewId != null) 'view_id': viewId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountDnsSettingsInternalViewSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `modified_time` attribute.
  TfRef<String> get modifiedTime =>
      TfRef.attribute<String>(this, 'modified_time');

  /// Reference to `zones` attribute.
  TfRef<List<String>> get zones => TfRef.attribute<List<String>>(this, 'zones');
}
