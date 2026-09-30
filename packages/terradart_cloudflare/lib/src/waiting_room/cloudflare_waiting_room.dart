// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_waiting_room`.
const Set<String> _cloudflareWaitingRoomSensitive = <String>{};

/// Waiting Room Default Template enum for `default_template_language`.
enum WaitingRoomDefaultTemplateLanguage implements TerraformEnum {
  enUs('en-US'),
  esEs('es-ES'),
  deDe('de-DE'),
  frFr('fr-FR'),
  itIt('it-IT'),
  jaJp('ja-JP'),
  koKr('ko-KR'),
  ptBr('pt-BR'),
  zhCn('zh-CN'),
  zhTw('zh-TW'),
  nlNl('nl-NL'),
  plPl('pl-PL'),
  idId('id-ID'),
  trTr('tr-TR'),
  arEg('ar-EG'),
  ruRu('ru-RU'),
  faIr('fa-IR'),
  bgBg('bg-BG'),
  hrHr('hr-HR'),
  csCz('cs-CZ'),
  daDk('da-DK'),
  fiFi('fi-FI'),
  ltLt('lt-LT'),
  lvLv('lv-LV'),
  msMy('ms-MY'),
  nbNo('nb-NO'),
  roRo('ro-RO'),
  elGr('el-GR'),
  heIl('he-IL'),
  hiIn('hi-IN'),
  huHu('hu-HU'),
  srBa('sr-BA'),
  skSk('sk-SK'),
  slSi('sl-SI'),
  svSe('sv-SE'),
  tlPh('tl-PH'),
  thTh('th-TH'),
  ukUa('uk-UA'),
  viVn('vi-VN');

  const WaitingRoomDefaultTemplateLanguage(this.terraformValue);
  @override
  final String terraformValue;
}

/// Waiting Room Enabled Origin enum for `enabled_origin_commands`.
enum WaitingRoomEnabledOriginCommands implements TerraformEnum {
  revoke('revoke');

  const WaitingRoomEnabledOriginCommands(this.terraformValue);
  @override
  final String terraformValue;
}

/// Waiting Room Queueing enum for `queueing_method`.
enum WaitingRoomQueueingMethod implements TerraformEnum {
  fifo('fifo'),
  random('random'),
  passthrough('passthrough'),
  reject('reject');

  const WaitingRoomQueueingMethod(this.terraformValue);
  @override
  final String terraformValue;
}

/// Waiting Room Turnstile enum for `turnstile_action`.
enum WaitingRoomTurnstileAction implements TerraformEnum {
  log('log'),
  infiniteQueue('infinite_queue');

  const WaitingRoomTurnstileAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Waiting Room Turnstile enum for `turnstile_mode`.
enum WaitingRoomTurnstileMode implements TerraformEnum {
  off('off'),
  invisible('invisible'),
  visibleNonInteractive('visible_non_interactive'),
  visibleManaged('visible_managed');

  const WaitingRoomTurnstileMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `additional_routes` block of
/// `cloudflare_waiting_room` (derived from provider schema).
@immutable
final class WaitingRoomAdditionalRoutes {
  const WaitingRoomAdditionalRoutes({this.host, this.path});

  final TfArg<String>? host;

  final TfArg<String>? path;

  Map<String, Object?> encode() => {
    'host': ?host?.toTfJson(),
    'path': ?path?.toTfJson(),
  };
}

/// Typed helper for the `cookie_attributes` block of
/// `cloudflare_waiting_room` (derived from provider schema).
@immutable
final class WaitingRoomCookieAttributes {
  const WaitingRoomCookieAttributes({this.samesite, this.secure});

  final TfArg<WaitingRoomCookieAttributesSamesite>? samesite;

  final TfArg<WaitingRoomCookieAttributesSecure>? secure;

  Map<String, Object?> encode() => {
    'samesite': ?samesite?.toTfJson(),
    'secure': ?secure?.toTfJson(),
  };
}

/// `samesite` — derived from the provider schema description.
enum WaitingRoomCookieAttributesSamesite implements TerraformEnum {
  auto('auto'),
  lax('lax'),
  none('none'),
  strict('strict');

  const WaitingRoomCookieAttributesSamesite(this.terraformValue);
  @override
  final String terraformValue;
}

/// `secure` — derived from the provider schema description.
enum WaitingRoomCookieAttributesSecure implements TerraformEnum {
  auto('auto'),
  always('always'),
  never('never');

