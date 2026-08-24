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
final class CloudflareBotManagement extends Resource {
  static const String tfType = 'cloudflare_bot_management';

  CloudflareBotManagement({
    required super.localName,
    TfArg<String>? aiBotsProtection,
    TfArg<bool>? autoUpdateModel,
    TfArg<bool>? bmCookieEnabled,
    TfArg<String>? cfRobotsVariant,
    TfArg<String>? contentBotsProtection,
    TfArg<String>? crawlerProtection,
    TfArg<bool>? enableJs,
    TfArg<bool>? fightMode,
    TfArg<bool>? isRobotsTxtManaged,
    TfArg<bool>? optimizeWordpress,
    TfArg<String>? sbfmDefinitelyAutomated,
    TfArg<String>? sbfmLikelyAutomated,
    TfArg<bool>? sbfmStaticResourceProtection,
    TfArg<String>? sbfmVerifiedBots,
    TfArg<bool>? suppressSessionScore,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection,
           if (autoUpdateModel != null) 'auto_update_model': autoUpdateModel,
           if (bmCookieEnabled != null) 'bm_cookie_enabled': bmCookieEnabled,
           if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant,
           if (contentBotsProtection != null)
             'content_bots_protection': contentBotsProtection,
           if (crawlerProtection != null)
             'crawler_protection': crawlerProtection,
           if (enableJs != null) 'enable_js': enableJs,
           if (fightMode != null) 'fight_mode': fightMode,
           if (isRobotsTxtManaged != null)
             'is_robots_txt_managed': isRobotsTxtManaged,
           if (optimizeWordpress != null)
             'optimize_wordpress': optimizeWordpress,
           if (sbfmDefinitelyAutomated != null)
             'sbfm_definitely_automated': sbfmDefinitelyAutomated,
           if (sbfmLikelyAutomated != null)
             'sbfm_likely_automated': sbfmLikelyAutomated,
           if (sbfmStaticResourceProtection != null)
             'sbfm_static_resource_protection': sbfmStaticResourceProtection,
           if (sbfmVerifiedBots != null) 'sbfm_verified_bots': sbfmVerifiedBots,
           if (suppressSessionScore != null)
             'suppress_session_score': suppressSessionScore,
           'zone_id': zoneId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareBotManagementSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `using_latest_model` attribute.
  TfRef<bool> get usingLatestModel =>
      TfRef.attribute<bool>(this, 'using_latest_model');
}
