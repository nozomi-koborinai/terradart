// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../project/appwrite_project.dart' show AppwriteProject;

/// Sensitive field paths for `appwrite_waf_rule`.
const Set<String> _appwriteWafRuleSensitive = <String>{};

/// Waf Rule enum for `key`.
extension type const WafRuleKey._(TfArg<String> _) implements TfArg<String> {
  WafRuleKey.variable(String name) : this._(TfArg.variable(name));
  WafRuleKey.expression(String template) : this._(TfArg.expression(template));
  const WafRuleKey.arg(TfArg<String> arg) : this._(arg);

  static const ip = WafRuleKey._(TfArgLiteral('ip'));
  static const userid = WafRuleKey._(TfArgLiteral('userId'));

  static const List<WafRuleKey> values = [ip, userid];
}

/// Factory wrapper for `appwrite_waf_rule`.
///
/// Manages a web application firewall (WAF) rule on an Appwrite Cloud project.
final class AppwriteWafRule extends Resource {
  static const String tfType = 'appwrite_waf_rule';

  AppwriteWafRule(
    super.localName, {
    TfArg<String>? challengeType,
    TfArg<List<String>>? conditions,
    TfArg<String>? description,
    TfArg<num>? difficulty,
    TfArg<bool>? enabled,
    TfArg<num>? interval,
    WafRuleKey? key,
    TfArg<num>? limit,
    TfArg<String>? location,
    TfArg<num>? maxBucketSize,
    required TfArg<String> name,
    TfArg<num>? priority,
    RefTo<AppwriteProject>? projectId,
    TfArg<String>? resourceId,
    TfArg<String>? resourceType,
    TfArg<num>? statusCode,
    TfArg<String>? strategy,
    TfArg<num>? ttl,
    required TfArg<String> type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'challenge_type': ?challengeType,
           'conditions': ?conditions,
           'description': ?description,
           'difficulty': ?difficulty,
           'enabled': ?enabled,
           'interval': ?interval,
           'key': ?key,
           'limit': ?limit,
           'location': ?location,
           'max_bucket_size': ?maxBucketSize,
           'name': name,
           'priority': ?priority,
           'project_id': ?projectId?.encodeAs('id'),
           'resource_id': ?resourceId,
           'resource_type': ?resourceType,
           'status_code': ?statusCode,
           'strategy': ?strategy,
           'ttl': ?ttl,
           'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _appwriteWafRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AppwriteWafRule>`.
  RefTo<AppwriteWafRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `updated_at` attribute.
  TfRef<String> get updatedAt => TfRef.attribute<String>(this, 'updated_at');

  /// Reference to `challenge_type` attribute.
  TfRef<String> get challengeType =>
      TfRef.attribute<String>(this, 'challenge_type');

  /// Reference to `conditions` attribute.
  TfRef<List<String>> get conditions =>
      TfRef.attribute<List<String>>(this, 'conditions');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `difficulty` attribute.
  TfRef<num> get difficulty => TfRef.attribute<num>(this, 'difficulty');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `interval` attribute.
  TfRef<num> get interval => TfRef.attribute<num>(this, 'interval');

  /// Reference to `key` attribute.
  TfRef<String> get key => TfRef.attribute<String>(this, 'key');

  /// Reference to `limit` attribute.
  TfRef<num> get limit => TfRef.attribute<num>(this, 'limit');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `max_bucket_size` attribute.
  TfRef<num> get maxBucketSize => TfRef.attribute<num>(this, 'max_bucket_size');

  /// Reference to `priority` attribute.
  TfRef<num> get priority => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project_id` attribute.
  TfRef<String> get projectId => TfRef.attribute<String>(this, 'project_id');

  /// Reference to `resource_id` attribute.
  TfRef<String> get resourceId => TfRef.attribute<String>(this, 'resource_id');

  /// Reference to `resource_type` attribute.
  TfRef<String> get resourceType =>
      TfRef.attribute<String>(this, 'resource_type');

  /// Reference to `status_code` attribute.
  TfRef<num> get statusCode => TfRef.attribute<num>(this, 'status_code');

  /// Reference to `strategy` attribute.
  TfRef<String> get strategy => TfRef.attribute<String>(this, 'strategy');

  /// Reference to `ttl` attribute.
  TfRef<num> get ttl => TfRef.attribute<num>(this, 'ttl');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