  const WaitingRoomCookieAttributesSecure(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<WaitingRoomDefaultTemplateLanguage>? defaultTemplateLanguage,
    TfArg<String>? description,
    TfArg<bool>? disableSessionRenewal,
    List<TfArg<WaitingRoomEnabledOriginCommands>>? enabledOriginCommands,
    required TfArg<String> host,
    TfArg<bool>? jsonResponseEnabled,
    required TfArg<String> name,
    required TfArg<num> newUsersPerMinute,
    TfArg<String>? path,
    TfArg<bool>? queueAll,
    TfArg<WaitingRoomQueueingMethod>? queueingMethod,
    TfArg<num>? queueingStatusCode,
    TfArg<num>? sessionDuration,
    TfArg<bool>? suspended,
    required TfArg<num> totalActiveUsers,
    TfArg<WaitingRoomTurnstileAction>? turnstileAction,
    TfArg<WaitingRoomTurnstileMode>? turnstileMode,
    required RefTo<CloudflareZone> zoneId,
    List<WaitingRoomAdditionalRoutes>? additionalRoutes,
    WaitingRoomCookieAttributes? cookieAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cookie_suffix': ?cookieSuffix,
           'custom_page_html': ?customPageHtml,
           'default_template_language': ?defaultTemplateLanguage,
           'description': ?description,
           'disable_session_renewal': ?disableSessionRenewal,
           if (enabledOriginCommands != null)
             'enabled_origin_commands': TfArg.literal([
               for (final e in enabledOriginCommands) e.toTfJson(),
             ]),
           'host': host,
           'json_response_enabled': ?jsonResponseEnabled,
           'name': name,
           'new_users_per_minute': newUsersPerMinute,
           'path': ?path,
           'queue_all': ?queueAll,
           'queueing_method': ?queueingMethod,
           'queueing_status_code': ?queueingStatusCode,
           'session_duration': ?sessionDuration,
           'suspended': ?suspended,
           'total_active_users': totalActiveUsers,
           'turnstile_action': ?turnstileAction,
           'turnstile_mode': ?turnstileMode,
           'zone_id': zoneId.encodeAs('id'),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWaitingRoom>`.
  RefTo<CloudflareWaitingRoom> get ref => RefTo.of(this);

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

  /// Reference to `cookie_suffix` attribute.
  TfRef<String> get cookieSuffixRef =>
      TfRef.attribute<String>(this, 'cookie_suffix');

  /// Reference to `custom_page_html` attribute.
  TfRef<String> get customPageHtmlRef =>
      TfRef.attribute<String>(this, 'custom_page_html');

  /// Reference to `default_template_language` attribute.
  TfRef<String> get defaultTemplateLanguageRef =>
      TfRef.attribute<String>(this, 'default_template_language');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `disable_session_renewal` attribute.
  TfRef<bool> get disableSessionRenewalRef =>
      TfRef.attribute<bool>(this, 'disable_session_renewal');

  /// Reference to `enabled_origin_commands` attribute.
  TfRef<List<String>> get enabledOriginCommandsRef =>
      TfRef.attribute<List<String>>(this, 'enabled_origin_commands');

  /// Reference to `host` attribute.
  TfRef<String> get hostRef => TfRef.attribute<String>(this, 'host');

  /// Reference to `json_response_enabled` attribute.
  TfRef<bool> get jsonResponseEnabledRef =>
      TfRef.attribute<bool>(this, 'json_response_enabled');

  /// Reference to `new_users_per_minute` attribute.
  TfRef<num> get newUsersPerMinuteRef =>
      TfRef.attribute<num>(this, 'new_users_per_minute');

  /// Reference to `path` attribute.
  TfRef<String> get pathRef => TfRef.attribute<String>(this, 'path');

  /// Reference to `queue_all` attribute.
  TfRef<bool> get queueAllRef => TfRef.attribute<bool>(this, 'queue_all');

  /// Reference to `queueing_method` attribute.
  TfRef<String> get queueingMethodRef =>
      TfRef.attribute<String>(this, 'queueing_method');

  /// Reference to `queueing_status_code` attribute.
  TfRef<num> get queueingStatusCodeRef =>
      TfRef.attribute<num>(this, 'queueing_status_code');

  /// Reference to `session_duration` attribute.
  TfRef<num> get sessionDurationRef =>
      TfRef.attribute<num>(this, 'session_duration');

  /// Reference to `suspended` attribute.
  TfRef<bool> get suspendedRef => TfRef.attribute<bool>(this, 'suspended');

  /// Reference to `total_active_users` attribute.
  TfRef<num> get totalActiveUsersRef =>
      TfRef.attribute<num>(this, 'total_active_users');

  /// Reference to `turnstile_action` attribute.
  TfRef<String> get turnstileActionRef =>
      TfRef.attribute<String>(this, 'turnstile_action');

  /// Reference to `turnstile_mode` attribute.
  TfRef<String> get turnstileModeRef =>
      TfRef.attribute<String>(this, 'turnstile_mode');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
