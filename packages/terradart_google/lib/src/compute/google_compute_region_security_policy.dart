// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/compute/google_compute_security_policy.dart'
    show
        SecurityPolicyRuleMatchVersionedExpr,
        SecurityPolicyRuleRateLimitEnforceOnKey,
        SecurityPolicyWafExclusionOperator,
        SecurityPolicyLogLevel;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_security_policy`.
const Set<String> _googleComputeRegionSecurityPolicySensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

enum RegionSecurityPolicyType implements TerraformEnum {
  cloudArmor('CLOUD_ARMOR'),
  cloudArmorEdge('CLOUD_ARMOR_EDGE'),
  cloudArmorNetwork('CLOUD_ARMOR_NETWORK');

  const RegionSecurityPolicyType(this.terraformValue);
  @override
  final String terraformValue;
}

/// `advanced_options_config.json_parsing` -- JSON body parsing mode for
/// preconfigured WAF evaluation. Regional policies also support GraphQL
/// body parsing via [standardWithGraphql].
enum RegionSecurityPolicyJsonParsing implements TerraformEnum {
  disabled('DISABLED'),
  standard('STANDARD'),
  standardWithGraphql('STANDARD_WITH_GRAPHQL');

  const RegionSecurityPolicyJsonParsing(this.terraformValue);
  @override
  final String terraformValue;
}

/// `ddos_protection_config.ddos_protection` -- DDoS protection tier for
/// network load balancing policies.
enum RegionSecurityPolicyDdosProtection implements TerraformEnum {
  advanced('ADVANCED'),
  advancedPreview('ADVANCED_PREVIEW'),
  standard('STANDARD');

  const RegionSecurityPolicyDdosProtection(this.terraformValue);
  @override
  final String terraformValue;
}

/// `user_defined_fields.base` -- header anchor for a user-defined match
/// field in CLOUD_ARMOR_NETWORK policies.
enum RegionSecurityPolicyUserDefinedFieldBase implements TerraformEnum {
  ipv4('IPV4'),
  ipv6('IPV6'),
  tcp('TCP'),
  udp('UDP');

  const RegionSecurityPolicyUserDefinedFieldBase(this.terraformValue);
  @override
  final String terraformValue;
}

// ===========================================================================
// rules[] -- policy rules (embedded, not the standalone rule resource)
// ===========================================================================

/// One entry in `rules[]`. Rules are evaluated from highest priority
/// (lowest numeric value) to lowest priority. Cloud Armor REQUIRES a
/// default rule at priority `2147483647` matching all traffic (`'*'`) --
/// if you omit it the provider injects one with action `allow`.
@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRule {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRule({
    required this.priority,
    required this.action,
    required this.match,
    this.description,
    this.preview,
    this.rateLimitOptions,
    this.preconfiguredWafConfig,
  });

  final TfArg<int> priority;

  /// Provider action string (`allow`, `deny(403)`, `rate_based_ban`,
  /// `throttle`, ...). `redirect` is not supported on regional policies.
  final TfArg<String> action;

  final ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch match;

  final TfArg<String>? description;
  final TfArg<bool>? preview;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitOptions?
  rateLimitOptions;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafConfig?
  preconfiguredWafConfig;

  Map<String, Object?> toArgMap() => {
    'priority': priority.toTfJson(),
    'action': action.toTfJson(),
    'match': [match.toArgMap()],
    if (description != null) 'description': description!.toTfJson(),
    if (preview != null) 'preview': preview!.toTfJson(),
    if (rateLimitOptions != null)
      'rate_limit_options': [rateLimitOptions!.toArgMap()],
    if (preconfiguredWafConfig != null)
      'preconfigured_waf_config': [preconfiguredWafConfig!.toArgMap()],
  };
}

/// `rules.match` -- mutually-exclusive [config] (versioned predicate) or
/// [expr] (CEL) variants.
@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch._({
    this.versionedExpr,
    this.config,
    this.expr,
  });

  factory ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch.config({
    required SecurityPolicyRuleMatchVersionedExpr versionedExpr,
    required ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchConfig
    config,
  }) => ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch._(
    versionedExpr: versionedExpr,
    config: config,
  );

  factory ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch.expr(
    ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchExpr expr,
  ) => ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatch._(expr: expr);

  final SecurityPolicyRuleMatchVersionedExpr? versionedExpr;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchConfig? config;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchExpr? expr;

  Map<String, Object?> toArgMap() => {
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.terraformValue,
    if (config != null) 'config': [config!.toArgMap()],
    if (expr != null) 'expr': [expr!.toArgMap()],
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchConfig {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchConfig({
    required this.srcIpRanges,
  });

  final List<String> srcIpRanges;

  Map<String, Object?> toArgMap() => {'src_ip_ranges': srcIpRanges};
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchExpr {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  final TfArg<String> expression;

  Map<String, Object?> toArgMap() => {'expression': expression.toTfJson()};
}

/// `rules.rate_limit_options` -- required when [action] is
/// `rate_based_ban` or `throttle`.
@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitOptions {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitOptions({
    required this.conformAction,
    required this.exceedAction,
    required this.rateLimitThreshold,
    this.banDurationSec,
    this.banThreshold,
    this.enforceOnKey,
    this.enforceOnKeyName,
    this.enforceOnKeyConfigs,
  });

  final TfArg<String> conformAction;
  final TfArg<String> exceedAction;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitThreshold
  rateLimitThreshold;
  final TfArg<int>? banDurationSec;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitThreshold?
  banThreshold;
  final SecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKey;
  final TfArg<String>? enforceOnKeyName;
  final List<
    ComputeRegionSecurityPolicyRegionSecurityPolicyRuleEnforceOnKeyConfig
  >?
  enforceOnKeyConfigs;

  Map<String, Object?> toArgMap() => {
    'conform_action': conformAction.toTfJson(),
    'exceed_action': exceedAction.toTfJson(),
    'rate_limit_threshold': [rateLimitThreshold.toArgMap()],
    if (banDurationSec != null) 'ban_duration_sec': banDurationSec!.toTfJson(),
    if (banThreshold != null) 'ban_threshold': [banThreshold!.toArgMap()],
    if (enforceOnKey != null) 'enforce_on_key': enforceOnKey!.terraformValue,
    if (enforceOnKeyName != null)
      'enforce_on_key_name': enforceOnKeyName!.toTfJson(),
    if (enforceOnKeyConfigs != null)
      'enforce_on_key_configs': enforceOnKeyConfigs!
          .map((c) => c.toArgMap())
          .toList(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitThreshold {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRuleRateLimitThreshold({
    required this.count,
    required this.intervalSec,
  });

  final TfArg<int> count;
  final TfArg<int> intervalSec;

  Map<String, Object?> toArgMap() => {
    'count': count.toTfJson(),
    'interval_sec': intervalSec.toTfJson(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRuleEnforceOnKeyConfig {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRuleEnforceOnKeyConfig({
    this.enforceOnKeyType,
    this.enforceOnKeyName,
  });

  final SecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKeyType;
  final TfArg<String>? enforceOnKeyName;

  Map<String, Object?> toArgMap() => {
    if (enforceOnKeyType != null)
      'enforce_on_key_type': enforceOnKeyType!.terraformValue,
    if (enforceOnKeyName != null)
      'enforce_on_key_name': enforceOnKeyName!.toTfJson(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafConfig {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafConfig({
    this.exclusion,
  });

  final List<
    ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusion
  >?
  exclusion;

  Map<String, Object?> toArgMap() => {
    if (exclusion != null)
      'exclusion': exclusion!.map((e) => e.toArgMap()).toList(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusion {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusion({
    required this.targetRuleSet,
    this.targetRuleIds,
    this.requestCookie,
    this.requestHeader,
    this.requestQueryParam,
    this.requestUri,
  });

  final TfArg<String> targetRuleSet;
  final List<String>? targetRuleIds;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestCookie;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestHeader;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestQueryParam;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestUri;

  Map<String, Object?> toArgMap() => {
    'target_rule_set': targetRuleSet.toTfJson(),
    if (targetRuleIds != null) 'target_rule_ids': targetRuleIds,
    if (requestCookie != null) 'request_cookie': [requestCookie!.toArgMap()],
    if (requestHeader != null) 'request_header': [requestHeader!.toArgMap()],
    if (requestQueryParam != null)
      'request_query_param': [requestQueryParam!.toArgMap()],
    if (requestUri != null) 'request_uri': [requestUri!.toArgMap()],
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyRulePreconfiguredWafExclusionMatch({
    required this.operator,
    this.value,
  });

  final SecurityPolicyWafExclusionOperator operator;
  final TfArg<String>? value;

  Map<String, Object?> toArgMap() => {
    'operator': operator.terraformValue,
    if (value != null) 'value': value!.toTfJson(),
  };
}

// ===========================================================================
// advanced_options_config (single block, max_items=1)
// ===========================================================================

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyAdvancedOptionsConfig {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyAdvancedOptionsConfig({
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
    this.jsonCustomConfig,
  });

  final RegionSecurityPolicyJsonParsing? jsonParsing;
  final SecurityPolicyLogLevel? logLevel;
  final List<String>? userIpRequestHeaders;
  final ComputeRegionSecurityPolicyRegionSecurityPolicyJsonCustomConfig?
  jsonCustomConfig;

  Map<String, Object?> toArgMap() => {
    if (jsonParsing != null) 'json_parsing': jsonParsing!.terraformValue,
    if (logLevel != null) 'log_level': logLevel!.terraformValue,
    if (userIpRequestHeaders != null)
      'user_ip_request_headers': userIpRequestHeaders,
    if (jsonCustomConfig != null)
      'json_custom_config': [jsonCustomConfig!.toArgMap()],
  };
}

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyJsonCustomConfig {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyJsonCustomConfig({
    required this.contentTypes,
  });

  final List<String> contentTypes;

  Map<String, Object?> toArgMap() => {'content_types': contentTypes};
}

// ===========================================================================
// ddos_protection_config (single block, max_items=1)
// ===========================================================================

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyDdosProtectionConfig {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyDdosProtectionConfig({
    required this.ddosProtection,
  });

  final RegionSecurityPolicyDdosProtection ddosProtection;

  Map<String, Object?> toArgMap() => {
    'ddos_protection': ddosProtection.terraformValue,
  };
}

// ===========================================================================
// user_defined_fields[] -- CLOUD_ARMOR_NETWORK packet field definitions
// ===========================================================================

@immutable
class ComputeRegionSecurityPolicyRegionSecurityPolicyUserDefinedField {
  const ComputeRegionSecurityPolicyRegionSecurityPolicyUserDefinedField({
    required this.base,
    this.mask,
    this.name,
    this.offset,
    this.size,
  });

  final RegionSecurityPolicyUserDefinedFieldBase base;
  final TfArg<String>? mask;
  final TfArg<String>? name;
  final TfArg<int>? offset;
  final TfArg<int>? size;

  Map<String, Object?> toArgMap() => {
    'base': base.terraformValue,
    if (mask != null) 'mask': mask!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (offset != null) 'offset': offset!.toTfJson(),
    if (size != null) 'size': size!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_security_policy`.
