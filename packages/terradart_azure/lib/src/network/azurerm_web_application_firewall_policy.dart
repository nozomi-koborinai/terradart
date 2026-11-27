// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_web_application_firewall_policy`.
const Set<String> _azurermWebApplicationFirewallPolicySensitive = <String>{};

/// Typed helper for the `custom_rules` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyCustomRules {
  const WebApplicationFirewallPolicyCustomRules({
    required this.action,
    this.enabled,
    this.groupRateLimitBy,
    this.name,
    required this.priority,
    this.rateLimitDuration,
    this.rateLimitThreshold,
    required this.ruleType,
    required this.matchConditions,
  });

  final WebApplicationFirewallPolicyAction action;

  final TfArg<bool>? enabled;

  final WebApplicationFirewallPolicyGroupRateLimitBy? groupRateLimitBy;

  final TfArg<String>? name;

  final TfArg<num> priority;

  final WebApplicationFirewallPolicyRateLimitDuration? rateLimitDuration;

  final TfArg<num>? rateLimitThreshold;

  final WebApplicationFirewallPolicyRuleType ruleType;

  final List<WebApplicationFirewallPolicyMatchConditions> matchConditions;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'group_rate_limit_by': ?groupRateLimitBy?.toTfJson(),
    'name': ?name?.toTfJson(),
    'priority': priority.toTfJson(),
    'rate_limit_duration': ?rateLimitDuration?.toTfJson(),
    'rate_limit_threshold': ?rateLimitThreshold?.toTfJson(),
    'rule_type': ruleType.toTfJson(),
    'match_conditions': [for (final e in matchConditions) e.encode()],
  };
}

/// `action` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyAction._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyAction.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyAction.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = WebApplicationFirewallPolicyAction._(
    TfArgLiteral('Allow'),
  );
  static const block = WebApplicationFirewallPolicyAction._(
    TfArgLiteral('Block'),
  );
  static const log = WebApplicationFirewallPolicyAction._(TfArgLiteral('Log'));
  static const jschallenge = WebApplicationFirewallPolicyAction._(
    TfArgLiteral('JSChallenge'),
  );

  static const List<WebApplicationFirewallPolicyAction> values = [
    allow,
    block,
    log,
    jschallenge,
  ];
}

/// `group_rate_limit_by` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyGroupRateLimitBy._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyGroupRateLimitBy.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyGroupRateLimitBy.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyGroupRateLimitBy.arg(TfArg<String> arg)
    : this._(arg);

  static const clientaddr = WebApplicationFirewallPolicyGroupRateLimitBy._(
    TfArgLiteral('ClientAddr'),
  );
  static const clientaddrxffheader =
      WebApplicationFirewallPolicyGroupRateLimitBy._(
        TfArgLiteral('ClientAddrXFFHeader'),
      );
  static const geolocation = WebApplicationFirewallPolicyGroupRateLimitBy._(
    TfArgLiteral('GeoLocation'),
  );
  static const geolocationxffheader =
      WebApplicationFirewallPolicyGroupRateLimitBy._(
        TfArgLiteral('GeoLocationXFFHeader'),
      );
  static const none = WebApplicationFirewallPolicyGroupRateLimitBy._(
    TfArgLiteral('None'),
  );

  static const List<WebApplicationFirewallPolicyGroupRateLimitBy> values = [
    clientaddr,
    clientaddrxffheader,
    geolocation,
    geolocationxffheader,
    none,
  ];
}

/// `rate_limit_duration` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyRateLimitDuration._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyRateLimitDuration.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyRateLimitDuration.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyRateLimitDuration.arg(TfArg<String> arg)
    : this._(arg);

  static const fivemins = WebApplicationFirewallPolicyRateLimitDuration._(
    TfArgLiteral('FiveMins'),
  );
  static const onemin = WebApplicationFirewallPolicyRateLimitDuration._(
    TfArgLiteral('OneMin'),
  );

  static const List<WebApplicationFirewallPolicyRateLimitDuration> values = [
    fivemins,
    onemin,
  ];
}

