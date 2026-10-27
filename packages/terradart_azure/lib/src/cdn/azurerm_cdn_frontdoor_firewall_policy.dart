// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_firewall_policy`.
const Set<String> _azurermCdnFrontdoorFirewallPolicySensitive = <String>{};

/// Typed helper for the `custom_rule` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyCustomRule {
  const CdnFrontdoorFirewallPolicyCustomRule({
    required this.action,
    this.enabled,
    required this.name,
    this.priority,
    this.rateLimitDurationInMinutes,
    this.rateLimitThreshold,
    required this.type,
    this.matchCondition,
  });

  final TfArg<String> action;

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final TfArg<num>? priority;

  final TfArg<num>? rateLimitDurationInMinutes;

  final TfArg<num>? rateLimitThreshold;

  final TfArg<String> type;

  final List<CdnFrontdoorFirewallPolicyMatchCondition>? matchCondition;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'name': name.toTfJson(),
    'priority': ?priority?.toTfJson(),
    'rate_limit_duration_in_minutes': ?rateLimitDurationInMinutes?.toTfJson(),
    'rate_limit_threshold': ?rateLimitThreshold?.toTfJson(),
    'type': type.toTfJson(),
    if (matchCondition != null)
      'match_condition': [for (final e in matchCondition!) e.encode()],
  };
}

/// Typed helper for the `custom_rule.match_condition` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyMatchCondition {
  const CdnFrontdoorFirewallPolicyMatchCondition({
    required this.matchValues,
    required this.matchVariable,
    this.negationCondition,
    required this.operator,
    this.selector,
    this.transforms,
  });

  final TfArg<List<String>> matchValues;

  final TfArg<String> matchVariable;

  final TfArg<bool>? negationCondition;

  final TfArg<String> operator;

  final TfArg<String>? selector;

  final TfArg<List<String>>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': matchValues.toTfJson(),
    'match_variable': matchVariable.toTfJson(),
    'negation_condition': ?negationCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': ?selector?.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
  };
}

/// Typed helper for the `log_scrubbing` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyLogScrubbing {
  const CdnFrontdoorFirewallPolicyLogScrubbing({
    this.enabled,
    required this.scrubbingRule,
  });

  final TfArg<bool>? enabled;

  final List<CdnFrontdoorFirewallPolicyScrubbingRule> scrubbingRule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'scrubbing_rule': [for (final e in scrubbingRule) e.encode()],
  };
}

/// Typed helper for the `log_scrubbing.scrubbing_rule` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyScrubbingRule {
  const CdnFrontdoorFirewallPolicyScrubbingRule({
    this.enabled,
    required this.matchVariable,
    this.operator,
    this.selector,
  });

  final TfArg<bool>? enabled;

  final TfArg<String> matchVariable;

  final TfArg<String>? operator;

  final TfArg<String>? selector;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'match_variable': matchVariable.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'selector': ?selector?.toTfJson(),
  };
}

/// Typed helper for the `managed_rule` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyManagedRule {
  const CdnFrontdoorFirewallPolicyManagedRule({
    required this.action,
    required this.type,
    required this.version,
    this.exclusion,
    this.override,
  });

  final TfArg<String> action;

  final TfArg<String> type;

  final TfArg<String> version;

  final List<CdnFrontdoorFirewallPolicyExclusion>? exclusion;

  final List<CdnFrontdoorFirewallPolicyOverride>? override;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'type': type.toTfJson(),
    'version': version.toTfJson(),
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `managed_rule.exclusion` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class CdnFrontdoorFirewallPolicyExclusion {
  const CdnFrontdoorFirewallPolicyExclusion({
    required this.matchVariable,
    required this.operator,
    required this.selector,
  });

  final TfArg<String> matchVariable;

  final TfArg<String> operator;

  final TfArg<String> selector;

  @internal
  Map<String, Object?> encode() => {
    'match_variable': matchVariable.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': selector.toTfJson(),
  };
}

