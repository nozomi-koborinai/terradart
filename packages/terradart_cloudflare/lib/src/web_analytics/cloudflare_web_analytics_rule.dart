// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_web_analytics_rule`.
const Set<String> _cloudflareWebAnalyticsRuleSensitive = <String>{};

/// Factory wrapper for `cloudflare_web_analytics_rule`.
final class CloudflareWebAnalyticsRule extends Resource {
  static const String tfType = 'cloudflare_web_analytics_rule';

  CloudflareWebAnalyticsRule({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    TfArg<String>? host,
    TfArg<bool>? inclusive,
    TfArg<bool>? isPaused,
    TfArg<List<String>>? paths,
    required TfArg<String> rulesetId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'host': ?host,
           'inclusive': ?inclusive,
           'is_paused': ?isPaused,
           'paths': ?paths,
           'ruleset_id': rulesetId,
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareWebAnalyticsRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareWebAnalyticsRule>`.
  RefTo<CloudflareWebAnalyticsRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created` attribute.
  TfRef<String> get created => TfRef.attribute<String>(this, 'created');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');
}
