// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

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
    required RefTo<CloudflareZone> zoneId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ai_bots_migration_opt_out': ?aiBotsMigrationOptOut,
           'ai_bots_protection': ?aiBotsProtection,
           'ai_training': ?aiTraining,
           'ai_user': ?aiUser,
           'aisearch': ?aisearch,
           'auto_update_model': ?autoUpdateModel,
           'bm_cookie_enabled': ?bmCookieEnabled,
           'bot_preference_sync_enabled': ?botPreferenceSyncEnabled,
           'cf_robots_variant': ?cfRobotsVariant,
           'content_bots_protection': ?contentBotsProtection,
           'crawler_protection': ?crawlerProtection,
           'enable_js': ?enableJs,
           'fight_mode': ?fightMode,
           'is_robots_txt_managed': ?isRobotsTxtManaged,
           'jsd_api_results_enabled': ?jsdApiResultsEnabled,
           'optimize_wordpress': ?optimizeWordpress,
           'sbfm_definitely_automated': ?sbfmDefinitelyAutomated,
           'sbfm_likely_automated': ?sbfmLikelyAutomated,
           'sbfm_static_resource_protection': ?sbfmStaticResourceProtection,
           'sbfm_verified_bots': ?sbfmVerifiedBots,
           'suppress_session_score': ?suppressSessionScore,
           'zone_id': zoneId.encodeAs('id'),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareBotManagementSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareBotManagement>`.
  RefTo<CloudflareBotManagement> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `using_latest_model` attribute.
  TfRef<bool> get usingLatestModel =>
      TfRef.attribute<bool>(this, 'using_latest_model');
}
