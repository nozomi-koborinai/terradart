// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../account/cloudflare_account_dns_settings_internal_view.dart';
import '../account/cloudflare_account.dart' show CloudflareAccount;
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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

  final TfArg<DataAccountDnsSettingsInternalViewDirection>? direction;

  final TfArg<DataAccountDnsSettingsInternalViewMatch>? match;

  final TfArg<DataAccountDnsSettingsInternalViewOrder>? order;

  final RefTo<CloudflareZone>? zoneId;

  final TfArg<String>? zoneName;

  final DataAccountDnsSettingsInternalViewFilterName? name;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'match': ?match?.toTfJson(),
    'order': ?order?.toTfJson(),
    'zone_id': ?zoneId?.encodeAs('id').toTfJson(),
    'zone_name': ?zoneName?.toTfJson(),
    'name': ?name?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
enum DataAccountDnsSettingsInternalViewDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataAccountDnsSettingsInternalViewDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match` — derived from the provider schema description.
enum DataAccountDnsSettingsInternalViewMatch implements TerraformEnum {
  any('any'),
  all('all');

  const DataAccountDnsSettingsInternalViewMatch(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataAccountDnsSettingsInternalViewOrder implements TerraformEnum {
  name('name'),
  createdOn('created_on'),
  modifiedOn('modified_on');

  const DataAccountDnsSettingsInternalViewOrder(this.terraformValue);
  @override
  final String terraformValue;
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
    'contains': ?contains?.toTfJson(),
    'endswith': ?endswith?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'startswith': ?startswith?.toTfJson(),
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
    RefTo<CloudflareAccount>? accountId,
    TfArg<String>? viewId,
    DataAccountDnsSettingsInternalViewFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId?.encodeAs('id'),
           'view_id': ?viewId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _cloudflareAccountDnsSettingsInternalViewSensitive;

  /// A reference to the `cloudflare_account_dns_settings_internal_view` this data source reads, for
  /// arguments typed `RefTo<CloudflareAccountDnsSettingsInternalView>`.
  RefTo<CloudflareAccountDnsSettingsInternalView> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

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

  /// Reference to `account_id` attribute.
  TfRef<String> get accountIdRef => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `view_id` attribute.
  TfRef<String> get viewIdRef => TfRef.attribute<String>(this, 'view_id');
}
