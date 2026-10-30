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

/// Data Account Dns Settings Internal Views enum for `direction`.
extension type const DataAccountDnsSettingsInternalViewsDirection._(
  TfArg<String> _
) implements TfArg<String> {
  DataAccountDnsSettingsInternalViewsDirection.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountDnsSettingsInternalViewsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDnsSettingsInternalViewsDirection.arg(TfArg<String> arg)
    : this._(arg);

  static const asc = DataAccountDnsSettingsInternalViewsDirection._(
    TfArgLiteral('asc'),
  );
  static const desc = DataAccountDnsSettingsInternalViewsDirection._(
    TfArgLiteral('desc'),
  );

  static const List<DataAccountDnsSettingsInternalViewsDirection> values = [
    asc,
    desc,
  ];
}

/// Data Account Dns Settings Internal Views enum for `match`.
extension type const DataAccountDnsSettingsInternalViewsMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountDnsSettingsInternalViewsMatch.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountDnsSettingsInternalViewsMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDnsSettingsInternalViewsMatch.arg(TfArg<String> arg)
    : this._(arg);

  static const any = DataAccountDnsSettingsInternalViewsMatch._(
    TfArgLiteral('any'),
  );
  static const all = DataAccountDnsSettingsInternalViewsMatch._(
    TfArgLiteral('all'),
  );

  static const List<DataAccountDnsSettingsInternalViewsMatch> values = [
    any,
    all,
  ];
}

/// Data Account Dns Settings Internal Views enum for `order`.
extension type const DataAccountDnsSettingsInternalViewsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataAccountDnsSettingsInternalViewsOrder.variable(String name)
    : this._(TfArg.variable(name));
  DataAccountDnsSettingsInternalViewsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataAccountDnsSettingsInternalViewsOrder.arg(TfArg<String> arg)
    : this._(arg);

  static const name = DataAccountDnsSettingsInternalViewsOrder._(
    TfArgLiteral('name'),
  );
  static const createdOn = DataAccountDnsSettingsInternalViewsOrder._(
    TfArgLiteral('created_on'),
  );
  static const modifiedOn = DataAccountDnsSettingsInternalViewsOrder._(
    TfArgLiteral('modified_on'),
  );

  static const List<DataAccountDnsSettingsInternalViewsOrder> values = [
    name,
    createdOn,
    modifiedOn,
  ];
}

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
    DataAccountDnsSettingsInternalViewsDirection? direction,
    DataAccountDnsSettingsInternalViewsMatch? match,
    TfArg<num>? maxItems,
    DataAccountDnsSettingsInternalViewsOrder? order,
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
