// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_waiting_room_settings`.
const Set<String> _cloudflareWaitingRoomSettingsSensitive = <String>{};

/// Factory wrapper for `cloudflare_waiting_room_settings`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class DataCloudflareWaitingRoomSettings extends Data {
  static const String tfType = 'cloudflare_waiting_room_settings';

  DataCloudflareWaitingRoomSettings({
    required super.localName,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomSettingsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `search_engine_crawler_bypass` attribute.
  TfRef<bool> get searchEngineCrawlerBypass =>
      TfRef.attribute<bool>(this, 'search_engine_crawler_bypass');
}
