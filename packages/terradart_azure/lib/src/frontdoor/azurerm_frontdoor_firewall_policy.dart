// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_frontdoor_firewall_policy`.
const Set<String> _azurermFrontdoorFirewallPolicySensitive = <String>{};

/// Frontdoor Firewall Policy enum for `mode`.
extension type const FrontdoorFirewallPolicyMode._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorFirewallPolicyMode.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyMode.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyMode.arg(TfArg<String> arg) : this._(arg);

  static const detection = FrontdoorFirewallPolicyMode._(
    TfArgLiteral('Detection'),
  );
  static const prevention = FrontdoorFirewallPolicyMode._(
    TfArgLiteral('Prevention'),
  );

  static const List<FrontdoorFirewallPolicyMode> values = [
    detection,
    prevention,
  ];
}

/// Typed helper for the `custom_rule` block of
/// `azurerm_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class FrontdoorFirewallPolicyCustomRule {
  const FrontdoorFirewallPolicyCustomRule({
    required this.action,
    this.enabled,
    required this.name,
    this.priority,
    this.rateLimitDurationInMinutes,
    this.rateLimitThreshold,
    required this.type,
    this.matchCondition,
  });

  final FrontdoorFirewallPolicyAction action;

  final TfArg<bool>? enabled;

  final TfArg<String> name;

  final TfArg<num>? priority;

  final TfArg<num>? rateLimitDurationInMinutes;

  final TfArg<num>? rateLimitThreshold;

  final FrontdoorFirewallPolicyType type;

  final List<FrontdoorFirewallPolicyMatchCondition>? matchCondition;

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

/// `action` — derived from the provider schema description.
extension type const FrontdoorFirewallPolicyAction._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorFirewallPolicyAction.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyAction.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyAction.arg(TfArg<String> arg) : this._(arg);

  static const allow = FrontdoorFirewallPolicyAction._(TfArgLiteral('Allow'));
  static const block = FrontdoorFirewallPolicyAction._(TfArgLiteral('Block'));
  static const log = FrontdoorFirewallPolicyAction._(TfArgLiteral('Log'));
  static const redirect = FrontdoorFirewallPolicyAction._(
    TfArgLiteral('Redirect'),
  );

  static const List<FrontdoorFirewallPolicyAction> values = [
    allow,
    block,
    log,
    redirect,
  ];
}

/// `type` — derived from the provider schema description.
extension type const FrontdoorFirewallPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorFirewallPolicyType.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const matchrule = FrontdoorFirewallPolicyType._(
    TfArgLiteral('MatchRule'),
  );
  static const ratelimitrule = FrontdoorFirewallPolicyType._(
    TfArgLiteral('RateLimitRule'),
  );

  static const List<FrontdoorFirewallPolicyType> values = [
    matchrule,
    ratelimitrule,
  ];
}

/// Typed helper for the `custom_rule.match_condition` block of
/// `azurerm_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class FrontdoorFirewallPolicyMatchCondition {
  const FrontdoorFirewallPolicyMatchCondition({
    required this.matchValues,
    required this.matchVariable,
    this.negationCondition,
    required this.operator,
    this.selector,
    this.transforms,
  });

  final TfArg<List<String>> matchValues;

  final FrontdoorFirewallPolicyMatchConditionMatchVariable matchVariable;

  final TfArg<bool>? negationCondition;

  final FrontdoorFirewallPolicyMatchConditionOperator operator;

  final TfArg<String>? selector;

  final EnumList<FrontdoorFirewallPolicyTransforms>? transforms;

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

