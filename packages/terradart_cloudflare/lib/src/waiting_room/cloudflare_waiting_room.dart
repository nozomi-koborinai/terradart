// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_waiting_room`.
const Set<String> _cloudflareWaitingRoomSensitive = <String>{};

/// Waiting Room Default Template enum for `default_template_language`.
extension type const WaitingRoomDefaultTemplateLanguage._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomDefaultTemplateLanguage.variable(String name)
    : this._(TfArg.variable(name));
  WaitingRoomDefaultTemplateLanguage.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomDefaultTemplateLanguage.arg(TfArg<String> arg) : this._(arg);

  static const enUs = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('en-US'),
  );
  static const esEs = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('es-ES'),
  );
  static const deDe = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('de-DE'),
  );
  static const frFr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('fr-FR'),
  );
  static const itIt = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('it-IT'),
  );
  static const jaJp = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('ja-JP'),
  );
  static const koKr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('ko-KR'),
  );
  static const ptBr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('pt-BR'),
  );
  static const zhCn = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('zh-CN'),
  );
  static const zhTw = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('zh-TW'),
  );
  static const nlNl = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('nl-NL'),
  );
  static const plPl = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('pl-PL'),
  );
  static const idId = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('id-ID'),
  );
  static const trTr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('tr-TR'),
  );
  static const arEg = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('ar-EG'),
  );
  static const ruRu = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('ru-RU'),
  );
  static const faIr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('fa-IR'),
  );
  static const bgBg = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('bg-BG'),
  );
  static const hrHr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('hr-HR'),
  );
  static const csCz = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('cs-CZ'),
  );
  static const daDk = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('da-DK'),
  );
  static const fiFi = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('fi-FI'),
  );
  static const ltLt = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('lt-LT'),
  );
  static const lvLv = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('lv-LV'),
  );
  static const msMy = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('ms-MY'),
  );
  static const nbNo = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('nb-NO'),
  );
  static const roRo = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('ro-RO'),
  );
  static const elGr = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('el-GR'),
  );
  static const heIl = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('he-IL'),
  );
  static const hiIn = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('hi-IN'),
  );
  static const huHu = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('hu-HU'),
  );
  static const srBa = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('sr-BA'),
  );
  static const skSk = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('sk-SK'),
  );
  static const slSi = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('sl-SI'),
  );
  static const svSe = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('sv-SE'),
  );
  static const tlPh = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('tl-PH'),
  );
  static const thTh = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('th-TH'),
  );
  static const ukUa = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('uk-UA'),
  );
  static const viVn = WaitingRoomDefaultTemplateLanguage._(
    TfArgLiteral('vi-VN'),
  );

  static const List<WaitingRoomDefaultTemplateLanguage> values = [
    enUs,
    esEs,
    deDe,
    frFr,
    itIt,
    jaJp,
    koKr,
    ptBr,
    zhCn,
    zhTw,
    nlNl,
    plPl,
    idId,
    trTr,
    arEg,
    ruRu,
    faIr,
    bgBg,
    hrHr,
    csCz,
    daDk,
    fiFi,
    ltLt,
    lvLv,
    msMy,
    nbNo,
    roRo,
    elGr,
    heIl,
    hiIn,
    huHu,
    srBa,
    skSk,
    slSi,
    svSe,
    tlPh,
    thTh,
    ukUa,
    viVn,
  ];
}

/// Waiting Room Enabled Origin enum for `enabled_origin_commands`.
extension type const WaitingRoomEnabledOriginCommands._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomEnabledOriginCommands.variable(String name)
    : this._(TfArg.variable(name));
  WaitingRoomEnabledOriginCommands.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomEnabledOriginCommands.arg(TfArg<String> arg) : this._(arg);

  static const revoke = WaitingRoomEnabledOriginCommands._(
    TfArgLiteral('revoke'),
  );

  static const List<WaitingRoomEnabledOriginCommands> values = [revoke];
}

/// Waiting Room Queueing enum for `queueing_method`.
extension type const WaitingRoomQueueingMethod._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomQueueingMethod.variable(String name)
    : this._(TfArg.variable(name));
  WaitingRoomQueueingMethod.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomQueueingMethod.arg(TfArg<String> arg) : this._(arg);

  static const fifo = WaitingRoomQueueingMethod._(TfArgLiteral('fifo'));
  static const random = WaitingRoomQueueingMethod._(TfArgLiteral('random'));
  static const passthrough = WaitingRoomQueueingMethod._(
    TfArgLiteral('passthrough'),
  );
  static const reject = WaitingRoomQueueingMethod._(TfArgLiteral('reject'));

  static const List<WaitingRoomQueueingMethod> values = [
    fifo,
    random,
    passthrough,
    reject,
  ];
}