/// `rule_type` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyRuleType._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyRuleType.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyRuleType.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyRuleType.arg(TfArg<String> arg)
    : this._(arg);

  static const invalid = WebApplicationFirewallPolicyRuleType._(
    TfArgLiteral('Invalid'),
  );
  static const matchrule = WebApplicationFirewallPolicyRuleType._(
    TfArgLiteral('MatchRule'),
  );
  static const ratelimitrule = WebApplicationFirewallPolicyRuleType._(
    TfArgLiteral('RateLimitRule'),
  );

  static const List<WebApplicationFirewallPolicyRuleType> values = [
    invalid,
    matchrule,
    ratelimitrule,
  ];
}

/// Typed helper for the `custom_rules.match_conditions` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyMatchConditions {
  const WebApplicationFirewallPolicyMatchConditions({
    this.matchValues,
    this.negationCondition,
    required this.operator,
    this.transforms,
    required this.matchVariables,
  });

  final TfArg<List<String>>? matchValues;

  final TfArg<bool>? negationCondition;

  final WebApplicationFirewallPolicyOperator operator;

  final EnumList<WebApplicationFirewallPolicyTransforms>? transforms;

  final List<WebApplicationFirewallPolicyMatchVariables> matchVariables;

  @internal
  Map<String, Object?> encode() => {
    'match_values': ?matchValues?.toTfJson(),
    'negation_condition': ?negationCondition?.toTfJson(),
    'operator': operator.toTfJson(),
    'transforms': ?transforms?.toTfJson(),
    'match_variables': [for (final e in matchVariables) e.encode()],
  };
}

/// `operator` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyOperator._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyOperator.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyOperator.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const any = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('Any'),
  );
  static const beginswith = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('BeginsWith'),
  );
  static const contains = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equal = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('Equal'),
  );
  static const geomatch = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('GeoMatch'),
  );
  static const greaterthan = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequal = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('GreaterThanOrEqual'),
  );
  static const ipmatch = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const lessthan = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('LessThan'),
  );
  static const lessthanorequal = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('LessThanOrEqual'),
  );
  static const regex = WebApplicationFirewallPolicyOperator._(
    TfArgLiteral('Regex'),
  );

  static const List<WebApplicationFirewallPolicyOperator> values = [
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
extension type const WebApplicationFirewallPolicyTransforms._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyTransforms.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyTransforms.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyTransforms.arg(TfArg<String> arg)
    : this._(arg);

  static const htmlentitydecode = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('HtmlEntityDecode'),
  );
  static const lowercase = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('Lowercase'),
  );
  static const removenulls = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('RemoveNulls'),
  );
  static const trim = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('Trim'),
  );
  static const urldecode = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('UrlDecode'),
  );
  static const urlencode = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('UrlEncode'),
  );
  static const uppercase = WebApplicationFirewallPolicyTransforms._(
    TfArgLiteral('Uppercase'),
  );

  static const List<WebApplicationFirewallPolicyTransforms> values = [
    htmlentitydecode,
    lowercase,
    removenulls,
    trim,
    urldecode,
    urlencode,
    uppercase,
  ];
}

/// Typed helper for the `custom_rules.match_conditions.match_variables` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyMatchVariables {
  const WebApplicationFirewallPolicyMatchVariables({
    this.selector,
    required this.variableName,
  });

  final TfArg<String>? selector;

  final WebApplicationFirewallPolicyVariableName variableName;

  @internal
  Map<String, Object?> encode() => {
    'selector': ?selector?.toTfJson(),
    'variable_name': variableName.toTfJson(),
  };
}

