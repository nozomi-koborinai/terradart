// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_ai_security_custom_topics`.
const Set<String> _cloudflareAiSecurityCustomTopicsSensitive = <String>{};

/// Typed helper for the `topics` block of
/// `cloudflare_ai_security_custom_topics` (derived from provider schema).
@immutable
final class AiSecurityCustomTopics {
  const AiSecurityCustomTopics({required this.label, required this.topic});

  final TfArg<String> label;

  final TfArg<String> topic;

  @internal
  Map<String, Object?> encode() => {
    'label': label.toTfJson(),
    'topic': topic.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_ai_security_custom_topics`.
final class CloudflareAiSecurityCustomTopics extends Resource {
  static const String tfType = 'cloudflare_ai_security_custom_topics';

  CloudflareAiSecurityCustomTopics(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    List<AiSecurityCustomTopics>? topics,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           if (topics != null)
             'topics': TfArg.literal([for (final e in topics) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareAiSecurityCustomTopicsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareAiSecurityCustomTopics>`.
  RefTo<CloudflareAiSecurityCustomTopics> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