/// Waiting Room Turnstile enum for `turnstile_action`.
extension type const WaitingRoomTurnstileAction._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomTurnstileAction.variable(String name)
    : this._(TfArg.variable(name));
  WaitingRoomTurnstileAction.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomTurnstileAction.arg(TfArg<String> arg) : this._(arg);

  static const log = WaitingRoomTurnstileAction._(TfArgLiteral('log'));
  static const infiniteQueue = WaitingRoomTurnstileAction._(
    TfArgLiteral('infinite_queue'),
  );

  static const List<WaitingRoomTurnstileAction> values = [log, infiniteQueue];
}

/// Waiting Room Turnstile enum for `turnstile_mode`.
extension type const WaitingRoomTurnstileMode._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomTurnstileMode.variable(String name) : this._(TfArg.variable(name));
  WaitingRoomTurnstileMode.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomTurnstileMode.arg(TfArg<String> arg) : this._(arg);

  static const off = WaitingRoomTurnstileMode._(TfArgLiteral('off'));
  static const invisible = WaitingRoomTurnstileMode._(
    TfArgLiteral('invisible'),
  );
  static const visibleNonInteractive = WaitingRoomTurnstileMode._(
    TfArgLiteral('visible_non_interactive'),
  );
  static const visibleManaged = WaitingRoomTurnstileMode._(
    TfArgLiteral('visible_managed'),
  );

  static const List<WaitingRoomTurnstileMode> values = [
    off,
    invisible,
    visibleNonInteractive,
    visibleManaged,
  ];
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

  final WaitingRoomSamesite? samesite;

  final WaitingRoomSecure? secure;

  Map<String, Object?> encode() => {
    'samesite': ?samesite?.toTfJson(),
    'secure': ?secure?.toTfJson(),
  };
}

/// `samesite` — derived from the provider schema description.
extension type const WaitingRoomSamesite._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomSamesite.variable(String name) : this._(TfArg.variable(name));
  WaitingRoomSamesite.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomSamesite.arg(TfArg<String> arg) : this._(arg);

  static const auto = WaitingRoomSamesite._(TfArgLiteral('auto'));
  static const lax = WaitingRoomSamesite._(TfArgLiteral('lax'));
  static const none = WaitingRoomSamesite._(TfArgLiteral('none'));
  static const strict = WaitingRoomSamesite._(TfArgLiteral('strict'));

  static const List<WaitingRoomSamesite> values = [auto, lax, none, strict];
}

/// `secure` — derived from the provider schema description.
extension type const WaitingRoomSecure._(TfArg<String> _)
    implements TfArg<String> {
  WaitingRoomSecure.variable(String name) : this._(TfArg.variable(name));
  WaitingRoomSecure.expression(String template)
    : this._(TfArg.expression(template));
  const WaitingRoomSecure.arg(TfArg<String> arg) : this._(arg);

  static const auto = WaitingRoomSecure._(TfArgLiteral('auto'));
  static const always = WaitingRoomSecure._(TfArgLiteral('always'));
  static const never = WaitingRoomSecure._(TfArgLiteral('never'));

  static const List<WaitingRoomSecure> values = [auto, always, never];
}

/// Factory wrapper for `cloudflare_waiting_room`.
///
/// Accepted Permissions
///
/// - `Waiting Rooms Read` - `Waiting Rooms Write`
final class CloudflareWaitingRoom extends Resource {
  static const String tfType = 'cloudflare_waiting_room';

  CloudflareWaitingRoom(
    super.localName, {
    TfArg<String>? cookieSuffix,
    TfArg<String>? customPageHtml,
    WaitingRoomDefaultTemplateLanguage? defaultTemplateLanguage,
    TfArg<String>? description,
    TfArg<bool>? disableSessionRenewal,
    List<WaitingRoomEnabledOriginCommands>? enabledOriginCommands,
    required TfArg<String> host,
    TfArg<bool>? jsonResponseEnabled,
    required TfArg<String> name,
    required TfArg<num> newUsersPerMinute,
    TfArg<String>? path,
    TfArg<bool>? queueAll,
    WaitingRoomQueueingMethod? queueingMethod,
    TfArg<num>? queueingStatusCode,
    TfArg<num>? sessionDuration,
    TfArg<bool>? suspended,
    required TfArg<num> totalActiveUsers,
    WaitingRoomTurnstileAction? turnstileAction,
    WaitingRoomTurnstileMode? turnstileMode,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
  TfRef<String> get cookieSuffix =>
      TfRef.attribute<String>(this, 'cookie_suffix');

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

  /// Reference to `new_users_per_minute` attribute.
  TfRef<num> get newUsersPerMinute =>
      TfRef.attribute<num>(this, 'new_users_per_minute');

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

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
