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

  final TfArg<DataDnsRecordFilterDirection>? direction;

  final TfArg<DataDnsRecordFilterMatch>? match;

  final TfArg<DataDnsRecordFilterOrder>? order;

  final TfArg<bool>? proxied;

  final TfArg<String>? search;

  final TfArg<String>? shadowedByName;

  final TfArg<String>? shadowingName;

  final TfArg<DataDnsRecordFilterTagMatch>? tagMatch;

  final TfArg<DataDnsRecordFilterType>? type;

  final DataDnsRecordFilterComment? comment;

  final DataDnsRecordFilterContent? content;

  final DataDnsRecordFilterName? name;

  final DataDnsRecordFilterTag? tag;

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
enum DataDnsRecordFilterDirection implements TerraformEnum {
  asc('asc'),
  desc('desc');

  const DataDnsRecordFilterDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match` — derived from the provider schema description.
enum DataDnsRecordFilterMatch implements TerraformEnum {
  any('any'),
  all('all');

  const DataDnsRecordFilterMatch(this.terraformValue);
  @override
  final String terraformValue;
}

/// `order` — derived from the provider schema description.
enum DataDnsRecordFilterOrder implements TerraformEnum {
  type('type'),
  name('name'),
  content('content'),
  ttl('ttl'),
  proxied('proxied');

  const DataDnsRecordFilterOrder(this.terraformValue);
  @override
  final String terraformValue;
}

/// `tag_match` — derived from the provider schema description.
enum DataDnsRecordFilterTagMatch implements TerraformEnum {
  any('any'),
  all('all');

  const DataDnsRecordFilterTagMatch(this.terraformValue);
  @override
  final String terraformValue;
}

/// `type` — derived from the provider schema description.
enum DataDnsRecordFilterType implements TerraformEnum {
  a('A'),
  aaaa('AAAA'),
  caa('CAA'),
  cert('CERT'),
  cname('CNAME'),
  dnskey('DNSKEY'),
  ds('DS'),
  https('HTTPS'),
  loc('LOC'),
  mx('MX'),
  naptr('NAPTR'),
  ns('NS'),
  openpgpkey('OPENPGPKEY'),
  ptr('PTR'),
  smimea('SMIMEA'),
  srv('SRV'),
  sshfp('SSHFP'),
  svcb('SVCB'),
  tlsa('TLSA'),
  txt('TXT'),
  uri('URI');

  const DataDnsRecordFilterType(this.terraformValue);
  @override
  final String terraformValue;
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
final class DataDnsRecordFilterTag {
  const DataDnsRecordFilterTag({
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

  DataCloudflareDnsRecord({
    required super.localName,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get dnsRecordIdRef =>
      TfRef.attribute<String>(this, 'dns_record_id');

  /// Reference to `include_shadow_metadata` attribute.
  TfRef<bool> get includeShadowMetadataRef =>
      TfRef.attribute<bool>(this, 'include_shadow_metadata');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
