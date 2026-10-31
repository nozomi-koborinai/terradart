// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_dns_records`.
const Set<String> _cloudflareDnsRecordsSensitive = <String>{};

/// Data Dns Records enum for `direction`.
extension type const DataDnsRecordsDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordsDirection.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordsDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordsDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataDnsRecordsDirection._(TfArgLiteral('asc'));
  static const desc = DataDnsRecordsDirection._(TfArgLiteral('desc'));

  static const List<DataDnsRecordsDirection> values = [asc, desc];
}

/// Data Dns Records enum for `match`.
extension type const DataDnsRecordsMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordsMatch.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordsMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordsMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataDnsRecordsMatch._(TfArgLiteral('any'));
  static const all = DataDnsRecordsMatch._(TfArgLiteral('all'));

  static const List<DataDnsRecordsMatch> values = [any, all];
}

/// Data Dns Records enum for `order`.
extension type const DataDnsRecordsOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordsOrder.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordsOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordsOrder.arg(TfArg<String> arg) : this._(arg);

  static const type = DataDnsRecordsOrder._(TfArgLiteral('type'));
  static const name = DataDnsRecordsOrder._(TfArgLiteral('name'));
  static const content = DataDnsRecordsOrder._(TfArgLiteral('content'));
  static const ttl = DataDnsRecordsOrder._(TfArgLiteral('ttl'));
  static const proxied = DataDnsRecordsOrder._(TfArgLiteral('proxied'));

  static const List<DataDnsRecordsOrder> values = [
    type,
    name,
    content,
    ttl,
    proxied,
  ];
}

/// Data Dns Records Tag enum for `tag_match`.
extension type const DataDnsRecordsTagMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordsTagMatch.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordsTagMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordsTagMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataDnsRecordsTagMatch._(TfArgLiteral('any'));
  static const all = DataDnsRecordsTagMatch._(TfArgLiteral('all'));

  static const List<DataDnsRecordsTagMatch> values = [any, all];
}

/// Data Dns Records enum for `type`.
extension type const DataDnsRecordsType._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordsType.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordsType.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordsType.arg(TfArg<String> arg) : this._(arg);

  static const a = DataDnsRecordsType._(TfArgLiteral('A'));
  static const aaaa = DataDnsRecordsType._(TfArgLiteral('AAAA'));
  static const caa = DataDnsRecordsType._(TfArgLiteral('CAA'));
  static const cert = DataDnsRecordsType._(TfArgLiteral('CERT'));
  static const cname = DataDnsRecordsType._(TfArgLiteral('CNAME'));
  static const dnskey = DataDnsRecordsType._(TfArgLiteral('DNSKEY'));
  static const ds = DataDnsRecordsType._(TfArgLiteral('DS'));
  static const https = DataDnsRecordsType._(TfArgLiteral('HTTPS'));
  static const loc = DataDnsRecordsType._(TfArgLiteral('LOC'));
  static const mx = DataDnsRecordsType._(TfArgLiteral('MX'));
  static const naptr = DataDnsRecordsType._(TfArgLiteral('NAPTR'));
  static const ns = DataDnsRecordsType._(TfArgLiteral('NS'));
  static const openpgpkey = DataDnsRecordsType._(TfArgLiteral('OPENPGPKEY'));
  static const ptr = DataDnsRecordsType._(TfArgLiteral('PTR'));
  static const smimea = DataDnsRecordsType._(TfArgLiteral('SMIMEA'));
  static const srv = DataDnsRecordsType._(TfArgLiteral('SRV'));
  static const sshfp = DataDnsRecordsType._(TfArgLiteral('SSHFP'));
  static const svcb = DataDnsRecordsType._(TfArgLiteral('SVCB'));
  static const tlsa = DataDnsRecordsType._(TfArgLiteral('TLSA'));
  static const txt = DataDnsRecordsType._(TfArgLiteral('TXT'));
  static const uri = DataDnsRecordsType._(TfArgLiteral('URI'));

  static const List<DataDnsRecordsType> values = [
    a,
    aaaa,
    caa,
    cert,
    cname,
    dnskey,
    ds,
    https,
    loc,
    mx,
    naptr,
    ns,
    openpgpkey,
    ptr,
    smimea,
    srv,
    sshfp,
    svcb,
    tlsa,
    txt,
    uri,
  ];
}

/// Typed helper for the `comment` block of
/// `cloudflare_dns_records` (derived from provider schema).
@immutable
final class DataDnsRecordsComment {
  const DataDnsRecordsComment({
    this.absent,
    this.contains,
    this.endswith,
    this.exact,
    this.present,
    this.startswith,
  });

