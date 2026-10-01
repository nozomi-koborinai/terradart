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

  final DataAccountDnsSettingsInternalViewDirection? direction;

  final DataAccountDnsSettingsInternalViewMatch? match;

  final DataAccountDnsSettingsInternalViewOrder? order;

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
extension type const DataAccountDnsSettingsInternalViewDirection._(
  TfArg<String> _
) implements TfArg<String> {
  DataAccountDnsSettingsInternalViewDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountDnsSettingsInternalViewDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDnsSettingsInternalViewDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataAccountDnsSettingsInternalViewDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataAccountDnsSettingsInternalViewDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataAccountDnsSettingsInternalViewDirection> values = [
    asc,
    desc,
  ];
}

/// `match` — derived from the provider schema description.
extension type const DataAccountDnsSettingsInternalViewMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountDnsSettingsInternalViewMatch.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountDnsSettingsInternalViewMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDnsSettingsInternalViewMatch.arg(TfArg<String> arg)
    : this._(arg);

  static const any = DataAccountDnsSettingsInternalViewMatch._(
    TfArgLiteral('any'),
  );
  static const all = DataAccountDnsSettingsInternalViewMatch._(
    TfArgLiteral('all'),
  );

  static const List<DataAccountDnsSettingsInternalViewMatch> values = [
    any,
    all,
  ];
}

/// `order` — derived from the provider schema description.
extension type const DataAccountDnsSettingsInternalViewOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountDnsSettingsInternalViewOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountDnsSettingsInternalViewOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDnsSettingsInternalViewOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataAccountDnsSettingsInternalViewOrder._(
    TfArgLiteral('name'),
  );
  static const createdOn = DataAccountDnsSettingsInternalViewOrder._(
    TfArgLiteral('created_on'),
  );
  static const modifiedOn = DataAccountDnsSettingsInternalViewOrder._(
    TfArgLiteral('modified_on'),
  );

  static const List<DataAccountDnsSettingsInternalViewOrder> values = [
    name,
    createdOn,
    modifiedOn,
  ];
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

  DataCloudflareAccountDnsSettingsInternalView(
    super.localName, {
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `view_id` attribute.
  TfRef<String> get viewId => TfRef.attribute<String>(this, 'view_id');
}
