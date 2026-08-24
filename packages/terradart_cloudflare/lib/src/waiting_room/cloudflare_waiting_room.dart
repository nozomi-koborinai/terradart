// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_waiting_room`.
const Set<String> _cloudflareWaitingRoomSensitive = <String>{};

/// Typed helper for the `additional_routes` block of
/// `cloudflare_waiting_room` (derived from provider schema).
@immutable
final class WaitingRoomAdditionalRoutes {
  const WaitingRoomAdditionalRoutes({this.host, this.path});

  final TfArg<String>? host;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    if (host != null) 'host': host!.toTfJson(),
    if (path != null) 'path': path!.toTfJson(),
  };
}

/// Typed helper for the `cookie_attributes` block of
/// `cloudflare_waiting_room` (derived from provider schema).
@immutable
final class WaitingRoomCookieAttributes {
  const WaitingRoomCookieAttributes({this.samesite, this.secure});

  final TfArg<String>? samesite;

  final TfArg<String>? secure;

  Map<String, Object?> encode() => {
    if (samesite != null) 'samesite': samesite!.toTfJson(),
    if (secure != null) 'secure': secure!.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_waiting_room`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class CloudflareWaitingRoom extends Resource {
  static const String tfType = 'cloudflare_waiting_room';

  CloudflareWaitingRoom({
    required super.localName,
    TfArg<String>? cookieSuffix,
    TfArg<String>? customPageHtml,
    TfArg<String>? defaultTemplateLanguage,
    TfArg<String>? description,
    TfArg<bool>? disableSessionRenewal,
    TfArg<List<String>>? enabledOriginCommands,
    required TfArg<String> host,
    TfArg<bool>? jsonResponseEnabled,
    required TfArg<String> name,
    required TfArg<num> newUsersPerMinute,
    TfArg<String>? path,
    TfArg<bool>? queueAll,
    TfArg<String>? queueingMethod,
    TfArg<num>? queueingStatusCode,
    TfArg<num>? sessionDuration,
    TfArg<bool>? suspended,
    required TfArg<num> totalActiveUsers,
    TfArg<String>? turnstileAction,
    TfArg<String>? turnstileMode,
    required TfArg<String> zoneId,
    List<WaitingRoomAdditionalRoutes>? additionalRoutes,
    WaitingRoomCookieAttributes? cookieAttributes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (cookieSuffix != null) 'cookie_suffix': cookieSuffix,
           if (customPageHtml != null) 'custom_page_html': customPageHtml,
           if (defaultTemplateLanguage != null)
             'default_template_language': defaultTemplateLanguage,
           if (description != null) 'description': description,
           if (disableSessionRenewal != null)
             'disable_session_renewal': disableSessionRenewal,
           if (enabledOriginCommands != null)
             'enabled_origin_commands': enabledOriginCommands,
           'host': host,
           if (jsonResponseEnabled != null)
             'json_response_enabled': jsonResponseEnabled,
           'name': name,
           'new_users_per_minute': newUsersPerMinute,
           if (path != null) 'path': path,
           if (queueAll != null) 'queue_all': queueAll,
           if (queueingMethod != null) 'queueing_method': queueingMethod,
           if (queueingStatusCode != null)
             'queueing_status_code': queueingStatusCode,
           if (sessionDuration != null) 'session_duration': sessionDuration,
           if (suspended != null) 'suspended': suspended,
           'total_active_users': totalActiveUsers,
           if (turnstileAction != null) 'turnstile_action': turnstileAction,
           if (turnstileMode != null) 'turnstile_mode': turnstileMode,
           'zone_id': zoneId,
           if (additionalRoutes != null)
             'additional_routes': TfArg.literal([
               for (final e in additionalRoutes) e.encode(),
             ]),
           if (cookieAttributes != null)
             'cookie_attributes': TfArg.literal(cookieAttributes.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWaitingRoomSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_on` attribute.
  TfRef<String> get createdOn => TfRef.attribute<String>(this, 'created_on');

  /// Reference to `modified_on` attribute.
  TfRef<String> get modifiedOn => TfRef.attribute<String>(this, 'modified_on');

  /// Reference to `next_event_prequeue_start_time` attribute.
  TfRef<String> get nextEventPrequeueStartTime =>
      TfRef.attribute<String>(this, 'next_event_prequeue_start_time');

  /// Reference to `next_event_start_time` attribute.
  TfRef<String> get nextEventStartTime =>
      TfRef.attribute<String>(this, 'next_event_start_time');
}
