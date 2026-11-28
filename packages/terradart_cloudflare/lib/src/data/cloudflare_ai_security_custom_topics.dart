// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../ai/cloudflare_ai_security_custom_topics.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_ai_security_custom_topics`.
const Set<String> _cloudflareAiSecurityCustomTopicsSensitive = <String>{};

/// Factory wrapper for `cloudflare_ai_security_custom_topics`.
final class DataCloudflareAiSecurityCustomTopics extends Data {
  static const String tfType = 'cloudflare_ai_security_custom_topics';

  DataCloudflareAiSecurityCustomTopics(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId.encodeAs('id')});

  @override
  Set<String> get sensitiveFields => _cloudflareAiSecurityCustomTopicsSensitive;

  /// A reference to the `cloudflare_ai_security_custom_topics` this data source reads, for
  /// arguments typed `RefTo<CloudflareAiSecurityCustomTopics>`.
  RefTo<CloudflareAiSecurityCustomTopics> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
