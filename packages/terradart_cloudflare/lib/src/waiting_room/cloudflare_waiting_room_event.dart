// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_waiting_room_event`.
const Set<String> _cloudflareWaitingRoomEventSensitive = <String>{};

/// Factory wrapper for `cloudflare_waiting_room_event`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class CloudflareWaitingRoomEvent extends Resource {
  static const String tfType = 'cloudflare_waiting_room_event';

  CloudflareWaitingRoomEvent({
    required super.localName,
    TfArg<String>? customPageHtml,
    TfArg<String>? description,
    TfArg<bool>? disableSessionRenewal,
    required TfArg<String> eventEndTime,
    required TfArg<String> eventStartTime,
    required TfArg<String> name,
    TfArg<num>? newUsersPerMinute,
    TfArg<String>? prequeueStartTime,
    TfArg<String>? queueingMethod,
    TfArg<num>? sessionDuration,
    TfArg<bool>? shuffleAtEventStart,
    TfArg<bool>? suspended,
    TfArg<num>? totalActiveUsers,
    TfArg<String>? turnstileAction,
    TfArg<String>? turnstileMode,
    required TfArg<String> waitingRoomId,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (customPageHtml != null) 'custom_page_html': customPageHtml,
           if (description != null) 'description': description,
           if (disableSessionRenewal != null)
             'disable_session_renewal': disableSessionRenewal,
           'event_end_time': eventEndTime,
           'event_start_time': eventStartTime,
           'name': name,
           if (newUsersPerMinute != null)
             'new_users_per_minute': newUsersPerMinute,
           if (prequeueStartTime != null)
             'prequeue_start_time': prequeueStartTime,
           if (queueingMethod != null) 'queueing_method': queueingMethod,
           if (sessionDuration != null) 'session_duration': sessionDuration,
           if (shuffleAtEventStart != null)
             'shuffle_at_event_start': shuffleAtEventStart,
           if (suspended != null) 'suspended': suspended,
           if (totalActiveUsers != null) 'total_active_users': totalActiveUsers,
           if (turnstileAction != null) 'turnstile_action': turnstileAction,
           if (turnstileMode != null) 'turnstile_mode': turnstileMode,
           'waiting_room_id': waitingRoomId,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomEventSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
