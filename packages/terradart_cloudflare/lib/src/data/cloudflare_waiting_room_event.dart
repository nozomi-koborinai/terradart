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
final class DataCloudflareWaitingRoomEvent extends Data {
  static const String tfType = 'cloudflare_waiting_room_event';

  DataCloudflareWaitingRoomEvent({
    required super.localName,
    required TfArg<String> eventId,
    required TfArg<String> waitingRoomId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'event_id': eventId,
           'waiting_room_id': waitingRoomId,
           if (zoneId != null) 'zone_id': zoneId,
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

  /// Reference to `custom_page_html` attribute.
  TfRef<String> get customPageHtml =>
      TfRef.attribute<String>(this, 'custom_page_html');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_session_renewal` attribute.
  TfRef<bool> get disableSessionRenewal =>
      TfRef.attribute<bool>(this, 'disable_session_renewal');

  /// Reference to `event_end_time` attribute.
  TfRef<String> get eventEndTime =>
      TfRef.attribute<String>(this, 'event_end_time');

  /// Reference to `event_start_time` attribute.
  TfRef<String> get eventStartTime =>
      TfRef.attribute<String>(this, 'event_start_time');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `new_users_per_minute` attribute.
  TfRef<num> get newUsersPerMinute =>
      TfRef.attribute<num>(this, 'new_users_per_minute');

  /// Reference to `prequeue_start_time` attribute.
  TfRef<String> get prequeueStartTime =>
      TfRef.attribute<String>(this, 'prequeue_start_time');

  /// Reference to `queueing_method` attribute.
  TfRef<String> get queueingMethod =>
      TfRef.attribute<String>(this, 'queueing_method');

  /// Reference to `session_duration` attribute.
  TfRef<num> get sessionDuration =>
      TfRef.attribute<num>(this, 'session_duration');

  /// Reference to `shuffle_at_event_start` attribute.
  TfRef<bool> get shuffleAtEventStart =>
      TfRef.attribute<bool>(this, 'shuffle_at_event_start');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspended => TfRef.attribute<bool>(this, 'suspended');

  /// Reference to `total_active_users` attribute.
  TfRef<num> get totalActiveUsers =>
      TfRef.attribute<num>(this, 'total_active_users');

  /// Reference to `turnstile_action` attribute.
  TfRef<String> get turnstileAction =>
      TfRef.attribute<String>(this, 'turnstile_action');

  /// Reference to `turnstile_mode` attribute.
  TfRef<String> get turnstileMode =>
      TfRef.attribute<String>(this, 'turnstile_mode');
}
