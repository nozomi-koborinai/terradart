// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_records`.
const Set<String> _cloudflareDnsRecordsSensitive = <String>{};

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

  Map<String, Object?> encode() => {
    if (absent != null) 'absent': absent!.toTfJson(),
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (present != null) 'present': present!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
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

  Map<String, Object?> encode() => {
    if (absent != null) 'absent': absent!.toTfJson(),
    if (contains != null) 'contains': contains!.toTfJson(),
    if (endswith != null) 'endswith': endswith!.toTfJson(),
    if (exact != null) 'exact': exact!.toTfJson(),
    if (present != null) 'present': present!.toTfJson(),
    if (startswith != null) 'startswith': startswith!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_dns_records`.
///
/// Accepted Permissions
///
/// - `DNS Read` - `DNS Write`
final class DataCloudflareDnsRecords extends Data {
  static const String tfType = 'cloudflare_dns_records';

  DataCloudflareDnsRecords({
    required super.localName,
    TfArg<String>? direction,
    TfArg<bool>? includeShadowMetadata,
    TfArg<String>? match,
    TfArg<num>? maxItems,
    TfArg<String>? order,
    TfArg<bool>? proxied,
    TfArg<String>? search,
    TfArg<String>? shadowedByName,
    TfArg<String>? shadowingName,
    TfArg<String>? tagMatch,
    TfArg<String>? type,
    TfArg<String>? zoneId,
    DataDnsRecordsComment? comment,
    DataDnsRecordsContent? content,
    DataDnsRecordsName? name,
    DataDnsRecordsTag? tag,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (direction != null) 'direction': direction,
           if (includeShadowMetadata != null)
             'include_shadow_metadata': includeShadowMetadata,
           if (match != null) 'match': match,
           if (maxItems != null) 'max_items': maxItems,
           if (order != null) 'order': order,
           if (proxied != null) 'proxied': proxied,
           if (search != null) 'search': search,
           if (shadowedByName != null) 'shadowed_by_name': shadowedByName,
           if (shadowingName != null) 'shadowing_name': shadowingName,
           if (tagMatch != null) 'tag_match': tagMatch,
           if (type != null) 'type': type,
           if (zoneId != null) 'zone_id': zoneId,
           if (comment != null) 'comment': TfArg.literal(comment.encode()),
           if (content != null) 'content': TfArg.literal(content.encode()),
           if (name != null) 'name': TfArg.literal(name.encode()),
           if (tag != null) 'tag': TfArg.literal(tag.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsRecordsSensitive;
}
