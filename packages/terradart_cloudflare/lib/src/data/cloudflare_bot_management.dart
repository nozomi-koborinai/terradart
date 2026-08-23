// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_bot_management`.
const Set<String> _cloudflareBotManagementSensitive = <String>{};

/// Factory wrapper for `cloudflare_bot_management`.
///
/// Accepted Permissions
///
/// - `Bot Management Read` - `Bot Management Write`
final class DataCloudflareBotManagement extends Data {
  static const String tfType = 'cloudflare_bot_management';

  DataCloudflareBotManagement({required super.localName, TfArg<String>? zoneId})
    : super(
        terraformType: tfType,
        argMap: {if (zoneId != null) 'zone_id': zoneId},
      );

  @override
  Set<String> get sensitiveFields => _cloudflareBotManagementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ai_bots_protection` attribute.
  TfRef<String> get aiBotsProtection =>
      TfRef.attribute<String>(this, 'ai_bots_protection');

  /// Reference to `auto_update_model` attribute.
  TfRef<bool> get autoUpdateModel =>
      TfRef.attribute<bool>(this, 'auto_update_model');

  /// Reference to `bm_cookie_enabled` attribute.
  TfRef<bool> get bmCookieEnabled =>
      TfRef.attribute<bool>(this, 'bm_cookie_enabled');

  /// Reference to `cf_robots_variant` attribute.
  TfRef<String> get cfRobotsVariant =>
      TfRef.attribute<String>(this, 'cf_robots_variant');

  /// Reference to `content_bots_protection` attribute.
  TfRef<String> get contentBotsProtection =>
      TfRef.attribute<String>(this, 'content_bots_protection');

  /// Reference to `crawler_protection` attribute.
  TfRef<String> get crawlerProtection =>
      TfRef.attribute<String>(this, 'crawler_protection');

  /// Reference to `enable_js` attribute.
  TfRef<bool> get enableJs => TfRef.attribute<bool>(this, 'enable_js');

  /// Reference to `fight_mode` attribute.
  TfRef<bool> get fightMode => TfRef.attribute<bool>(this, 'fight_mode');

  /// Reference to `is_robots_txt_managed` attribute.
  TfRef<bool> get isRobotsTxtManaged =>
      TfRef.attribute<bool>(this, 'is_robots_txt_managed');

  /// Reference to `optimize_wordpress` attribute.
  TfRef<bool> get optimizeWordpress =>
      TfRef.attribute<bool>(this, 'optimize_wordpress');

  /// Reference to `sbfm_definitely_automated` attribute.
  TfRef<String> get sbfmDefinitelyAutomated =>
      TfRef.attribute<String>(this, 'sbfm_definitely_automated');

  /// Reference to `sbfm_likely_automated` attribute.
  TfRef<String> get sbfmLikelyAutomated =>
      TfRef.attribute<String>(this, 'sbfm_likely_automated');

  /// Reference to `sbfm_static_resource_protection` attribute.
  TfRef<bool> get sbfmStaticResourceProtection =>
      TfRef.attribute<bool>(this, 'sbfm_static_resource_protection');

  /// Reference to `sbfm_verified_bots` attribute.
  TfRef<String> get sbfmVerifiedBots =>
      TfRef.attribute<String>(this, 'sbfm_verified_bots');

  /// Reference to `suppress_session_score` attribute.
  TfRef<bool> get suppressSessionScore =>
      TfRef.attribute<bool>(this, 'suppress_session_score');

  /// Reference to `using_latest_model` attribute.
  TfRef<bool> get usingLatestModel =>
      TfRef.attribute<bool>(this, 'using_latest_model');
}