/// `variable_name` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyVariableName._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyVariableName.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyVariableName.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyVariableName.arg(TfArg<String> arg)
    : this._(arg);

  static const postargs = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('PostArgs'),
  );
  static const querystring = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('QueryString'),
  );
  static const remoteaddr = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('RemoteAddr'),
  );
  static const requestbody = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('RequestBody'),
  );
  static const requestcookies = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('RequestCookies'),
  );
  static const requestheaders = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('RequestHeaders'),
  );
  static const requestmethod = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('RequestMethod'),
  );
  static const requesturi = WebApplicationFirewallPolicyVariableName._(
    TfArgLiteral('RequestUri'),
  );

  static const List<WebApplicationFirewallPolicyVariableName> values = [
    postargs,
    querystring,
    remoteaddr,
    requestbody,
    requestcookies,
    requestheaders,
    requestmethod,
    requesturi,
  ];
}

/// Typed helper for the `managed_rules` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyManagedRules {
  const WebApplicationFirewallPolicyManagedRules({
    this.exception,
    this.exclusion,
    required this.managedRuleSet,
  });

  final List<WebApplicationFirewallPolicyException>? exception;

  final List<WebApplicationFirewallPolicyExclusion>? exclusion;

  final List<WebApplicationFirewallPolicyManagedRuleSet> managedRuleSet;

  @internal
  Map<String, Object?> encode() => {
    if (exception != null)
      'exception': [for (final e in exception!) e.encode()],
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
    'managed_rule_set': [for (final e in managedRuleSet) e.encode()],
  };
}

/// Typed helper for the `managed_rules.exception` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyException {
  const WebApplicationFirewallPolicyException({
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
    required this.valueMatchOperator,
    required this.values,
    required this.exceptionRuleSet,
  });

  final WebApplicationFirewallPolicyExceptionMatchVariable matchVariable;

  final TfArg<String>? selector;

  final WebApplicationFirewallPolicyExceptionSelectorMatchOperator?
  selectorMatchOperator;

  final WebApplicationFirewallPolicyValueMatchOperator valueMatchOperator;

  final TfArg<List<String>> values;

  final List<WebApplicationFirewallPolicyExceptionRuleSet> exceptionRuleSet;

  @internal
  Map<String, Object?> encode() => {
    'match_variable': matchVariable.toTfJson(),
    'selector': ?selector?.toTfJson(),
    'selector_match_operator': ?selectorMatchOperator?.toTfJson(),
    'value_match_operator': valueMatchOperator.toTfJson(),
    'values': values.toTfJson(),
    'exception_rule_set': [for (final e in exceptionRuleSet) e.encode()],
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyExceptionMatchVariable._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyExceptionMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyExceptionMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyExceptionMatchVariable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const remoteaddr =
      WebApplicationFirewallPolicyExceptionMatchVariable._(
        TfArgLiteral('RemoteAddr'),
      );
  static const requestheader =
      WebApplicationFirewallPolicyExceptionMatchVariable._(
        TfArgLiteral('RequestHeader'),
      );
  static const requesturi =
      WebApplicationFirewallPolicyExceptionMatchVariable._(
        TfArgLiteral('RequestURI'),
      );

  static const List<WebApplicationFirewallPolicyExceptionMatchVariable> values =
      [remoteaddr, requestheader, requesturi];
}

/// `selector_match_operator` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyExceptionSelectorMatchOperator._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyExceptionSelectorMatchOperator.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyExceptionSelectorMatchOperator.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyExceptionSelectorMatchOperator.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const contains =
      WebApplicationFirewallPolicyExceptionSelectorMatchOperator._(
        TfArgLiteral('Contains'),
      );
  static const endswith =
      WebApplicationFirewallPolicyExceptionSelectorMatchOperator._(
        TfArgLiteral('EndsWith'),
      );
  static const equals =
      WebApplicationFirewallPolicyExceptionSelectorMatchOperator._(
        TfArgLiteral('Equals'),
      );
  static const startswith =
      WebApplicationFirewallPolicyExceptionSelectorMatchOperator._(
        TfArgLiteral('StartsWith'),
      );

  static const List<WebApplicationFirewallPolicyExceptionSelectorMatchOperator>
  values = [contains, endswith, equals, startswith];
}

