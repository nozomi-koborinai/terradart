// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_bot_management`.
const Set<String> _cloudflareBotManagementSensitive = <String>{};

/// Bot Management Ai Bots enum for `ai_bots_protection`.
extension type const BotManagementAiBotsProtection._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementAiBotsProtection.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementAiBotsProtection.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementAiBotsProtection.arg(TfArg<String> arg) : this._(arg);

  static const block = BotManagementAiBotsProtection._(TfArgLiteral('block'));
  static const disabled = BotManagementAiBotsProtection._(
    TfArgLiteral('disabled'),
  );
  static const onlyOnAdPages = BotManagementAiBotsProtection._(
    TfArgLiteral('only_on_ad_pages'),
  );

  static const List<BotManagementAiBotsProtection> values = [
    block,
    disabled,
    onlyOnAdPages,
  ];
}

/// Bot Management Ai enum for `ai_training`.
extension type const BotManagementAiTraining._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementAiTraining.variable(String name) : this._(TfArg.variable(name));
  BotManagementAiTraining.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementAiTraining.arg(TfArg<String> arg) : this._(arg);

  static const disabled = BotManagementAiTraining._(TfArgLiteral('disabled'));
  static const disallow = BotManagementAiTraining._(TfArgLiteral('disallow'));
  static const block = BotManagementAiTraining._(TfArgLiteral('block'));
  static const onlyOnAdPages = BotManagementAiTraining._(
    TfArgLiteral('only_on_ad_pages'),
  );

  static const List<BotManagementAiTraining> values = [
    disabled,
    disallow,
    block,
    onlyOnAdPages,
  ];
}

/// Bot Management Ai enum for `ai_user`.
extension type const BotManagementAiUser._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementAiUser.variable(String name) : this._(TfArg.variable(name));
  BotManagementAiUser.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementAiUser.arg(TfArg<String> arg) : this._(arg);

  static const disabled = BotManagementAiUser._(TfArgLiteral('disabled'));
  static const block = BotManagementAiUser._(TfArgLiteral('block'));
  static const onlyOnAdPages = BotManagementAiUser._(
    TfArgLiteral('only_on_ad_pages'),
  );

  static const List<BotManagementAiUser> values = [
    disabled,
    block,
    onlyOnAdPages,
  ];
}

/// Bot Management enum for `aisearch`.
extension type const BotManagementAisearch._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementAisearch.variable(String name) : this._(TfArg.variable(name));
  BotManagementAisearch.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementAisearch.arg(TfArg<String> arg) : this._(arg);

  static const disabled = BotManagementAisearch._(TfArgLiteral('disabled'));
  static const block = BotManagementAisearch._(TfArgLiteral('block'));
  static const onlyOnAdPages = BotManagementAisearch._(
    TfArgLiteral('only_on_ad_pages'),
  );

  static const List<BotManagementAisearch> values = [
    disabled,
    block,
    onlyOnAdPages,
  ];
}

/// Bot Management Cf Robots enum for `cf_robots_variant`.
extension type const BotManagementCfRobotsVariant._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementCfRobotsVariant.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementCfRobotsVariant.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementCfRobotsVariant.arg(TfArg<String> arg) : this._(arg);

  static const off = BotManagementCfRobotsVariant._(TfArgLiteral('off'));
  static const policyOnly = BotManagementCfRobotsVariant._(
    TfArgLiteral('policy_only'),
  );

  static const List<BotManagementCfRobotsVariant> values = [off, policyOnly];
}

/// Bot Management Content Bots enum for `content_bots_protection`.
extension type const BotManagementContentBotsProtection._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementContentBotsProtection.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementContentBotsProtection.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementContentBotsProtection.arg(TfArg<String> arg) : this._(arg);

  static const block = BotManagementContentBotsProtection._(
    TfArgLiteral('block'),
  );
  static const disabled = BotManagementContentBotsProtection._(
    TfArgLiteral('disabled'),
  );

  static const List<BotManagementContentBotsProtection> values = [
    block,
    disabled,
  ];
}

/// Bot Management Crawler enum for `crawler_protection`.
extension type const BotManagementCrawlerProtection._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementCrawlerProtection.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementCrawlerProtection.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementCrawlerProtection.arg(TfArg<String> arg) : this._(arg);

  static const enabled = BotManagementCrawlerProtection._(
    TfArgLiteral('enabled'),
  );
  static const disabled = BotManagementCrawlerProtection._(
    TfArgLiteral('disabled'),
  );

  static const List<BotManagementCrawlerProtection> values = [
    enabled,
    disabled,
  ];
}

/// Bot Management Sbfm Definitely enum for `sbfm_definitely_automated`.
extension type const BotManagementSbfmDefinitelyAutomated._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementSbfmDefinitelyAutomated.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementSbfmDefinitelyAutomated.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementSbfmDefinitelyAutomated.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = BotManagementSbfmDefinitelyAutomated._(
    TfArgLiteral('allow'),
  );
  static const block = BotManagementSbfmDefinitelyAutomated._(
    TfArgLiteral('block'),
  );
  static const managedChallenge = BotManagementSbfmDefinitelyAutomated._(
    TfArgLiteral('managed_challenge'),
  );

  static const List<BotManagementSbfmDefinitelyAutomated> values = [
    allow,
    block,
    managedChallenge,
  ];
}

