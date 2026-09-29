// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_dns_record`.
const Set<String> _cloudflareDnsRecordSensitive = <String>{};

/// Dns Record enum for `type`.
enum DnsRecordType implements TerraformEnum {
  a('A'),
  aaaa('AAAA'),
  cname('CNAME'),
  mx('MX'),
  ns('NS'),
  openpgpkey('OPENPGPKEY'),
  ptr('PTR'),
  txt('TXT'),
  caa('CAA'),
  cert('CERT'),
  dnskey('DNSKEY'),
  ds('DS'),
  https('HTTPS'),
  loc('LOC'),
  naptr('NAPTR'),
  smimea('SMIMEA'),
  srv('SRV'),
  sshfp('SSHFP'),
  svcb('SVCB'),
  tlsa('TLSA'),
  uri('URI');

  const DnsRecordType(this.terraformValue);
  @override
  final String terraformValue;
}

/// At most one of `content`, `data` on `cloudflare_dns_record`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.content(...)`.
sealed class DnsRecordContent {
  const DnsRecordContent();

  /// Sets `content`.
  const factory DnsRecordContent.content(TfArg<String> content) =
      DnsRecordContentContent;

  /// Sets `data`.
  const factory DnsRecordContent.data(DnsRecordData data) =
      DnsRecordContentData;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DnsRecordContent.content] choice: sets `content`.
final class DnsRecordContentContent extends DnsRecordContent {
  const DnsRecordContentContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [DnsRecordContent.data] choice: sets `data`.
final class DnsRecordContentData extends DnsRecordContent {
  const DnsRecordContentData(this.data);

  final DnsRecordData data;

  @override
  String get blockKey => 'data';

  @override
  Map<String, Object?> encode() => {'data': data.encode()};

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'data': TfArg.literal(data.encode()),
  };
}

/// Typed helper for the `data` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DnsRecordData {
  const DnsRecordData({
    this.algorithm,
    this.altitude,
    this.certificate,
    this.digest,
    this.digestType,
    this.fingerprint,
    this.flags,
    this.keyTag,
    this.latDegrees,
    this.latDirection,
    this.latMinutes,
    this.latSeconds,
    this.longDegrees,
    this.longDirection,
    this.longMinutes,
    this.longSeconds,
    this.matchingType,
    this.order,
    this.port,
    this.precisionHorz,
    this.precisionVert,
    this.preference,
    this.priority,
    this.protocol,
    this.publicKey,
    this.regex,
    this.replacement,
    this.selector,
    this.service,
    this.size,
    this.tag,
    this.target,
    this.type,
    this.usage,
    this.value,
    this.weight,
  });

  final TfArg<num>? algorithm;

  final TfArg<num>? altitude;

  final TfArg<String>? certificate;

  final TfArg<String>? digest;

  final TfArg<num>? digestType;

  final TfArg<String>? fingerprint;

  final TfArg<Object?>? flags;

  final TfArg<num>? keyTag;

  final TfArg<num>? latDegrees;

  final TfArg<DnsRecordDataLatDirection>? latDirection;

  final TfArg<num>? latMinutes;

  final TfArg<num>? latSeconds;

  final TfArg<num>? longDegrees;

  final TfArg<DnsRecordDataLongDirection>? longDirection;

  final TfArg<num>? longMinutes;

  final TfArg<num>? longSeconds;

  final TfArg<num>? matchingType;

  final TfArg<num>? order;

  final TfArg<num>? port;

  final TfArg<num>? precisionHorz;

  final TfArg<num>? precisionVert;

  final TfArg<num>? preference;

  final TfArg<num>? priority;

  final TfArg<num>? protocol;

  final TfArg<String>? publicKey;

  final TfArg<String>? regex;

  final TfArg<String>? replacement;

  final TfArg<num>? selector;

  final TfArg<String>? service;

  final TfArg<num>? size;

  final TfArg<String>? tag;

  final TfArg<String>? target;

  final TfArg<num>? type;

  final TfArg<num>? usage;

  final TfArg<String>? value;

  final TfArg<num>? weight;

  Map<String, Object?> encode() => {
    'algorithm': ?algorithm?.toTfJson(),
    'altitude': ?altitude?.toTfJson(),
    'certificate': ?certificate?.toTfJson(),
    'digest': ?digest?.toTfJson(),
    'digest_type': ?digestType?.toTfJson(),
    'fingerprint': ?fingerprint?.toTfJson(),
    'flags': ?flags?.toTfJson(),
    'key_tag': ?keyTag?.toTfJson(),
    'lat_degrees': ?latDegrees?.toTfJson(),
    'lat_direction': ?latDirection?.toTfJson(),
    'lat_minutes': ?latMinutes?.toTfJson(),
    'lat_seconds': ?latSeconds?.toTfJson(),
    'long_degrees': ?longDegrees?.toTfJson(),
    'long_direction': ?longDirection?.toTfJson(),
    'long_minutes': ?longMinutes?.toTfJson(),
    'long_seconds': ?longSeconds?.toTfJson(),
    'matching_type': ?matchingType?.toTfJson(),
    'order': ?order?.toTfJson(),
    'port': ?port?.toTfJson(),
    'precision_horz': ?precisionHorz?.toTfJson(),
    'precision_vert': ?precisionVert?.toTfJson(),
    'preference': ?preference?.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'protocol': ?protocol?.toTfJson(),
    'public_key': ?publicKey?.toTfJson(),
    'regex': ?regex?.toTfJson(),
    'replacement': ?replacement?.toTfJson(),
    'selector': ?selector?.toTfJson(),
    'service': ?service?.toTfJson(),
    'size': ?size?.toTfJson(),
    'tag': ?tag?.toTfJson(),
    'target': ?target?.toTfJson(),
    'type': ?type?.toTfJson(),
    'usage': ?usage?.toTfJson(),
    'value': ?value?.toTfJson(),
    'weight': ?weight?.toTfJson(),
  };
}

