// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_waiting_room`.
const Set<String> _cloudflareWaitingRoomSensitive = <String>{};

/// Factory wrapper for `cloudflare_waiting_room`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class DataCloudflareWaitingRoom extends Data {
  static const String tfType = 'cloudflare_waiting_room';

  DataCloudflareWaitingRoom({
    required super.localName,
    required TfArg<String> waitingRoomId,
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {
           'waiting_room_id': waitingRoomId,
           if (zoneId != null) 'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cookie_suffix` attribute.
  TfRef<String> get cookieSuffix =>
      TfRef.attribute<String>(this, 'cookie_suffix');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `custom_page_html` attribute.
  TfRef<String> get customPageHtml =>
      TfRef.attribute<String>(this, 'custom_page_html');

  /// Reference to `default_template_language` attribute.
  TfRef<String> get defaultTemplateLanguage =>
      TfRef.attribute<String>(this, 'default_template_language');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_session_renewal` attribute.
  TfRef<bool> get disableSessionRenewal =>
      TfRef.attribute<bool>(this, 'disable_session_renewal');

  /// Reference to `enabled_origin_commands` attribute.
  TfRef<List<String>> get enabledOriginCommands =>
      TfRef.attribute<List<String>>(this, 'enabled_origin_commands');

  /// Reference to `host` attribute.
  TfRef<String> get host => TfRef.attribute<String>(this, 'host');

  /// Reference to `json_response_enabled` attribute.
  TfRef<bool> get jsonResponseEnabled =>
      TfRef.attribute<bool>(this, 'json_response_enabled');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `new_users_per_minute` attribute.
  TfRef<num> get newUsersPerMinute =>
      TfRef.attribute<num>(this, 'new_users_per_minute');

  /// Reference to `next_event_prequeue_start_time` attribute.
  TfRef<String> get nextEventPrequeueStartTime =>
      TfRef.attribute<String>(this, 'next_event_prequeue_start_time');

  /// Reference to `next_event_start_time` attribute.
  TfRef<String> get nextEventStartTime =>
      TfRef.attribute<String>(this, 'next_event_start_time');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');

  /// Reference to `queue_all` attribute.
  TfRef<bool> get queueAll => TfRef.attribute<bool>(this, 'queue_all');

  /// Reference to `queueing_method` attribute.
  TfRef<String> get queueingMethod =>
      TfRef.attribute<String>(this, 'queueing_method');

  /// Reference to `queueing_status_code` attribute.
  TfRef<num> get queueingStatusCode =>
      TfRef.attribute<num>(this, 'queueing_status_code');

  /// Reference to `session_duration` attribute.
  TfRef<num> get sessionDuration =>
      TfRef.attribute<num>(this, 'session_duration');

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
