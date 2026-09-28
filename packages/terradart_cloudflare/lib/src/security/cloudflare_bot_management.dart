// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_bot_management`.
const Set<String> _cloudflareBotManagementSensitive = <String>{};

/// Bot Management Ai Bots enum for `ai_bots_protection`.
enum BotManagementAiBotsProtection implements TerraformEnum {
  block('block'),
  disabled('disabled'),
  onlyOnAdPages('only_on_ad_pages');

  const BotManagementAiBotsProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Ai enum for `ai_training`.
enum BotManagementAiTraining implements TerraformEnum {
  disabled('disabled'),
  disallow('disallow'),
  block('block'),
  onlyOnAdPages('only_on_ad_pages');

  const BotManagementAiTraining(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Ai enum for `ai_user`.
enum BotManagementAiUser implements TerraformEnum {
  disabled('disabled'),
  block('block'),
  onlyOnAdPages('only_on_ad_pages');

  const BotManagementAiUser(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management enum for `aisearch`.
enum BotManagementAisearch implements TerraformEnum {
  disabled('disabled'),
  block('block'),
  onlyOnAdPages('only_on_ad_pages');

  const BotManagementAisearch(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Cf Robots enum for `cf_robots_variant`.
enum BotManagementCfRobotsVariant implements TerraformEnum {
  off('off'),
  policyOnly('policy_only');

  const BotManagementCfRobotsVariant(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Content Bots enum for `content_bots_protection`.
enum BotManagementContentBotsProtection implements TerraformEnum {
  block('block'),
  disabled('disabled');

  const BotManagementContentBotsProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Crawler enum for `crawler_protection`.
enum BotManagementCrawlerProtection implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const BotManagementCrawlerProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Sbfm Definitely enum for `sbfm_definitely_automated`.
enum BotManagementSbfmDefinitelyAutomated implements TerraformEnum {
  allow('allow'),
  block('block'),
  managedChallenge('managed_challenge');

  const BotManagementSbfmDefinitelyAutomated(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Sbfm Likely enum for `sbfm_likely_automated`.
enum BotManagementSbfmLikelyAutomated implements TerraformEnum {
  allow('allow'),
  block('block'),
  managedChallenge('managed_challenge');

  const BotManagementSbfmLikelyAutomated(this.terraformValue);
  @override
  final String terraformValue;
}

/// Bot Management Sbfm Verified enum for `sbfm_verified_bots`.
enum BotManagementSbfmVerifiedBots implements TerraformEnum {
  allow('allow'),
  block('block');

  const BotManagementSbfmVerifiedBots(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_bot_management`.
///
/// Accepted Permissions
///
/// - `Bot Management Read` - `Bot Management Write`
final class CloudflareBotManagement extends Resource {
  static const String tfType = 'cloudflare_bot_management';

  CloudflareBotManagement({
    required super.localName,
    TfArg<bool>? aiBotsMigrationOptOut,
    TfArg<BotManagementAiBotsProtection>? aiBotsProtection,
    TfArg<BotManagementAiTraining>? aiTraining,
    TfArg<BotManagementAiUser>? aiUser,
    TfArg<BotManagementAisearch>? aisearch,
    TfArg<bool>? autoUpdateModel,
    TfArg<bool>? bmCookieEnabled,
    TfArg<bool>? botPreferenceSyncEnabled,
    TfArg<BotManagementCfRobotsVariant>? cfRobotsVariant,
    TfArg<BotManagementContentBotsProtection>? contentBotsProtection,
    TfArg<BotManagementCrawlerProtection>? crawlerProtection,
    TfArg<bool>? enableJs,
    TfArg<bool>? fightMode,
    TfArg<bool>? isRobotsTxtManaged,
    TfArg<bool>? jsdApiResultsEnabled,
    TfArg<bool>? optimizeWordpress,
    TfArg<BotManagementSbfmDefinitelyAutomated>? sbfmDefinitelyAutomated,
    TfArg<BotManagementSbfmLikelyAutomated>? sbfmLikelyAutomated,
    TfArg<bool>? sbfmStaticResourceProtection,
    TfArg<BotManagementSbfmVerifiedBots>? sbfmVerifiedBots,
    TfArg<bool>? suppressSessionScore,
    required TfArg<String> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (aiBotsMigrationOptOut != null)
             'ai_bots_migration_opt_out': aiBotsMigrationOptOut,
           if (aiBotsProtection != null) 'ai_bots_protection': aiBotsProtection,
           if (aiTraining != null) 'ai_training': aiTraining,
           if (aiUser != null) 'ai_user': aiUser,
           if (aisearch != null) 'aisearch': aisearch,
           if (autoUpdateModel != null) 'auto_update_model': autoUpdateModel,
           if (bmCookieEnabled != null) 'bm_cookie_enabled': bmCookieEnabled,
           if (botPreferenceSyncEnabled != null)
             'bot_preference_sync_enabled': botPreferenceSyncEnabled,
           if (cfRobotsVariant != null) 'cf_robots_variant': cfRobotsVariant,
           if (contentBotsProtection != null)
             'content_bots_protection': contentBotsProtection,
           if (crawlerProtection != null)
             'crawler_protection': crawlerProtection,
           if (enableJs != null) 'enable_js': enableJs,
           if (fightMode != null) 'fight_mode': fightMode,
           if (isRobotsTxtManaged != null)
             'is_robots_txt_managed': isRobotsTxtManaged,
           if (jsdApiResultsEnabled != null)
             'jsd_api_results_enabled': jsdApiResultsEnabled,
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
