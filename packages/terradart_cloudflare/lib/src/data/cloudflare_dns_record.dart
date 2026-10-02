// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../dns/cloudflare_dns_record.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_dns_record`.
const Set<String> _cloudflareDnsRecordSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DataDnsRecordFilter {
  const DataDnsRecordFilter({
    this.direction,
    this.match,
    this.order,
    this.proxied,
    this.search,
    this.shadowedByName,
    this.shadowingName,
    this.tagMatch,
    this.type,
    this.comment,
    this.content,
    this.name,
    this.tag,
  });

  final DataDnsRecordDirection? direction;

  final DataDnsRecordMatch? match;

  final DataDnsRecordOrder? order;

  final TfArg<bool>? proxied;

  final TfArg<String>? search;

  final TfArg<String>? shadowedByName;

  final TfArg<String>? shadowingName;

  final DataDnsRecordTagMatch? tagMatch;

  final DataDnsRecordFilterType? type;

  final DataDnsRecordFilterComment? comment;

  final DataDnsRecordFilterContent? content;

  final DataDnsRecordFilterName? name;

  final DataDnsRecordTag? tag;

  @internal
  Map<String, Object?> encode() => {
    'direction': ?direction?.toTfJson(),
    'match': ?match?.toTfJson(),
    'order': ?order?.toTfJson(),
    'proxied': ?proxied?.toTfJson(),
    'search': ?search?.toTfJson(),
    'shadowed_by_name': ?shadowedByName?.toTfJson(),
    'shadowing_name': ?shadowingName?.toTfJson(),
    'tag_match': ?tagMatch?.toTfJson(),
    'type': ?type?.toTfJson(),
    'comment': ?comment?.encode(),
    'content': ?content?.encode(),
    'name': ?name?.encode(),
    'tag': ?tag?.encode(),
  };
}

/// `direction` — derived from the provider schema description.
extension type const DataDnsRecordDirection._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordDirection.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordDirection.arg(TfArg<String> arg) : this._(arg);

  static const asc = DataDnsRecordDirection._(TfArgLiteral('asc'));
  static const desc = DataDnsRecordDirection._(TfArgLiteral('desc'));

  static const List<DataDnsRecordDirection> values = [asc, desc];
}

/// `match` — derived from the provider schema description.
extension type const DataDnsRecordMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordMatch.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataDnsRecordMatch._(TfArgLiteral('any'));
  static const all = DataDnsRecordMatch._(TfArgLiteral('all'));

  static const List<DataDnsRecordMatch> values = [any, all];
}

/// `order` — derived from the provider schema description.
extension type const DataDnsRecordOrder._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordOrder.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordOrder.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordOrder.arg(TfArg<String> arg) : this._(arg);

  static const type = DataDnsRecordOrder._(TfArgLiteral('type'));
  static const name = DataDnsRecordOrder._(TfArgLiteral('name'));
  static const content = DataDnsRecordOrder._(TfArgLiteral('content'));
  static const ttl = DataDnsRecordOrder._(TfArgLiteral('ttl'));
  static const proxied = DataDnsRecordOrder._(TfArgLiteral('proxied'));

  static const List<DataDnsRecordOrder> values = [
    type,
    name,
    content,
    ttl,
    proxied,
  ];
}

/// `tag_match` — derived from the provider schema description.
extension type const DataDnsRecordTagMatch._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordTagMatch.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordTagMatch.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordTagMatch.arg(TfArg<String> arg) : this._(arg);

  static const any = DataDnsRecordTagMatch._(TfArgLiteral('any'));
  static const all = DataDnsRecordTagMatch._(TfArgLiteral('all'));

  static const List<DataDnsRecordTagMatch> values = [any, all];
}