/// `value_match_operator` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyValueMatchOperator._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyValueMatchOperator.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyValueMatchOperator.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyValueMatchOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const contains = WebApplicationFirewallPolicyValueMatchOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = WebApplicationFirewallPolicyValueMatchOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equals = WebApplicationFirewallPolicyValueMatchOperator._(
    TfArgLiteral('Equals'),
  );
  static const ipmatch = WebApplicationFirewallPolicyValueMatchOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const startswith = WebApplicationFirewallPolicyValueMatchOperator._(
    TfArgLiteral('StartsWith'),
  );

  static const List<WebApplicationFirewallPolicyValueMatchOperator> values = [
    contains,
    endswith,
    equals,
    ipmatch,
    startswith,
  ];
}

/// Typed helper for the `managed_rules.exception.exception_rule_set` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyExceptionRuleSet {
  const WebApplicationFirewallPolicyExceptionRuleSet({
    required this.type,
    required this.version,
    this.ruleGroup,
  });

  final TfArg<String> type;

  final TfArg<String> version;

  final List<WebApplicationFirewallPolicyExceptionRuleSetRuleGroup>? ruleGroup;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'version': version.toTfJson(),
    if (ruleGroup != null)
      'rule_group': [for (final e in ruleGroup!) e.encode()],
  };
}

/// Typed helper for the `managed_rules.exception.exception_rule_set.rule_group` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyExceptionRuleSetRuleGroup {
  const WebApplicationFirewallPolicyExceptionRuleSetRuleGroup({
    required this.ruleGroupName,
    this.rules,
  });

  final TfArg<String> ruleGroupName;

  final TfArg<List<String>>? rules;

  @internal
  Map<String, Object?> encode() => {
    'rule_group_name': ruleGroupName.toTfJson(),
    'rules': ?rules?.toTfJson(),
  };
}

/// Typed helper for the `managed_rules.exclusion` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyExclusion {
  const WebApplicationFirewallPolicyExclusion({
    required this.matchVariable,
    required this.selector,
    required this.selectorMatchOperator,
    this.excludedRuleSet,
  });

  final WebApplicationFirewallPolicyExclusionMatchVariable matchVariable;

  final TfArg<String> selector;

  final WebApplicationFirewallPolicyExclusionSelectorMatchOperator
  selectorMatchOperator;

  final WebApplicationFirewallPolicyExcludedRuleSet? excludedRuleSet;

  @internal
  Map<String, Object?> encode() => {
    'match_variable': matchVariable.toTfJson(),
    'selector': selector.toTfJson(),
    'selector_match_operator': selectorMatchOperator.toTfJson(),
    'excluded_rule_set': ?excludedRuleSet?.encode(),
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyExclusionMatchVariable._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyExclusionMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyExclusionMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyExclusionMatchVariable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const requestargkeys =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestArgKeys'),
      );
  static const requestargnames =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestArgNames'),
      );
  static const requestargvalues =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestArgValues'),
      );
  static const requestcookiekeys =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestCookieKeys'),
      );
  static const requestcookienames =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestCookieNames'),
      );
  static const requestcookievalues =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestCookieValues'),
      );
  static const requestheaderkeys =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestHeaderKeys'),
      );
  static const requestheadernames =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestHeaderNames'),
      );
  static const requestheadervalues =
      WebApplicationFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestHeaderValues'),
      );

  static const List<WebApplicationFirewallPolicyExclusionMatchVariable> values =
      [
        requestargkeys,
        requestargnames,
        requestargvalues,
        requestcookiekeys,
        requestcookienames,
        requestcookievalues,
        requestheaderkeys,
        requestheadernames,
        requestheadervalues,
      ];
}