/// Typed helper for the `managed_rule.override` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyOverride {
  const CdnFrontdoorFirewallPolicyOverride({
    required this.ruleGroupName,
    this.exclusion,
    this.rule,
  });

  final TfArg<String> ruleGroupName;

  final List<CdnFrontdoorFirewallPolicyExclusion>? exclusion;

  final List<CdnFrontdoorFirewallPolicyRule>? rule;

  @internal
  Map<String, Object?> encode() => {
    'rule_group_name': ruleGroupName.toTfJson(),
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
    if (rule != null) 'rule': [for (final e in rule!) e.encode()],
  };
}

/// Typed helper for the `managed_rule.override.rule` block of
/// `azurerm_cdn_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class CdnFrontdoorFirewallPolicyRule {
  const CdnFrontdoorFirewallPolicyRule({
    required this.action,
    this.enabled,
    required this.ruleId,
    this.exclusion,
  });

  final TfArg<String> action;

  final TfArg<bool>? enabled;

  final TfArg<String> ruleId;

  final List<CdnFrontdoorFirewallPolicyExclusion>? exclusion;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_cdn_frontdoor_firewall_policy`.
final class AzurermCdnFrontdoorFirewallPolicy extends Resource {
  static const String tfType = 'azurerm_cdn_frontdoor_firewall_policy';

  AzurermCdnFrontdoorFirewallPolicy(
    super.localName, {
    TfArg<num>? captchaCookieExpirationInMinutes,
    TfArg<String>? customBlockResponseBody,
    TfArg<num>? customBlockResponseStatusCode,
    TfArg<bool>? enabled,
    TfArg<num>? jsChallengeCookieExpirationInMinutes,
    required TfArg<String> mode,
    required TfArg<String> name,
    TfArg<String>? redirectUrl,
    TfArg<bool>? requestBodyCheckEnabled,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    List<CdnFrontdoorFirewallPolicyCustomRule>? customRule,
    CdnFrontdoorFirewallPolicyLogScrubbing? logScrubbing,
    List<CdnFrontdoorFirewallPolicyManagedRule>? managedRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'captcha_cookie_expiration_in_minutes':
               ?captchaCookieExpirationInMinutes,
           'custom_block_response_body': ?customBlockResponseBody,
           'custom_block_response_status_code': ?customBlockResponseStatusCode,
           'enabled': ?enabled,
           'js_challenge_cookie_expiration_in_minutes':
               ?jsChallengeCookieExpirationInMinutes,
           'mode': mode,
           'name': name,
           'redirect_url': ?redirectUrl,
           'request_body_check_enabled': ?requestBodyCheckEnabled,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           if (customRule != null)
             'custom_rule': TfArg.literal([
               for (final e in customRule) e.encode(),
             ]),
           if (logScrubbing != null)
             'log_scrubbing': TfArg.literal(logScrubbing.encode()),
           if (managedRule != null)
             'managed_rule': TfArg.literal([
               for (final e in managedRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCdnFrontdoorFirewallPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCdnFrontdoorFirewallPolicy>`.
  RefTo<AzurermCdnFrontdoorFirewallPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `frontend_endpoint_ids` attribute.
  TfRef<List<String>> get frontendEndpointIds =>
      TfRef.attribute<List<String>>(this, 'frontend_endpoint_ids');

  /// Reference to `captcha_cookie_expiration_in_minutes` attribute.
  TfRef<num> get captchaCookieExpirationInMinutes =>
      TfRef.attribute<num>(this, 'captcha_cookie_expiration_in_minutes');

  /// Reference to `custom_block_response_body` attribute.
  TfRef<String> get customBlockResponseBody =>
      TfRef.attribute<String>(this, 'custom_block_response_body');

  /// Reference to `custom_block_response_status_code` attribute.
  TfRef<num> get customBlockResponseStatusCode =>
      TfRef.attribute<num>(this, 'custom_block_response_status_code');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `js_challenge_cookie_expiration_in_minutes` attribute.
  TfRef<num> get jsChallengeCookieExpirationInMinutes =>
      TfRef.attribute<num>(this, 'js_challenge_cookie_expiration_in_minutes');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `redirect_url` attribute.
  TfRef<String> get redirectUrl =>
      TfRef.attribute<String>(this, 'redirect_url');

  /// Reference to `request_body_check_enabled` attribute.
  TfRef<bool> get requestBodyCheckEnabled =>
      TfRef.attribute<bool>(this, 'request_body_check_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
