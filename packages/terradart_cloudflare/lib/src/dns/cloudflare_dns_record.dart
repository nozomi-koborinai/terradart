// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_dns_record`.
const Set<String> _cloudflareDnsRecordSensitive = <String>{};

/// Dns Record enum for `type`.
extension type const DnsRecordType._(TfArg<String> _) implements TfArg<String> {
  DnsRecordType.variable(String name) : this._(TfArg.variable(name));
  DnsRecordType.expression(String template)
    : this._(TfArg.expression(template));
  const DnsRecordType.arg(TfArg<String> arg) : this._(arg);

  static const a = DnsRecordType._(TfArgLiteral('A'));
  static const aaaa = DnsRecordType._(TfArgLiteral('AAAA'));
  static const cname = DnsRecordType._(TfArgLiteral('CNAME'));
  static const mx = DnsRecordType._(TfArgLiteral('MX'));
  static const ns = DnsRecordType._(TfArgLiteral('NS'));
  static const openpgpkey = DnsRecordType._(TfArgLiteral('OPENPGPKEY'));
  static const ptr = DnsRecordType._(TfArgLiteral('PTR'));
  static const txt = DnsRecordType._(TfArgLiteral('TXT'));
  static const caa = DnsRecordType._(TfArgLiteral('CAA'));
  static const cert = DnsRecordType._(TfArgLiteral('CERT'));
  static const dnskey = DnsRecordType._(TfArgLiteral('DNSKEY'));
  static const ds = DnsRecordType._(TfArgLiteral('DS'));
  static const https = DnsRecordType._(TfArgLiteral('HTTPS'));
  static const loc = DnsRecordType._(TfArgLiteral('LOC'));
  static const naptr = DnsRecordType._(TfArgLiteral('NAPTR'));
  static const smimea = DnsRecordType._(TfArgLiteral('SMIMEA'));
  static const srv = DnsRecordType._(TfArgLiteral('SRV'));
  static const sshfp = DnsRecordType._(TfArgLiteral('SSHFP'));
  static const svcb = DnsRecordType._(TfArgLiteral('SVCB'));
  static const tlsa = DnsRecordType._(TfArgLiteral('TLSA'));
  static const uri = DnsRecordType._(TfArgLiteral('URI'));

  static const List<DnsRecordType> values = [
    a,
    aaaa,
    cname,
    mx,
    ns,
    openpgpkey,
    ptr,
    txt,
    caa,
    cert,
    dnskey,
    ds,
    https,
    loc,
    naptr,
    smimea,
    srv,
    sshfp,
    svcb,
    tlsa,
    uri,
  ];
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
      DnsRecordContentChoice;

  /// Sets `data`.
  const factory DnsRecordContent.data(DnsRecordData data) =
      DnsRecordContentData;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DnsRecordContent.content] choice: sets `content`.
final class DnsRecordContentChoice extends DnsRecordContent {
  const DnsRecordContentChoice(this.content);

  final TfArg<String> content;

  @internal
  @override
  String get blockKey => 'content';

  @internal
  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [DnsRecordContent.data] choice: sets `data`.
final class DnsRecordContentData extends DnsRecordContent {
  const DnsRecordContentData(this.data);

  final DnsRecordData data;

  @internal
  @override
  String get blockKey => 'data';

  @internal
  @override
  Map<String, Object?> encode() => {'data': data.encode()};

  @internal
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

  final DnsRecordLatDirection? latDirection;

  final TfArg<num>? latMinutes;

  final TfArg<num>? latSeconds;

  final TfArg<num>? longDegrees;

  final DnsRecordLongDirection? longDirection;

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

  @internal
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
extension type const DnsRecordLatDirection._(TfArg<String> _)
    implements TfArg<String> {
  DnsRecordLatDirection.variable(String name) : this._(TfArg.variable(name));
  DnsRecordLatDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DnsRecordLatDirection.arg(TfArg<String> arg) : this._(arg);

  static const n = DnsRecordLatDirection._(TfArgLiteral('N'));
  static const s = DnsRecordLatDirection._(TfArgLiteral('S'));

  static const List<DnsRecordLatDirection> values = [n, s];
}

/// `long_direction` — derived from the provider schema description.
extension type const DnsRecordLongDirection._(TfArg<String> _)
    implements TfArg<String> {
  DnsRecordLongDirection.variable(String name) : this._(TfArg.variable(name));
  DnsRecordLongDirection.expression(String template)
    : this._(TfArg.expression(template));
  const DnsRecordLongDirection.arg(TfArg<String> arg) : this._(arg);

  static const e = DnsRecordLongDirection._(TfArgLiteral('E'));
  static const w = DnsRecordLongDirection._(TfArgLiteral('W'));

  static const List<DnsRecordLongDirection> values = [e, w];
}

/// Typed helper for the `settings` block of
/// `cloudflare_dns_record` (derived from provider schema).
@immutable
final class DnsRecordSettings {
  const DnsRecordSettings({this.flattenCname, this.ipv4Only, this.ipv6Only});

  final TfArg<bool>? flattenCname;

  final TfArg<bool>? ipv4Only;

  final TfArg<bool>? ipv6Only;

  @internal
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
/// Reference the parent zone with `zoneId: zone.ref`.
/// `ttl: 1` means
/// "automatic" in Cloudflare's API; proxied records always use it.
/// Structured records (MX, SRV, CAA, …) pass a typed [DnsRecordData]
/// helper; flattening / IPv4-only / IPv6-only flags live on
/// [DnsRecordSettings].
final class CloudflareDnsRecord extends Resource {
  static const String tfType = 'cloudflare_dns_record';

  CloudflareDnsRecord(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    required TfArg<String> name,
    required DnsRecordType type,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `content` attribute.
  TfRef<String> get content => TfRef.attribute<String>(this, 'content');

  /// Reference to `include_shadow_metadata` attribute.
  TfRef<bool> get includeShadowMetadata =>
      TfRef.attribute<bool>(this, 'include_shadow_metadata');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `private_routing` attribute.
  TfRef<bool> get privateRouting =>
      TfRef.attribute<bool>(this, 'private_routing');

  /// Reference to `proxied` attribute.
  TfRef<bool> get proxied => TfRef.attribute<bool>(this, 'proxied');

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