/// `lat_direction` — derived from the provider schema description.
enum DnsRecordDataLatDirection implements TerraformEnum {
  n('N'),
  s('S');

  const DnsRecordDataLatDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `long_direction` — derived from the provider schema description.
enum DnsRecordDataLongDirection implements TerraformEnum {
  e('E'),
  w('W');

  const DnsRecordDataLongDirection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `settings` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DnsRecordSettings {
  const DnsRecordSettings({this.flattenCname, this.ipv4Only, this.ipv6Only});

  final TfArg<bool>? flattenCname;

  final TfArg<bool>? ipv4Only;

  final TfArg<bool>? ipv6Only;

  Map<String, Object?> encode() => {
    'flatten_cname': ?flattenCname?.toTfJson(),
    'ipv4_only': ?ipv4Only?.toTfJson(),
    'ipv6_only': ?ipv6Only?.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_dns_record`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
///
/// Cloudflare **DNS record** — points a name inside a zone at your
/// backend (e.g. a `CNAME` for `api.example.com` toward Cloud Run's
/// `ghs.googlehosted.com`).
///
/// Reference the parent zone with `zoneId: TfArg.ref(zone.id)`.
/// `ttl: 1` means
/// "automatic" in Cloudflare's API; proxied records always use it.
/// Structured records (MX, SRV, CAA, …) pass a typed [DnsRecordData]
/// helper; flattening / IPv4-only / IPv6-only flags live on
/// [DnsRecordSettings].
final class CloudflareDnsRecord extends Resource {
  static const String tfType = 'cloudflare_dns_record';

  CloudflareDnsRecord({
    required super.localName,
    required RefTo<CloudflareZone> zoneId,
    required TfArg<String> name,
    required TfArg<DnsRecordType> type,
    required TfArg<num> ttl,
    DnsRecordContent? content,
    TfArg<bool>? proxied,
    TfArg<String>? comment,
    TfArg<num>? priority,
    TfArg<List<String>>? tags,
    DnsRecordSettings? settings,
    TfArg<bool>? privateRouting,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'name': name,
           'type': type,
           'ttl': ttl,
           ...?content?.argMap,
           'proxied': ?proxied,
           'comment': ?comment,
           'priority': ?priority,
           'tags': ?tags,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
           'private_routing': ?privateRouting,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsRecordSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareDnsRecord>`.
  RefTo<CloudflareDnsRecord> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `comment_modified_on` attribute.
  TfRef<String> get commentModifiedOn =>
      TfRef.attribute<String>(this, 'comment_modified_on');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `meta` attribute.
  TfRef<String> get meta => TfRef.attribute<String>(this, 'meta');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `proxiable` attribute.
  TfRef<bool> get proxiable => TfRef.attribute<bool>(this, 'proxiable');

  /// Reference to `tags_modified_on` attribute.
  TfRef<String> get tagsModifiedOn =>
      TfRef.attribute<String>(this, 'tags_modified_on');
}