/// `match_variable` — derived from the provider schema description.
extension type const FrontdoorFirewallPolicyMatchConditionMatchVariable._(
  TfArg<String> _
) implements TfArg<String> {
  FrontdoorFirewallPolicyMatchConditionMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyMatchConditionMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyMatchConditionMatchVariable.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const cookies = FrontdoorFirewallPolicyMatchConditionMatchVariable._(
    TfArgLiteral('Cookies'),
  );
  static const postargs = FrontdoorFirewallPolicyMatchConditionMatchVariable._(
    TfArgLiteral('PostArgs'),
  );
  static const querystring =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('QueryString'),
      );
  static const remoteaddr =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RemoteAddr'),
      );
  static const requestbody =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestBody'),
      );
  static const requestheader =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestHeader'),
      );
  static const requestmethod =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestMethod'),
      );
  static const requesturi =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('RequestUri'),
      );
  static const socketaddr =
      FrontdoorFirewallPolicyMatchConditionMatchVariable._(
        TfArgLiteral('SocketAddr'),
      );

  static const List<FrontdoorFirewallPolicyMatchConditionMatchVariable> values =
      [
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
extension type const FrontdoorFirewallPolicyMatchConditionOperator._(
  TfArg<String> _
) implements TfArg<String> {
  FrontdoorFirewallPolicyMatchConditionOperator.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyMatchConditionOperator.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyMatchConditionOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const any = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('Any'),
  );
  static const beginswith = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('BeginsWith'),
  );
  static const contains = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equal = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('Equal'),
  );
  static const geomatch = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('GeoMatch'),
  );
  static const greaterthan = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('GreaterThan'),
  );
  static const greaterthanorequal =
      FrontdoorFirewallPolicyMatchConditionOperator._(
        TfArgLiteral('GreaterThanOrEqual'),
      );
  static const ipmatch = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('IPMatch'),
  );
  static const lessthan = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('LessThan'),
  );
  static const lessthanorequal =
      FrontdoorFirewallPolicyMatchConditionOperator._(
        TfArgLiteral('LessThanOrEqual'),
      );
  static const regex = FrontdoorFirewallPolicyMatchConditionOperator._(
    TfArgLiteral('RegEx'),
  );

  static const List<FrontdoorFirewallPolicyMatchConditionOperator> values = [
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
extension type const FrontdoorFirewallPolicyTransforms._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorFirewallPolicyTransforms.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyTransforms.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyTransforms.arg(TfArg<String> arg) : this._(arg);

  static const lowercase = FrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('Lowercase'),
  );
  static const removenulls = FrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('RemoveNulls'),
  );
  static const trim = FrontdoorFirewallPolicyTransforms._(TfArgLiteral('Trim'));
  static const urldecode = FrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('UrlDecode'),
  );
  static const urlencode = FrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('UrlEncode'),
  );
  static const uppercase = FrontdoorFirewallPolicyTransforms._(
    TfArgLiteral('Uppercase'),
  );

  static const List<FrontdoorFirewallPolicyTransforms> values = [
    lowercase,
    removenulls,
    trim,
    urldecode,
    urlencode,
    uppercase,
  ];
}

/// Typed helper for the `managed_rule` block of
/// `azurerm_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class FrontdoorFirewallPolicyManagedRule {
  const FrontdoorFirewallPolicyManagedRule({
    required this.type,
    required this.version,
    this.exclusion,
    this.override,
  });

  final TfArg<String> type;

  final TfArg<String> version;

  final List<FrontdoorFirewallPolicyExclusion>? exclusion;

  final List<FrontdoorFirewallPolicyOverride>? override;

  @internal
  Map<String, Object?> encode() => {
    'type': type.toTfJson(),
    'version': version.toTfJson(),
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
    if (override != null) 'override': [for (final e in override!) e.encode()],
  };
}

/// Typed helper for the `managed_rule.exclusion` block of
/// `azurerm_frontdoor_firewall_policy` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class FrontdoorFirewallPolicyExclusion {
  const FrontdoorFirewallPolicyExclusion({
    required this.matchVariable,
    required this.operator,
    required this.selector,
  });

  final FrontdoorFirewallPolicyExclusionMatchVariable matchVariable;

  final FrontdoorFirewallPolicyExclusionOperator operator;

  final TfArg<String> selector;

  @internal
  Map<String, Object?> encode() => {
    'match_variable': matchVariable.toTfJson(),
    'operator': operator.toTfJson(),
    'selector': selector.toTfJson(),
  };
}

/// `match_variable` — derived from the provider schema description.
extension type const FrontdoorFirewallPolicyExclusionMatchVariable._(
  TfArg<String> _
) implements TfArg<String> {
  FrontdoorFirewallPolicyExclusionMatchVariable.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyExclusionMatchVariable.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyExclusionMatchVariable.arg(TfArg<String> arg)
    : this._(arg);

  static const querystringargnames =
      FrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('QueryStringArgNames'),
      );
  static const requestbodypostargnames =
      FrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestBodyPostArgNames'),
      );
  static const requestcookienames =
      FrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestCookieNames'),
      );
  static const requestheadernames =
      FrontdoorFirewallPolicyExclusionMatchVariable._(
        TfArgLiteral('RequestHeaderNames'),
      );

  static const List<FrontdoorFirewallPolicyExclusionMatchVariable> values = [
    querystringargnames,
    requestbodypostargnames,
    requestcookienames,
    requestheadernames,
  ];
}

