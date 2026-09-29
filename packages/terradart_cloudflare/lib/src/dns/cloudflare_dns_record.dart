// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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
sealed class DnsRecordContentOrData {
  const DnsRecordContentOrData();

  /// Sets `content`.
  const factory DnsRecordContentOrData.content(TfArg<String> content) =
      DnsRecordContentOrDataContent;

  /// Sets `data`.
  const factory DnsRecordContentOrData.data(DnsRecordData data) =
      DnsRecordContentOrDataData;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DnsRecordContentOrData.content] choice: sets `content`.
final class DnsRecordContentOrDataContent extends DnsRecordContentOrData {
  const DnsRecordContentOrDataContent(this.content);

  final TfArg<String> content;

  @override
  String get blockKey => 'content';

  @override
  Map<String, Object?> encode() => {'content': content.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'content': content};
}

/// The [DnsRecordContentOrData.data] choice: sets `data`.
final class DnsRecordContentOrDataData extends DnsRecordContentOrData {
  const DnsRecordContentOrDataData(this.data);

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
    if (algorithm != null) 'algorithm': algorithm!.toTfJson(),
    if (altitude != null) 'altitude': altitude!.toTfJson(),
    if (certificate != null) 'certificate': certificate!.toTfJson(),
    if (digest != null) 'digest': digest!.toTfJson(),
    if (digestType != null) 'digest_type': digestType!.toTfJson(),
    if (fingerprint != null) 'fingerprint': fingerprint!.toTfJson(),
    if (flags != null) 'flags': flags!.toTfJson(),
    if (keyTag != null) 'key_tag': keyTag!.toTfJson(),
    if (latDegrees != null) 'lat_degrees': latDegrees!.toTfJson(),
    if (latDirection != null) 'lat_direction': latDirection!.toTfJson(),
    if (latMinutes != null) 'lat_minutes': latMinutes!.toTfJson(),
    if (latSeconds != null) 'lat_seconds': latSeconds!.toTfJson(),
    if (longDegrees != null) 'long_degrees': longDegrees!.toTfJson(),
    if (longDirection != null) 'long_direction': longDirection!.toTfJson(),
    if (longMinutes != null) 'long_minutes': longMinutes!.toTfJson(),
    if (longSeconds != null) 'long_seconds': longSeconds!.toTfJson(),
    if (matchingType != null) 'matching_type': matchingType!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (port != null) 'port': port!.toTfJson(),
    if (precisionHorz != null) 'precision_horz': precisionHorz!.toTfJson(),
    if (precisionVert != null) 'precision_vert': precisionVert!.toTfJson(),
    if (preference != null) 'preference': preference!.toTfJson(),
    if (priority != null) 'priority': priority!.toTfJson(),
    if (protocol != null) 'protocol': protocol!.toTfJson(),
    if (publicKey != null) 'public_key': publicKey!.toTfJson(),
    if (regex != null) 'regex': regex!.toTfJson(),
    if (replacement != null) 'replacement': replacement!.toTfJson(),
    if (selector != null) 'selector': selector!.toTfJson(),
    if (service != null) 'service': service!.toTfJson(),
    if (size != null) 'size': size!.toTfJson(),
    if (tag != null) 'tag': tag!.toTfJson(),
    if (target != null) 'target': target!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (usage != null) 'usage': usage!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
    if (weight != null) 'weight': weight!.toTfJson(),
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
    if (flattenCname != null) 'flatten_cname': flattenCname!.toTfJson(),
    if (ipv4Only != null) 'ipv4_only': ipv4Only!.toTfJson(),
    if (ipv6Only != null) 'ipv6_only': ipv6Only!.toTfJson(),
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
    required TfArg<String> zoneId,
    required TfArg<String> name,
    required TfArg<DnsRecordType> type,
    required TfArg<num> ttl,
    DnsRecordContentOrData? contentOrData,
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
           'zone_id': zoneId,
           'name': name,
           'type': type,
           'ttl': ttl,
           ...?contentOrData?.argMap,
           if (proxied != null) 'proxied': proxied,
           if (comment != null) 'comment': comment,
           if (priority != null) 'priority': priority,
           if (tags != null) 'tags': tags,
           if (settings != null) 'settings': TfArg.literal(settings.encode()),
           if (privateRouting != null) 'private_routing': privateRouting,
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
