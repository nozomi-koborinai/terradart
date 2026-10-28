// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_cdn_frontdoor_firewall_policy`.
const Set<String> _azurermCdnFrontdoorFirewallPolicySensitive = <String>{};

/// Cdn Frontdoor Firewall Policy enum for `mode`.
extension type const CdnFrontdoorFirewallPolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorFirewallPolicyMode.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyMode.arg(TfArg<String> arg) : this._(arg);

  static const detection = CdnFrontdoorFirewallPolicyMode._(
    TfArgLiteral('Detection'),
  );
  static const prevention = CdnFrontdoorFirewallPolicyMode._(
    TfArgLiteral('Prevention'),
  );

  static const List<CdnFrontdoorFirewallPolicyMode> values = [
    detection,
    prevention,
  ];
}

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

  final CdnFrontdoorFirewallPolicyType type;

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

/// `type` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorFirewallPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const matchrule = CdnFrontdoorFirewallPolicyType._(
    TfArgLiteral('MatchRule'),
  );
  static const ratelimitrule = CdnFrontdoorFirewallPolicyType._(
    TfArgLiteral('RateLimitRule'),
  );

  static const List<CdnFrontdoorFirewallPolicyType> values = [
    matchrule,
    ratelimitrule,
  ];
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

  final CdnFrontdoorFirewallPolicyMatchConditionMatchVariable matchVariable;

  final TfArg<bool>? negationCondition;

  final CdnFrontdoorFirewallPolicyMatchConditionOperator operator;

  final TfArg<String>? selector;

  final List<CdnFrontdoorFirewallPolicyTransforms>? transforms;

  @internal
  Map<String, Object?> encode() => {
    'match_values': matchValues.toTfJson(),
    'match_variable': matchVariable.toTfJson(),
    'negation_condition': ?negationCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': ?selector?.toTfJson(),
    if (transforms != null)
      'transforms': [for (final e in transforms!) e.toTfJson()],
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorFirewallPolicyMatchConditionMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyMatchConditionMatchVariable.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyMatchConditionMatchVariable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const cookies =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('Cookies'),
      );
  static const postargs =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('PostArgs'),
      );
  static const querystring =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('QueryString'),
      );
  static const remoteaddr =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RemoteAddr'),
      );
  static const requestbody =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestBody'),
      );
  static const requestheader =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestHeader'),
      );
  static const requestmethod =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestMethod'),
      );
  static const requesturi =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestUri'),
      );
  static const socketaddr =
      CdnFrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('SocketAddr'),
      );

  static const List<CdnFrontdoorFirewallPolicyMatchConditionMatchVariable>
  values = [
    cookies,
    postargs,
    querystring,
    remoteaddr,
    requestbody,
    requestheader,
    requestmethod,
    requesturi,
    socketaddr,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyMatchConditionOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorFirewallPolicyMatchConditionOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyMatchConditionOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyMatchConditionOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const any = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('Any'),
  );
  static const beginswith = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('BeginsWith'),
  );
  static const contains = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equal = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('Equal'),
  );
  static const geomatch = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('GeoMatch'),
  );
  static const greaterthan = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequal =
      CdnFrontdoorFirewallPolicyMatchConditionOperator._(
        TfArgLiteral('GreaterThanOrEqual'),
      );
  static const ipmatch = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const lessthan = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('LessThan'),
  );
  static const lessthanorequal =
      CdnFrontdoorFirewallPolicyMatchConditionOperator._(
        TfArgLiteral('LessThanOrEqual'),
      );
  static const regex = CdnFrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('RegEx'),
  );

  static const List<CdnFrontdoorFirewallPolicyMatchConditionOperator> values = [
    any,
    beginswith,
    contains,
    endswith,
    equal,
    geomatch,
    greaterthan,
    greaterthanorequal,
    ipmatch,
    lessthan,
    lessthanorequal,
    regex,
  ];
}