final class GoogleComputeRegionSecurityPolicy extends Resource {
  static const String tfType = 'google_compute_region_security_policy';

  GoogleComputeRegionSecurityPolicy({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<RegionSecurityPolicyType>? type,
    ComputeRegionSecurityPolicyRegionSecurityPolicyAdvancedOptionsConfig?
    advancedOptionsConfig,
    ComputeRegionSecurityPolicyRegionSecurityPolicyDdosProtectionConfig?
    ddosProtectionConfig,
    required List<ComputeRegionSecurityPolicyRegionSecurityPolicyRule> rules,
    List<ComputeRegionSecurityPolicyRegionSecurityPolicyUserDefinedField>?
    userDefinedFields,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (type != null) 'type': type,
           if (advancedOptionsConfig != null)
             'advanced_options_config': TfArg.literal([
               advancedOptionsConfig.toArgMap(),
             ]),
           if (ddosProtectionConfig != null)
             'ddos_protection_config': TfArg.literal([
               ddosProtectionConfig.toArgMap(),
             ]),
           'rules': TfArg.literal(rules.map((r) => r.toArgMap()).toList()),
           if (userDefinedFields != null)
             'user_defined_fields': TfArg.literal(
               userDefinedFields.map((f) => f.toArgMap()).toList(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSecurityPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `policy_id` attribute.
  TfRef<String> get policyId => TfRef.attribute<String>(this, 'policy_id');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_policy_id` attribute.
  TfRef<String> get selfLinkWithPolicyId =>
      TfRef.attribute<String>(this, 'self_link_with_policy_id');
}