/// `selector_match_operator` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyExclusionSelectorMatchOperator._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyExclusionSelectorMatchOperator.variable(
    String name,
  ) : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyExclusionSelectorMatchOperator.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyExclusionSelectorMatchOperator.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const contains =
      WebApplicationFirewallPolicyExclusionSelectorMatchOperator._(
        TfArgLiteral('Contains'),
      );
  static const endswith =
      WebApplicationFirewallPolicyExclusionSelectorMatchOperator._(
        TfArgLiteral('EndsWith'),
      );
  static const equals =
      WebApplicationFirewallPolicyExclusionSelectorMatchOperator._(
        TfArgLiteral('Equals'),
      );
  static const equalsany =
      WebApplicationFirewallPolicyExclusionSelectorMatchOperator._(
        TfArgLiteral('EqualsAny'),
      );
  static const startswith =
      WebApplicationFirewallPolicyExclusionSelectorMatchOperator._(
        TfArgLiteral('StartsWith'),
      );

  static const List<WebApplicationFirewallPolicyExclusionSelectorMatchOperator>
  values = [contains, endswith, equals, equalsany, startswith];
}

/// Typed helper for the `managed_rules.exclusion.excluded_rule_set` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyExcludedRuleSet {
  const WebApplicationFirewallPolicyExcludedRuleSet({
    this.type,
    this.version,
    this.ruleGroup,
  });

  final TfArg<String>? type;

  final TfArg<String>? version;

  final List<WebApplicationFirewallPolicyExcludedRuleSetRuleGroup>? ruleGroup;

  @internal
  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'version': ?version?.toTfJson(),
    if (ruleGroup != null)
      'rule_group': [for (final e in ruleGroup!) e.encode()],
  };
}

/// Typed helper for the `managed_rules.exclusion.excluded_rule_set.rule_group` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyExcludedRuleSetRuleGroup {
  const WebApplicationFirewallPolicyExcludedRuleSetRuleGroup({
    this.excludedRules,
    required this.ruleGroupName,
  });

  final TfArg<List<String>>? excludedRules;

  final TfArg<String> ruleGroupName;

  @internal
  Map<String, Object?> encode() => {
    'excluded_rules': ?excludedRules?.toTfJson(),
    'rule_group_name': ruleGroupName.toTfJson(),
  };
}

/// Typed helper for the `managed_rules.managed_rule_set` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyManagedRuleSet {
  const WebApplicationFirewallPolicyManagedRuleSet({
    this.type,
    required this.version,
    this.ruleGroupOverride,
  });

  final TfArg<String>? type;

  final TfArg<String> version;

  final List<WebApplicationFirewallPolicyRuleGroupOverride>? ruleGroupOverride;

  @internal
  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'version': version.toTfJson(),
    if (ruleGroupOverride != null)
      'rule_group_override': [for (final e in ruleGroupOverride!) e.encode()],
  };
}

/// Typed helper for the `managed_rules.managed_rule_set.rule_group_override` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyRuleGroupOverride {
  const WebApplicationFirewallPolicyRuleGroupOverride({
    required this.ruleGroupName,
    this.rule,
  });

  final TfArg<String> ruleGroupName;

  final List<WebApplicationFirewallPolicyRuleGroupOverrideRule>? rule;

  @internal
  Map<String, Object?> encode() => {
    'rule_group_name': ruleGroupName.toTfJson(),
    if (rule != null) 'rule': [for (final e in rule!) e.encode()],
  };
}

