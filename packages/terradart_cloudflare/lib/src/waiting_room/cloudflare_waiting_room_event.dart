// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_waiting_room_event`.
const Set<String> _cloudflareWaitingRoomEventSensitive = <String>{};

/// Waiting Room Event Turnstile enum for `turnstile_action`.
enum WaitingRoomEventTurnstileAction implements TerraformEnum {
  log('log'),
  infiniteQueue('infinite_queue');

  const WaitingRoomEventTurnstileAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Waiting Room Event Turnstile enum for `turnstile_mode`.
enum WaitingRoomEventTurnstileMode implements TerraformEnum {
  off('off'),
  invisible('invisible'),
  visibleNonInteractive('visible_non_interactive'),
  visibleManaged('visible_managed');

  const WaitingRoomEventTurnstileMode(this.terraformValue);
  @override
  final String terraformValue;
}

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
    TfArg<WaitingRoomEventTurnstileAction>? turnstileAction,
    TfArg<WaitingRoomEventTurnstileMode>? turnstileMode,
    required TfArg<String> waitingRoomId,
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_page_html': ?customPageHtml,
           'description': ?description,
           'disable_session_renewal': ?disableSessionRenewal,
           'event_end_time': eventEndTime,
           'event_start_time': eventStartTime,
           'name': name,
           'new_users_per_minute': ?newUsersPerMinute,
           'prequeue_start_time': ?prequeueStartTime,
           'queueing_method': ?queueingMethod,
           'session_duration': ?sessionDuration,
           'shuffle_at_event_start': ?shuffleAtEventStart,
           'suspended': ?suspended,
           'total_active_users': ?totalActiveUsers,
           'turnstile_action': ?turnstileAction,
           'turnstile_mode': ?turnstileMode,
           'waiting_room_id': waitingRoomId,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomEventSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWaitingRoomEvent>`.
  RefTo<CloudflareWaitingRoomEvent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');
}
