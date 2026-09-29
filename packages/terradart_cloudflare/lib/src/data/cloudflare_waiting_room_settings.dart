// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../waiting_room/cloudflare_waiting_room_settings.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'zone_id': ?zoneId?.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomSettingsSensitive;

  /// A reference to the `cloudflare_waiting_room_settings` this data source reads, for
  /// arguments typed `RefTo<CloudflareWaitingRoomSettings>`.
  RefTo<CloudflareWaitingRoomSettings> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `search_engine_crawler_bypass` attribute.
  TfRef<bool> get searchEngineCrawlerBypass =>
      TfRef.attribute<bool>(this, 'search_engine_crawler_bypass');
}