/// Typed helper for the `managed_rules.managed_rule_set.rule_group_override.rule` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyRuleGroupOverrideRule {
  const WebApplicationFirewallPolicyRuleGroupOverrideRule({
    this.action,
    this.enabled,
    required this.id,
  });

  final WebApplicationFirewallPolicyRuleAction? action;

  final TfArg<bool>? enabled;

  final TfArg<String> id;

  @internal
  Map<String, Object?> encode() => {
    'action': ?action?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyRuleAction._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyRuleAction.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyRuleAction.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyRuleAction.arg(TfArg<String> arg)
    : this._(arg);

  static const allow = WebApplicationFirewallPolicyRuleAction._(
    TfArgLiteral('Allow'),
  );
  static const anomalyscoring = WebApplicationFirewallPolicyRuleAction._(
    TfArgLiteral('AnomalyScoring'),
  );
  static const block = WebApplicationFirewallPolicyRuleAction._(
    TfArgLiteral('Block'),
  );
  static const captcha = WebApplicationFirewallPolicyRuleAction._(
    TfArgLiteral('CAPTCHA'),
  );
  static const jschallenge = WebApplicationFirewallPolicyRuleAction._(
    TfArgLiteral('JSChallenge'),
  );
  static const log = WebApplicationFirewallPolicyRuleAction._(
    TfArgLiteral('Log'),
  );

  static const List<WebApplicationFirewallPolicyRuleAction> values = [
    allow,
    anomalyscoring,
    block,
    captcha,
    jschallenge,
    log,
  ];
}

/// Typed helper for the `policy_settings` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicySettings {
  const WebApplicationFirewallPolicySettings({
    this.enabled,
    this.fileUploadEnforcement,
    this.fileUploadLimitInMb,
    this.jsChallengeCookieExpirationInMinutes,
    this.maxRequestBodySizeInKb,
    this.mode,
    this.requestBodyCheck,
    this.requestBodyEnforcement,
    this.requestBodyInspectLimitInKb,
    this.logScrubbing,
  });

  final TfArg<bool>? enabled;

  final TfArg<bool>? fileUploadEnforcement;

  final TfArg<num>? fileUploadLimitInMb;

  final TfArg<num>? jsChallengeCookieExpirationInMinutes;

  final TfArg<num>? maxRequestBodySizeInKb;

  final WebApplicationFirewallPolicyMode? mode;

  final TfArg<bool>? requestBodyCheck;

  final TfArg<bool>? requestBodyEnforcement;

  final TfArg<num>? requestBodyInspectLimitInKb;

  final WebApplicationFirewallPolicyLogScrubbing? logScrubbing;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'file_upload_enforcement': ?fileUploadEnforcement?.toTfJson(),
    'file_upload_limit_in_mb': ?fileUploadLimitInMb?.toTfJson(),
    'js_challenge_cookie_expiration_in_minutes':
        ?jsChallengeCookieExpirationInMinutes?.toTfJson(),
    'max_request_body_size_in_kb': ?maxRequestBodySizeInKb?.toTfJson(),
    'mode': ?mode?.toTfJson(),
    'request_body_check': ?requestBodyCheck?.toTfJson(),
    'request_body_enforcement': ?requestBodyEnforcement?.toTfJson(),
    'request_body_inspect_limit_in_kb': ?requestBodyInspectLimitInKb
        ?.toTfJson(),
    'log_scrubbing': ?logScrubbing?.encode(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  WebApplicationFirewallPolicyMode.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyMode.arg(TfArg<String> arg) : this._(arg);

  static const detection = WebApplicationFirewallPolicyMode._(
    TfArgLiteral('Detection'),
  );
  static const prevention = WebApplicationFirewallPolicyMode._(
    TfArgLiteral('Prevention'),
  );

  static const List<WebApplicationFirewallPolicyMode> values = [
    detection,
    prevention,
  ];
}

/// Typed helper for the `policy_settings.log_scrubbing` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyLogScrubbing {
  const WebApplicationFirewallPolicyLogScrubbing({this.enabled, this.rule});

  final TfArg<bool>? enabled;

  final List<WebApplicationFirewallPolicyRule>? rule;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    if (rule != null) 'rule': [for (final e in rule!) e.encode()],
  };
}

/// Typed helper for the `policy_settings.log_scrubbing.rule` block of
/// `azurerm_web_application_firewall_policy` (derived from provider schema).
@immutable
final class WebApplicationFirewallPolicyRule {
  const WebApplicationFirewallPolicyRule({
    this.enabled,
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
  });

  final TfArg<bool>? enabled;

