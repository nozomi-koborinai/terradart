// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart';

/// Sensitive field paths for `cloudflare_zone`.
const Set<String> _cloudflareZoneSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_zone` (derived from provider schema).
@immutable
final class DataZoneFilter {
  const DataZoneFilter({
    this.direction,
    this.match,
    this.name,
    this.order,
    this.status,
    this.type,
    this.account,
  });

  final DataZoneDirection? direction;

  final DataZoneMatch? match;

  final TfArg<String>? name;

  final DataZoneOrder? order;

  final DataZoneFilterStatus? status;

  final TfArg<List<String>>? type;

  final DataZoneAccount? account;

  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'match': ?match?.toTfJson(),
    'name': ?name?.toTfJson(),
    'order': ?order?.toTfJson(),
    'status': ?status?.toTfJson(),
    'type': ?type?.toTfJson(),
    'account': ?account?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataZoneDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataZoneDirection.variable(String name) : this._(TfArg.variable(name));
  DataZoneDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataZoneDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataZoneDirection._(TfArgLiteral('asc'));
  static const desc = DataZoneDirection._(TfArgLiteral('desc'));

  static const List<DataZoneDirection> values = [asc, desc];
}

/// `match` — derived from the provider schema description.
extension type const DataZoneMatch._(TfArg<String> _) implements TfArg<String> {
  DataZoneMatch.variable(String name) : this._(TfArg.variable(name));
  DataZoneMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataZoneMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataZoneMatch._(TfArgLiteral('any'));
  static const all = DataZoneMatch._(TfArgLiteral('all'));

  static const List<DataZoneMatch> values = [any, all];
}

/// `order` — derived from the provider schema description.
extension type const DataZoneOrder._(TfArg<String> _) implements TfArg<String> {
  DataZoneOrder.variable(String name) : this._(TfArg.variable(name));
  DataZoneOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataZoneOrder.arg(TfArg<String> arg) : this._(arg);

  static const name = DataZoneOrder._(TfArgLiteral('name'));
  static const status = DataZoneOrder._(TfArgLiteral('status'));
  static const accountId = DataZoneOrder._(TfArgLiteral('account.id'));
  static const accountName = DataZoneOrder._(TfArgLiteral('account.name'));
  static const planId = DataZoneOrder._(TfArgLiteral('plan.id'));

  static const List<DataZoneOrder> values = [
    name,
    status,
    accountId,
    accountName,
    planId,
  ];
}

/// `status` — derived from the provider schema description.
extension type const DataZoneFilterStatus._(TfArg<String> _)
    implements TfArg<String> {
  DataZoneFilterStatus.variable(String name) : this._(TfArg.variable(name));
  DataZoneFilterStatus.expression(String template)
    : this._(TfArg.expression(template));
  const DataZoneFilterStatus.arg(TfArg<String> arg) : this._(arg);

  static const initializing = DataZoneFilterStatus._(
    TfArgLiteral('initializing'),
  );
  static const pending = DataZoneFilterStatus._(TfArgLiteral('pending'));
  static const active = DataZoneFilterStatus._(TfArgLiteral('active'));
  static const moved = DataZoneFilterStatus._(TfArgLiteral('moved'));

  static const List<DataZoneFilterStatus> values = [
    initializing,
    pending,
    active,
    moved,
  ];
}

/// Typed helper for the `filter.account` block of
/// `cloudflare_zone` (derived from provider schema).
@immutable
final class DataZoneAccount {
  const DataZoneAccount({this.id, this.name});

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    'id': ?id?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_zone`.
///
/// Accepted Permissions
///
/// - `Access: Apps and Policies Read` - `Access: Apps and Policies Revoke` -
/// `Access: Apps and Policies Write` - `Access: Mutual TLS Certificates Write`
/// - `Access: Organizations, Identity Providers, and Groups Write` - `Analytics
/// Read` - `Apps Write` - `Cache Purge` - `DNS Read` - `DNS Write` - `Firewall
/// Services Read` - `Firewall Services Write` - `Load Balancers Read` - `Load
/// Balancers Write` - `Logs Read` - `Logs Write` - `Page Rules Read` - `Page
/// Rules Write` - `SSL and Certificates Read` - `SSL and Certificates Write` -
/// `Stream Read` - `Stream Write` - `Trust and Safety Read` - `Trust and Safety
/// Write` - `Workers Routes Read` - `Workers Routes Write` - `Workers Scripts
/// Read` - `Workers Scripts Write` - `Zaraz Admin` - `Zaraz Edit` - `Zaraz
/// Read` - `Zero Trust: PII Read` - `Zone Read` - `Zone Settings Read` - `Zone
/// Settings Write` - `Zone Write` - `Zone Zone Read`
final class DataCloudflareZone extends Data {
  static const String tfType = 'cloudflare_zone';

  DataCloudflareZone(
    super.localName, {
    TfArg<String>? zoneId,
    DataZoneFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': ?zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSensitive;

  /// A reference to the `cloudflare_zone` this data source reads, for
  /// arguments typed `RefTo<CloudflareZone>`.
  RefTo<CloudflareZone> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `activated_on` attribute.
  TfRef<String> get activatedOn =>
      TfRef.attribute<String>(this, 'activated_on');

  /// Reference to `cname_suffix` attribute.
  TfRef<String> get cnameSuffix =>
      TfRef.attribute<String>(this, 'cname_suffix');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `development_mode` attribute.
  TfRef<num> get developmentMode =>
      TfRef.attribute<num>(this, 'development_mode');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `name_servers` attribute.
  TfRef<List<String>> get nameServers =>
      TfRef.attribute<List<String>>(this, 'name_servers');

  /// Reference to `original_dnshost` attribute.
  TfRef<String> get originalDnshost =>
      TfRef.attribute<String>(this, 'original_dnshost');

  /// Reference to `original_name_servers` attribute.
  TfRef<List<String>> get originalNameServers =>
      TfRef.attribute<List<String>>(this, 'original_name_servers');

  /// Reference to `original_registrar` attribute.
  TfRef<String> get originalRegistrar =>
      TfRef.attribute<String>(this, 'original_registrar');

  /// Reference to `paused` attribute.
  TfRef<bool> get paused => TfRef.attribute<bool>(this, 'paused');

  /// Reference to `permissions` attribute.
  TfRef<List<String>> get permissions =>
      TfRef.attribute<List<String>>(this, 'permissions');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `vanity_name_servers` attribute.
  TfRef<List<String>> get vanityNameServers =>
      TfRef.attribute<List<String>>(this, 'vanity_name_servers');

  /// Reference to `verification_key` attribute.
  TfRef<String> get verificationKey =>
      TfRef.attribute<String>(this, 'verification_key');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