/// `operator` — derived from the provider schema description.
extension type const FrontdoorFirewallPolicyExclusionOperator._(TfArg<String> _)
    implements TfArg<String> {
  FrontdoorFirewallPolicyExclusionOperator.variable(String name)
    : this._(TfArg.variable(name));
  FrontdoorFirewallPolicyExclusionOperator.expression(String template)
    : this._(TfArg.expression(template));
  const FrontdoorFirewallPolicyExclusionOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const contains = FrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('Contains'),
  );
  static const endswith = FrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('EndsWith'),
  );
  static const equals = FrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('Equals'),
  );
  static const equalsany = FrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('EqualsAny'),
  );
  static const startswith = FrontdoorFirewallPolicyExclusionOperator._(
    TfArgLiteral('StartsWith'),
  );

  static const List<FrontdoorFirewallPolicyExclusionOperator> values = [
    contains,
    endswith,
    equals,
    equalsany,
    startswith,
  ];
}

/// Typed helper for the `managed_rule.override` block of
/// `azurerm_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class FrontdoorFirewallPolicyOverride {
  const FrontdoorFirewallPolicyOverride({
    required this.ruleGroupName,
    this.exclusion,
    this.rule,
  });

  final TfArg<String> ruleGroupName;

  final List<FrontdoorFirewallPolicyExclusion>? exclusion;

  final List<FrontdoorFirewallPolicyRule>? rule;

  @internal
  Map<String, Object?> encode() => {
    'rule_group_name': ruleGroupName.toTfJson(),
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
    if (rule != null) 'rule': [for (final e in rule!) e.encode()],
  };
}

/// Typed helper for the `managed_rule.override.rule` block of
/// `azurerm_frontdoor_firewall_policy` (derived from provider schema).
@immutable
final class FrontdoorFirewallPolicyRule {
  const FrontdoorFirewallPolicyRule({
    required this.action,
    this.enabled,
    required this.ruleId,
    this.exclusion,
  });

  final FrontdoorFirewallPolicyAction action;

  final TfArg<bool>? enabled;

  final TfArg<String> ruleId;

  final List<FrontdoorFirewallPolicyExclusion>? exclusion;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'rule_id': ruleId.toTfJson(),
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// Factory wrapper for `azurerm_frontdoor_firewall_policy`.
final class AzurermFrontdoorFirewallPolicy extends Resource {
  static const String tfType = 'azurerm_frontdoor_firewall_policy';

  AzurermFrontdoorFirewallPolicy(
    super.localName, {
    TfArg<String>? customBlockResponseBody,
    TfArg<num>? customBlockResponseStatusCode,
    TfArg<bool>? enabled,
    FrontdoorFirewallPolicyMode? mode,
    required TfArg<String> name,
    TfArg<String>? redirectUrl,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    List<FrontdoorFirewallPolicyCustomRule>? customRule,
    List<FrontdoorFirewallPolicyManagedRule>? managedRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'custom_block_response_body': ?customBlockResponseBody,
           'custom_block_response_status_code': ?customBlockResponseStatusCode,
           'enabled': ?enabled,
           'mode': ?mode,
           'name': name,
           'redirect_url': ?redirectUrl,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
           if (customRule != null)
             'custom_rule': TfArg.literal([
               for (final e in customRule) e.encode(),
             ]),
           if (managedRule != null)
             'managed_rule': TfArg.literal([
               for (final e in managedRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermFrontdoorFirewallPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermFrontdoorFirewallPolicy>`.
  RefTo<AzurermFrontdoorFirewallPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `frontend_endpoint_ids` attribute.
  TfRef<List<String>> get frontendEndpointIds =>
      TfRef.attribute<List<String>>(this, 'frontend_endpoint_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `custom_block_response_body` attribute.
  TfRef<String> get customBlockResponseBody =>
      TfRef.attribute<String>(this, 'custom_block_response_body');

  /// Reference to `custom_block_response_status_code` attribute.
  TfRef<num> get customBlockResponseStatusCode =>
      TfRef.attribute<num>(this, 'custom_block_response_status_code');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `redirect_url` attribute.
  TfRef<String> get redirectUrl =>
      TfRef.attribute<String>(this, 'redirect_url');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