  final WebApplicationFirewallPolicyRuleMatchVariable matchVariable;

  final TfArg<String>? selector;

  final WebApplicationFirewallPolicyRuleSelectorMatchOperator?
  selectorMatchOperator;

  @internal
  Map<String, Object?> encode() => {
    'enabled': ?enabled?.toTfJson(),
    'match_variable': matchVariable.toTfJson(),
    'selector': ?selector?.toTfJson(),
    'selector_match_operator': ?selectorMatchOperator?.toTfJson(),
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyRuleMatchVariable._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyRuleMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyRuleMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyRuleMatchVariable.arg(TfArg<String> arg)
    : this._(arg);

  static const requestargnames =
      WebApplicationFirewallPolicyRuleMatchVariable._(
        TfArgLiteral('RequestArgNames'),
      );
  static const requestcookienames =
      WebApplicationFirewallPolicyRuleMatchVariable._(
        TfArgLiteral('RequestCookieNames'),
      );
  static const requestheadernames =
      WebApplicationFirewallPolicyRuleMatchVariable._(
        TfArgLiteral('RequestHeaderNames'),
      );
  static const requestipaddress =
      WebApplicationFirewallPolicyRuleMatchVariable._(
        TfArgLiteral('RequestIPAddress'),
      );
  static const requestjsonargnames =
      WebApplicationFirewallPolicyRuleMatchVariable._(
        TfArgLiteral('RequestJSONArgNames'),
      );
  static const requestpostargnames =
      WebApplicationFirewallPolicyRuleMatchVariable._(
        TfArgLiteral('RequestPostArgNames'),
      );

  static const List<WebApplicationFirewallPolicyRuleMatchVariable> values = [
    requestargnames,
    requestcookienames,
    requestheadernames,
    requestipaddress,
    requestjsonargnames,
    requestpostargnames,
  ];
}

/// `selector_match_operator` — derived from the provider schema description.
extension type const WebApplicationFirewallPolicyRuleSelectorMatchOperator._(
  TfArg<String> _
)
    implements TfArg<String> {
  WebApplicationFirewallPolicyRuleSelectorMatchOperator.variable(String name)
    : this._(TfArg.variable(name));
  WebApplicationFirewallPolicyRuleSelectorMatchOperator.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const WebApplicationFirewallPolicyRuleSelectorMatchOperator.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const equals = WebApplicationFirewallPolicyRuleSelectorMatchOperator._(
    TfArgLiteral('Equals'),
  );
  static const equalsany =
      WebApplicationFirewallPolicyRuleSelectorMatchOperator._(
        TfArgLiteral('EqualsAny'),
      );

  static const List<WebApplicationFirewallPolicyRuleSelectorMatchOperator>
  values = [equals, equalsany];
}

/// Factory wrapper for `azurerm_web_application_firewall_policy`.
final class AzurermWebApplicationFirewallPolicy extends Resource {
  static const String tfType = 'azurerm_web_application_firewall_policy';

  AzurermWebApplicationFirewallPolicy(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<WebApplicationFirewallPolicyCustomRules>? customRules,
    required WebApplicationFirewallPolicyManagedRules managedRules,
    WebApplicationFirewallPolicySettings? policySettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (customRules != null)
             'custom_rules': TfArg.literal([
               for (final e in customRules) e.encode(),
             ]),
           'managed_rules': TfArg.literal(managedRules.encode()),
           if (policySettings != null)
             'policy_settings': TfArg.literal(policySettings.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermWebApplicationFirewallPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermWebApplicationFirewallPolicy>`.
  RefTo<AzurermWebApplicationFirewallPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `http_listener_ids` attribute.
  TfRef<List<String>> get httpListenerIds =>
      TfRef.attribute<List<String>>(this, 'http_listener_ids');

  /// Reference to `path_based_rule_ids` attribute.
  TfRef<List<String>> get pathBasedRuleIds =>
      TfRef.attribute<List<String>>(this, 'path_based_rule_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