/// `transforms` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyTransforms._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorFirewallPolicyTransforms.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyTransforms.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyTransforms.arg(TfArg<String> arg)
    : this._(arg);

  static const lowercase = CdnFrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('Lowercase'),
  );
  static const removenulls = CdnFrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('RemoveNulls'),
  );
  static const trim = CdnFrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('Trim'),
  );
  static const urldecode = CdnFrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('UrlDecode'),
  );
  static const urlencode = CdnFrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('UrlEncode'),
  );
  static const uppercase = CdnFrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('Uppercase'),
  );

  static const List<CdnFrontdoorFirewallPolicyTransforms> values = [
    lowercase,
    removenulls,
    trim,
    urldecode,
    urlencode,
    uppercase,
  ];
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

  final CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable matchVariable;

  final CdnFrontdoorFirewallPolicyScrubbingRuleOperator? operator;

  final TfArg<String>? selector;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'match_variable': matchVariable.toTfJson(),
    'operator': ?operator?.toTfJson(),
    'selector': ?selector?.toTfJson(),
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const querystringargnames =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('QueryStringArgNames'),
      );
  static const requestbodyjsonargnames =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('RequestBodyJsonArgNames'),
      );
  static const requestbodypostargnames =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('RequestBodyPostArgNames'),
      );
  static const requestcookienames =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('RequestCookieNames'),
      );
  static const requestheadernames =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('RequestHeaderNames'),
      );
  static const requestipaddress =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('RequestIPAddress'),
      );
  static const requesturi =
      CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable._(
        TfArgLiteral('RequestUri'),
      );

  static const List<CdnFrontdoorFirewallPolicyScrubbingRuleMatchVariable>
  values = [
    querystringargnames,
    requestbodyjsonargnames,
    requestbodypostargnames,
    requestcookienames,
    requestheadernames,
    requestipaddress,
    requesturi,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyScrubbingRuleOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorFirewallPolicyScrubbingRuleOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyScrubbingRuleOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyScrubbingRuleOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equals = CdnFrontdoorFirewallPolicyScrubbingRuleOperator._(
    TfArgLiteral('Equals'),
  );
  static const equalsany = CdnFrontdoorFirewallPolicyScrubbingRuleOperator._(
    TfArgLiteral('EqualsAny'),
  );

  static const List<CdnFrontdoorFirewallPolicyScrubbingRuleOperator> values = [
    equals,
    equalsany,
  ];
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

  final CdnFrontdoorFirewallPolicyExclusionMatchVariable matchVariable;

  final CdnFrontdoorFirewallPolicyExclusionOperator operator;

  final TfArg<String> selector;

  @internal
  Map<String, Object?> encode() => {
    'match_variable': matchVariable.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': selector.toTfJson(),
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyExclusionMatchVariable._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorFirewallPolicyExclusionMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyExclusionMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyExclusionMatchVariable.arg(TfArg<String> arg)
    : this._(arg);

  static const querystringargnames =
      CdnFrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('QueryStringArgNames'),
      );
  static const requestbodyjsonargnames =
      CdnFrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestBodyJsonArgNames'),
      );
  static const requestbodypostargnames =
      CdnFrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestBodyPostArgNames'),
      );
  static const requestcookienames =
      CdnFrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestCookieNames'),
      );
  static const requestheadernames =
      CdnFrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestHeaderNames'),
      );

  static const List<CdnFrontdoorFirewallPolicyExclusionMatchVariable> values = [
    querystringargnames,
    requestbodyjsonargnames,
    requestbodypostargnames,
    requestcookienames,
    requestheadernames,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyExclusionOperator._(
  TfArg<String> _
) implements TfArg<String> {
  CdnFrontdoorFirewallPolicyExclusionOperator.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyExclusionOperator.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyExclusionOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const contains = CdnFrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = CdnFrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equals = CdnFrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('Equals'),
  );
  static const equalsany = CdnFrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('EqualsAny'),
  );
  static const startswith = CdnFrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('StartsWith'),
  );

  static const List<CdnFrontdoorFirewallPolicyExclusionOperator> values = [
    contains,
    endswith,
    equals,
    equalsany,
    startswith,
  ];
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

  final CdnFrontdoorFirewallPolicyAction action;

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

/// `action` — derived from the provider schema description.
extension type const CdnFrontdoorFirewallPolicyAction._(TfArg<String> _)
    implements TfArg<String> {
  CdnFrontdoorFirewallPolicyAction.variable(String name)
    : this._(TfArg.variable(name));
  CdnFrontdoorFirewallPolicyAction.expression(String template)
    : this._(TfArg.expression(template));
  const CdnFrontdoorFirewallPolicyAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = CdnFrontdoorFirewallPolicyAction._(
    TfArgLiteral('Allow'),
  );
  static const anomalyscoring = CdnFrontdoorFirewallPolicyAction._(
    TfArgLiteral('AnomalyScoring'),
  );
  static const block = CdnFrontdoorFirewallPolicyAction._(
    TfArgLiteral('Block'),
  );
  static const captcha = CdnFrontdoorFirewallPolicyAction._(
    TfArgLiteral('CAPTCHA'),
  );
  static const jschallenge = CdnFrontdoorFirewallPolicyAction._(
    TfArgLiteral('JSChallenge'),
  );
  static const log = CdnFrontdoorFirewallPolicyAction._(TfArgLiteral('Log'));
  static const redirect = CdnFrontdoorFirewallPolicyAction._(
    TfArgLiteral('Redirect'),
  );

  static const List<CdnFrontdoorFirewallPolicyAction> values = [
    allow,
    anomalyscoring,
    block,
    captcha,
    jschallenge,
    log,
    redirect,
  ];
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
    required CdnFrontdoorFirewallPolicyMode mode,
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
