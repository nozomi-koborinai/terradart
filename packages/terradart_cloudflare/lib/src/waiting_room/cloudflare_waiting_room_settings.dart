// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_waiting_room_settings`.
const Set<String> _cloudflareWaitingRoomSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_waiting_room_settings`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class CloudflareWaitingRoomSettings extends Resource {
  static const String tfType = 'cloudflare_waiting_room_settings';

  CloudflareWaitingRoomSettings({
    required super.localName,
    TfArg<bool>? searchEngineCrawlerBypass,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'search_engine_crawler_bypass': ?searchEngineCrawlerBypass,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomSettingsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWaitingRoomSettings>`.
  RefTo<CloudflareWaitingRoomSettings> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
