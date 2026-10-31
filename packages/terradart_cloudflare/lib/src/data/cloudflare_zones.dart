// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zones`.
const Set<String> _cloudflareZonesSensitive = <String>{};

/// Data Zones enum for `direction`.
extension type const DataZonesDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZonesDirection.variable(String name) : this._(TfArg.variable(name));
  DataZonesDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZonesDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZonesDirection._(TfArgLiteral('asc'));
  static const desc = DataZonesDirection._(TfArgLiteral('desc'));

  static const List<DataZonesDirection> values = [asc, desc];
}

/// Data Zones enum for `match`.
extension type const DataZonesMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataZonesMatch.variable(String name) : this._(TfArg.variable(name));
  DataZonesMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataZonesMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataZonesMatch._(TfArgLiteral('any'));
  static const all = DataZonesMatch._(TfArgLiteral('all'));

  static const List<DataZonesMatch> values = [any, all];
}

/// Data Zones enum for `order`.
extension type const DataZonesOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataZonesOrder.variable(String name) : this._(TfArg.variable(name));
  DataZonesOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZonesOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZonesOrder._(TfArgLiteral('name'));
  static const status = DataZonesOrder._(TfArgLiteral('status'));
  static const accountId = DataZonesOrder._(TfArgLiteral('account.id'));
  static const accountName = DataZonesOrder._(TfArgLiteral('account.name'));
  static const planId = DataZonesOrder._(TfArgLiteral('plan.id'));

  static const List<DataZonesOrder> values = [
    name,
    status,
    accountId,
    accountName,
    planId,
  ];
}

/// Data Zones enum for `status`.
extension type const DataZonesStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataZonesStatus.variable(String name) : this._(TfArg.variable(name));
  DataZonesStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataZonesStatus.arg(TfArg<String> arg) : this._(arg);

  static const initializing = DataZonesStatus._(TfArgLiteral('initializing'));
  static const pending = DataZonesStatus._(TfArgLiteral('pending'));
  static const active = DataZonesStatus._(TfArgLiteral('active'));
  static const moved = DataZonesStatus._(TfArgLiteral('moved'));

  static const List<DataZonesStatus> values = [
    initializing,
    pending,
    active,
    moved,
  ];
}

/// Typed helper for the `account` block of
/// `cloudflare_zones` (derived from provider schema).
@immutable
final class DataZonesAccount {
  const DataZonesAccount({this.id, this.name});

  final TfArg<String>? id;

  final TfArg<String>? name;

  @internal
  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zones`.
///
/// Accepted Permissions
///
/// - `Zone Zone Read`
final class DataCloudflareZones extends Data {
  static const String tfType = 'cloudflare_zones';

  DataCloudflareZones(
    super.localName, {
    DataZonesDirection? direction,
    DataZonesMatch? match,
    TfArg<num>? maxItems,
    TfArg<String>? name,
    DataZonesOrder? order,
    DataZonesStatus? status,
    TfArg<List<String>>? type,
    DataZonesAccount? account,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'match': ?match,
           'max_items': ?maxItems,
           'name': ?name,
           'order': ?order,
           'status': ?status,
           'type': ?type,
           if (account != null) 'account': TfArg.literal(account.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZonesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<List<String>> get type => TfRef.attribute<List<String>>(this, 'type');
}
