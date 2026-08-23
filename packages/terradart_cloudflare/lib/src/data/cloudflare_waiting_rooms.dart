// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_waiting_rooms`.
const Set<String> _cloudflareWaitingRoomsSensitive = <String>{};

/// Factory wrapper for `cloudflare_waiting_rooms`.
///
/// Accepted Permissions
///
/// - `Account Waiting Rooms Read`
final class DataCloudflareWaitingRooms extends Data {
  static const String tfType = 'cloudflare_waiting_rooms';

  DataCloudflareWaitingRooms({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<num>? maxItems,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountId != null) 'account_id': accountId,
           if (maxItems != null) 'max_items': maxItems,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomsSensitive;
}
