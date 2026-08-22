// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_dns_record`.
const Set<String> _cloudflareDnsRecordSensitive = <String>{};

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
/// The optional `data` / `settings` object attributes are not curated
/// slots yet — ask via a feature request if you need them.
final class CloudflareDnsRecord extends Resource {
  static const String tfType = 'cloudflare_dns_record';

  CloudflareDnsRecord({
    required super.localName,
    required TfArg<String> zoneId,
    required TfArg<String> name,
    required TfArg<String> type,
    required TfArg<num> ttl,
    TfArg<String>? content,
    TfArg<bool>? proxied,
    TfArg<String>? comment,
    TfArg<num>? priority,
    TfArg<List<String>>? tags,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'name': name,
           'type': type,
           'ttl': ttl,
           if (content != null) 'content': content,
           if (proxied != null) 'proxied': proxied,
           if (comment != null) 'comment': comment,
           if (priority != null) 'priority': priority,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareDnsRecordSensitive;

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
