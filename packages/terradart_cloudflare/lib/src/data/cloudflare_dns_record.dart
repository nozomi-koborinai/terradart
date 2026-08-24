// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? direction;

  final TfArg<String>? match;

  final TfArg<String>? order;

  final TfArg<bool>? proxied;

  final TfArg<String>? search;

  final TfArg<String>? shadowedByName;

  final TfArg<String>? shadowingName;

  final TfArg<String>? tagMatch;

  final TfArg<String>? type;

  final DataDnsRecordFilterComment? comment;

  final DataDnsRecordFilterContent? content;

  final DataDnsRecordFilterName? name;

  final DataDnsRecordFilterTag? tag;

  Map<String, Object?> encode() => {
    if (direction != null) 'direction': direction!.toTfJson(),
    if (match != null) 'match': match!.toTfJson(),
    if (order != null) 'order': order!.toTfJson(),
    if (proxied != null) 'proxied': proxied!.toTfJson(),
    if (search != null) 'search': search!.toTfJson(),
    if (shadowedByName != null) 'shadowed_by_name': shadowedByName!.toTfJson(),
    if (shadowingName != null) 'shadowing_name': shadowingName!.toTfJson(),
    if (tagMatch != null) 'tag_match': tagMatch!.toTfJson(),
    if (type != null) 'type': type!.toTfJson(),
    if (comment != null) 'comment': comment!.encode(),
    if (content != null) 'content': content!.encode(),
    if (name != null) 'name': name!.encode(),
    if (tag != null) 'tag': tag!.encode(),
  };
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
    if (absent != null) 'absent': absent!.toTfJson(),
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (present != null) 'present': present!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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
    if (absent != null) 'absent': absent!.toTfJson(),
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (present != null) 'present': present!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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
    TfArg<String>? zoneId,
    DataDnsRecordFilter? filter,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dnsRecordId != null) 'dns_record_id': dnsRecordId,
           if (includeShadowMetadata != null)
             'include_shadow_metadata': includeShadowMetadata,
           if (zoneId != null) 'zone_id': zoneId,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsRecordSensitive;

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
}