/// Bot Management Sbfm Likely enum for `sbfm_likely_automated`.
extension type const BotManagementSbfmLikelyAutomated._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementSbfmLikelyAutomated.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementSbfmLikelyAutomated.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementSbfmLikelyAutomated.arg(TfArg<String> arg) : this._(arg);

  static const allow = BotManagementSbfmLikelyAutomated._(
    TfArgLiteral('allow'),
  );
  static const block = BotManagementSbfmLikelyAutomated._(
    TfArgLiteral('block'),
  );
  static const managedChallenge = BotManagementSbfmLikelyAutomated._(
    TfArgLiteral('managed_challenge'),
  );

  static const List<BotManagementSbfmLikelyAutomated> values = [
    allow,
    block,
    managedChallenge,
  ];
}

/// Bot Management Sbfm Verified enum for `sbfm_verified_bots`.
extension type const BotManagementSbfmVerifiedBots._(TfArg<String> _)
    implements TfArg<String> {
  BotManagementSbfmVerifiedBots.variable(String name)
    : this._(TfArg.variable(name));
  BotManagementSbfmVerifiedBots.expression(String template)
    : this._(TfArg.expression(template));
  const BotManagementSbfmVerifiedBots.arg(TfArg<String> arg) : this._(arg);

  static const allow = BotManagementSbfmVerifiedBots._(TfArgLiteral('allow'));
  static const block = BotManagementSbfmVerifiedBots._(TfArgLiteral('block'));

  static const List<BotManagementSbfmVerifiedBots> values = [allow, block];
}

/// Factory wrapper for `cloudflare_bot_management`.
///
/// Accepted Permissions
///
/// - `Bot Management Read` - `Bot Management Write`
final class CloudflareBotManagement extends Resource {
  static const String tfType = 'cloudflare_bot_management';

  CloudflareBotManagement(
    super.localName, {
    TfArg<bool>? aiBotsMigrationOptOut,
    BotManagementAiBotsProtection? aiBotsProtection,
    BotManagementAiTraining? aiTraining,
    BotManagementAiUser? aiUser,
    BotManagementAisearch? aisearch,
    TfArg<bool>? autoUpdateModel,
    TfArg<bool>? bmCookieEnabled,
    TfArg<bool>? botPreferenceSyncEnabled,
    BotManagementCfRobotsVariant? cfRobotsVariant,
    BotManagementContentBotsProtection? contentBotsProtection,
    BotManagementCrawlerProtection? crawlerProtection,
    TfArg<bool>? enableJs,
    TfArg<bool>? fightMode,
    TfArg<bool>? isRobotsTxtManaged,
    TfArg<bool>? jsdApiResultsEnabled,
    TfArg<bool>? optimizeWordpress,
    BotManagementSbfmDefinitelyAutomated? sbfmDefinitelyAutomated,
    BotManagementSbfmLikelyAutomated? sbfmLikelyAutomated,
    TfArg<bool>? sbfmStaticResourceProtection,
    BotManagementSbfmVerifiedBots? sbfmVerifiedBots,
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

  /// Reference to `ai_bots_migration_opt_out` attribute.
  TfRef<bool> get aiBotsMigrationOptOut =>
      TfRef.attribute<bool>(this, 'ai_bots_migration_opt_out');

  /// Reference to `ai_bots_protection` attribute.
  TfRef<String> get aiBotsProtection =>
      TfRef.attribute<String>(this, 'ai_bots_protection');

  /// Reference to `ai_training` attribute.
  TfRef<String> get aiTraining => TfRef.attribute<String>(this, 'ai_training');

  /// Reference to `ai_user` attribute.
  TfRef<String> get aiUser => TfRef.attribute<String>(this, 'ai_user');

  /// Reference to `aisearch` attribute.
  TfRef<String> get aisearch => TfRef.attribute<String>(this, 'aisearch');

  /// Reference to `auto_update_model` attribute.
  TfRef<bool> get autoUpdateModel =>
      TfRef.attribute<bool>(this, 'auto_update_model');

  /// Reference to `bm_cookie_enabled` attribute.
  TfRef<bool> get bmCookieEnabled =>
      TfRef.attribute<bool>(this, 'bm_cookie_enabled');

  /// Reference to `bot_preference_sync_enabled` attribute.
  TfRef<bool> get botPreferenceSyncEnabled =>
      TfRef.attribute<bool>(this, 'bot_preference_sync_enabled');

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

  /// Reference to `jsd_api_results_enabled` attribute.
  TfRef<bool> get jsdApiResultsEnabled =>
      TfRef.attribute<bool>(this, 'jsd_api_results_enabled');

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

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