  final TfArg<String>? absent;

  final TfArg<String>? contains;

  final TfArg<String>? endswith;

  final TfArg<String>? exact;

  final TfArg<String>? present;

  final TfArg<String>? startswith;

  @internal
  Map<String, Object?> encode() => {
    'absent': ?absent?.toTfJson(),
    'contains': ?contains?.toTfJson(),
    'endswith': ?endswith?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'present': ?present?.toTfJson(),
    'startswith': ?startswith?.toTfJson(),
  };
}

/// Typed helper for the `content` block of
/// `cloudflare_dns_records` (derived from provider schema).
@immutable
final class DataDnsRecordsContent {
  const DataDnsRecordsContent({
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

/// Typed helper for the `name` block of
/// `cloudflare_dns_records` (derived from provider schema).
@immutable
final class DataDnsRecordsName {
  const DataDnsRecordsName({
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

/// Typed helper for the `tag` block of
/// `cloudflare_dns_records` (derived from provider schema).
@immutable
final class DataDnsRecordsTag {
  const DataDnsRecordsTag({
    this.absent,
    this.contains,
    this.endswith,
    this.exact,
    this.present,
    this.startswith,
  });

  final TfArg<String>? absent;

  final TfArg<String>? contains;

  final TfArg<String>? endswith;

  final TfArg<String>? exact;

  final TfArg<String>? present;

  final TfArg<String>? startswith;

  @internal
  Map<String, Object?> encode() => {
    'absent': ?absent?.toTfJson(),
    'contains': ?contains?.toTfJson(),
    'endswith': ?endswith?.toTfJson(),
    'exact': ?exact?.toTfJson(),
    'present': ?present?.toTfJson(),
    'startswith': ?startswith?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_dns_records`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareDnsRecords extends Data {
  static const String tfType = 'cloudflare_dns_records';

  DataCloudflareDnsRecords(
    super.localName, {
    DataDnsRecordsDirection? direction,
    TfArg<bool>? includeShadowMetadata,
    DataDnsRecordsMatch? match,
    TfArg<num>? maxItems,
    DataDnsRecordsOrder? order,
    TfArg<bool>? proxied,
    TfArg<String>? search,
    TfArg<String>? shadowedByName,
    TfArg<String>? shadowingName,
    DataDnsRecordsTagMatch? tagMatch,
    DataDnsRecordsType? type,
    RefTo<CloudflareZone>? zoneId,
    DataDnsRecordsComment? comment,
    DataDnsRecordsContent? content,
    DataDnsRecordsName? name,
    DataDnsRecordsTag? tag,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'direction': ?direction,
           'include_shadow_metadata': ?includeShadowMetadata,
           'match': ?match,
           'max_items': ?maxItems,
           'order': ?order,
           'proxied': ?proxied,
           'search': ?search,
           'shadowed_by_name': ?shadowedByName,
           'shadowing_name': ?shadowingName,
           'tag_match': ?tagMatch,
           'type': ?type,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (comment != null) 'comment': TfArg.literal(comment.encode()),
           if (content != null) 'content': TfArg.literal(content.encode()),
           if (name != null) 'name': TfArg.literal(name.encode()),
           if (tag != null) 'tag': TfArg.literal(tag.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsRecordsSensitive;

  /// Reference to `direction` attribute.
  TfRef<String> get direction => TfRef.attribute<String>(this, 'direction');

  /// Reference to `include_shadow_metadata` attribute.
  TfRef<bool> get includeShadowMetadata =>
      TfRef.attribute<bool>(this, 'include_shadow_metadata');

  /// Reference to `match` attribute.
  TfRef<String> get match => TfRef.attribute<String>(this, 'match');

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItems => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `order` attribute.
  TfRef<String> get order => TfRef.attribute<String>(this, 'order');

  /// Reference to `proxied` attribute.
  TfRef<bool> get proxied => TfRef.attribute<bool>(this, 'proxied');

  /// Reference to `search` attribute.
  TfRef<String> get search => TfRef.attribute<String>(this, 'search');

  /// Reference to `shadowed_by_name` attribute.
  TfRef<String> get shadowedByName =>
      TfRef.attribute<String>(this, 'shadowed_by_name');

  /// Reference to `shadowing_name` attribute.
  TfRef<String> get shadowingName =>
      TfRef.attribute<String>(this, 'shadowing_name');

  /// Reference to `tag_match` attribute.
  TfRef<String> get tagMatch => TfRef.attribute<String>(this, 'tag_match');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