/// `type` — derived from the provider schema description.
extension type const DataDnsRecordFilterType._(TfArg<String> _)
    implements TfArg<String> {
  DataDnsRecordFilterType.variable(String name) : this._(TfArg.variable(name));
  DataDnsRecordFilterType.expression(String template)
    : this._(TfArg.expression(template));
  const DataDnsRecordFilterType.arg(TfArg<String> arg) : this._(arg);

  static const a = DataDnsRecordFilterType._(TfArgLiteral('A'));
  static const aaaa = DataDnsRecordFilterType._(TfArgLiteral('AAAA'));
  static const caa = DataDnsRecordFilterType._(TfArgLiteral('CAA'));
  static const cert = DataDnsRecordFilterType._(TfArgLiteral('CERT'));
  static const cname = DataDnsRecordFilterType._(TfArgLiteral('CNAME'));
  static const dnskey = DataDnsRecordFilterType._(TfArgLiteral('DNSKEY'));
  static const ds = DataDnsRecordFilterType._(TfArgLiteral('DS'));
  static const https = DataDnsRecordFilterType._(TfArgLiteral('HTTPS'));
  static const loc = DataDnsRecordFilterType._(TfArgLiteral('LOC'));
  static const mx = DataDnsRecordFilterType._(TfArgLiteral('MX'));
  static const naptr = DataDnsRecordFilterType._(TfArgLiteral('NAPTR'));
  static const ns = DataDnsRecordFilterType._(TfArgLiteral('NS'));
  static const openpgpkey = DataDnsRecordFilterType._(
    TfArgLiteral('OPENPGPKEY'),
  );
  static const ptr = DataDnsRecordFilterType._(TfArgLiteral('PTR'));
  static const smimea = DataDnsRecordFilterType._(TfArgLiteral('SMIMEA'));
  static const srv = DataDnsRecordFilterType._(TfArgLiteral('SRV'));
  static const sshfp = DataDnsRecordFilterType._(TfArgLiteral('SSHFP'));
  static const svcb = DataDnsRecordFilterType._(TfArgLiteral('SVCB'));
  static const tlsa = DataDnsRecordFilterType._(TfArgLiteral('TLSA'));
  static const txt = DataDnsRecordFilterType._(TfArgLiteral('TXT'));
  static const uri = DataDnsRecordFilterType._(TfArgLiteral('URI'));

  static const List<DataDnsRecordFilterType> values = [
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

/// Typed helper for the `filter.comment` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DataDnsRecordFilterComment {
  const DataDnsRecordFilterComment({
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

/// Typed helper for the `filter.content` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DataDnsRecordFilterContent {
  const DataDnsRecordFilterContent({
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

/// Typed helper for the `filter.name` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DataDnsRecordFilterName {
  const DataDnsRecordFilterName({
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

/// Typed helper for the `filter.tag` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DataDnsRecordTag {
  const DataDnsRecordTag({
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

/// Factory wrapper for `cloudflare_dns_record`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareDnsRecord extends Data {
  static const String tfType = 'cloudflare_dns_record';

  DataCloudflareDnsRecord(
    super.localName, {
    TfArg<String>? dnsRecordId,
    TfArg<bool>? includeShadowMetadata,
    RefTo<CloudflareZone>? zoneId,
    DataDnsRecordFilter? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dns_record_id': ?dnsRecordId,
           'include_shadow_metadata': ?includeShadowMetadata,
           'zone_id': ?zoneId?.encodeAs('id'),
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsRecordSensitive;

  /// A reference to the `cloudflare_dns_record` this data source reads, for
  /// arguments typed `RefTo<CloudflareDnsRecord>`.
  RefTo<CloudflareDnsRecord> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `comment_modified_on` attribute.
  TfRef<String> get commentModifiedOn =>
      TfRef.attribute<String>(this, 'comment_modified_on');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `private_routing` attribute.
  TfRef<bool> get privateRouting =>
      TfRef.attribute<bool>(this, 'private_routing');

  /// Reference to `proxiable` attribute.
  TfRef<bool> get proxiable => TfRef.attribute<bool>(this, 'proxiable');

  /// Reference to `proxied` attribute.
  TfRef<bool> get proxied => TfRef.attribute<bool>(this, 'proxied');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `tags_modified_on` attribute.
  TfRef<String> get tagsModifiedOn =>
      TfRef.attribute<String>(this, 'tags_modified_on');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `dns_record_id` attribute.
  TfRef<String> get dnsRecordId =>
      TfRef.attribute<String>(this, 'dns_record_id');

  /// Reference to `include_shadow_metadata` attribute.
  TfRef<bool> get includeShadowMetadata =>
      TfRef.attribute<bool>(this, 'include_shadow_metadata');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
