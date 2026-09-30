// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_waiting_room_events`.
const Set<String> _cloudflareWaitingRoomEventsSensitive = <String>{};

/// Factory wrapper for `cloudflare_waiting_room_events`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class DataCloudflareWaitingRoomEvents extends Data {
  static const String tfType = 'cloudflare_waiting_room_events';

  DataCloudflareWaitingRoomEvents({
    required super.localName,
    TfArg<num>? maxItems,
    required TfArg<String> waitingRoomId,
    RefTo<CloudflareZone>? zoneId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'max_items': ?maxItems,
           'waiting_room_id': waitingRoomId,
           'zone_id': ?zoneId?.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomEventsSensitive;

  /// Reference to `max_items` attribute.
  TfRef<num> get maxItemsRef => TfRef.attribute<num>(this, 'max_items');

  /// Reference to `waiting_room_id` attribute.
  TfRef<String> get waitingRoomIdRef =>
      TfRef.attribute<String>(this, 'waiting_room_id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
