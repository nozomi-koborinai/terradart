// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? direction;

  final TfArg<String>? match;

  final TfArg<String>? name;

  final TfArg<String>? order;

  final TfArg<String>? status;

  final TfArg<List<Object?>>? type;

  final DataZoneFilterAccount? account;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (match != null) 'match': match!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (account != null) 'account': account!.encode(),
  };
}

/// Typed helper for the `filter.account` block of
/// `cloudflare_zone` (derived from provider schema).
@immutable
final class DataZoneFilterAccount {
  const DataZoneFilterAccount({this.id, this.name});

  final TfArg<String>? id;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (id != null) 'id': id!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
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

  DataCloudflareZone({
    required super.localName,
    TfArg<String>? zoneId,
    DataZoneFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
