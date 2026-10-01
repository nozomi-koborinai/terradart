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

extension type const RegionSecurityPolicyType._(TfArg<String> _)
    implements TfArg<String> {
  RegionSecurityPolicyType.variable(String name) : this._(TfArg.variable(name));
  RegionSecurityPolicyType.expression(String template)
    : this._(TfArg.expression(template));
  const RegionSecurityPolicyType.arg(TfArg<String> arg) : this._(arg);

  static const cloudArmor = RegionSecurityPolicyType._(
    TfArgLiteral('CLOUD_ARMOR'),
  );
  static const cloudArmorEdge = RegionSecurityPolicyType._(
    TfArgLiteral('CLOUD_ARMOR_EDGE'),
  );
  static const cloudArmorNetwork = RegionSecurityPolicyType._(
    TfArgLiteral('CLOUD_ARMOR_NETWORK'),
  );

  static const List<RegionSecurityPolicyType> values = [
    cloudArmor,
    cloudArmorEdge,
    cloudArmorNetwork,
  ];
}

/// `advanced_options_config.json_parsing` -- JSON body parsing mode for
/// preconfigured WAF evaluation. Regional policies also support GraphQL
/// body parsing via [standardWithGraphql].
extension type const RegionSecurityPolicyJsonParsing._(TfArg<String> _)
    implements TfArg<String> {
  RegionSecurityPolicyJsonParsing.variable(String name)
    : this._(TfArg.variable(name));
  RegionSecurityPolicyJsonParsing.expression(String template)
    : this._(TfArg.expression(template));
  const RegionSecurityPolicyJsonParsing.arg(TfArg<String> arg) : this._(arg);

  static const disabled = RegionSecurityPolicyJsonParsing._(
    TfArgLiteral('DISABLED'),
  );
  static const standard = RegionSecurityPolicyJsonParsing._(
    TfArgLiteral('STANDARD'),
  );
  static const standardWithGraphql = RegionSecurityPolicyJsonParsing._(
    TfArgLiteral('STANDARD_WITH_GRAPHQL'),
  );

  static const List<RegionSecurityPolicyJsonParsing> values = [
    disabled,
    standard,
    standardWithGraphql,
  ];
}

/// `ddos_protection_config.ddos_protection` -- DDoS protection tier for
/// network load balancing policies.
extension type const RegionSecurityPolicyDdosProtection._(TfArg<String> _)
    implements TfArg<String> {
  RegionSecurityPolicyDdosProtection.variable(String name)
    : this._(TfArg.variable(name));
  RegionSecurityPolicyDdosProtection.expression(String template)
    : this._(TfArg.expression(template));
  const RegionSecurityPolicyDdosProtection.arg(TfArg<String> arg) : this._(arg);

  static const advanced = RegionSecurityPolicyDdosProtection._(
    TfArgLiteral('ADVANCED'),
  );
  static const advancedPreview = RegionSecurityPolicyDdosProtection._(
    TfArgLiteral('ADVANCED_PREVIEW'),
  );
  static const standard = RegionSecurityPolicyDdosProtection._(
    TfArgLiteral('STANDARD'),
  );

  static const List<RegionSecurityPolicyDdosProtection> values = [
    advanced,
    advancedPreview,
    standard,
  ];
}

/// `user_defined_fields.base` -- header anchor for a user-defined match
/// field in CLOUD_ARMOR_NETWORK policies.
extension type const RegionSecurityPolicyUserDefinedFieldBase._(TfArg<String> _)
    implements TfArg<String> {
  RegionSecurityPolicyUserDefinedFieldBase.variable(String name)
    : this._(TfArg.variable(name));
  RegionSecurityPolicyUserDefinedFieldBase.expression(String template)
    : this._(TfArg.expression(template));
  const RegionSecurityPolicyUserDefinedFieldBase.arg(TfArg<String> arg)
    : this._(arg);

  static const ipv4 = RegionSecurityPolicyUserDefinedFieldBase._(
    TfArgLiteral('IPV4'),
  );
  static const ipv6 = RegionSecurityPolicyUserDefinedFieldBase._(
    TfArgLiteral('IPV6'),
  );
  static const tcp = RegionSecurityPolicyUserDefinedFieldBase._(
    TfArgLiteral('TCP'),
  );
  static const udp = RegionSecurityPolicyUserDefinedFieldBase._(
    TfArgLiteral('UDP'),
  );

  static const List<RegionSecurityPolicyUserDefinedFieldBase> values = [
    ipv4,
    ipv6,
    tcp,
    udp,
  ];
}

// ===========================================================================
// rules[] -- policy rules (embedded, not the standalone rule resource)
// ===========================================================================

/// One entry in `rules[]`. Rules are evaluated from highest priority
/// (lowest numeric value) to lowest priority. Cloud Armor REQUIRES a
/// default rule at priority `2147483647` matching all traffic (`'*'`) --
/// if you omit it the provider injects one with action `allow`.
@immutable
class ComputeRegionSecurityPolicyRules {
  const ComputeRegionSecurityPolicyRules({
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

  final ComputeRegionSecurityPolicyRulesMatch match;

  final TfArg<String>? description;
  final TfArg<bool>? preview;
  final ComputeRegionSecurityPolicyRulesRateLimitOptions? rateLimitOptions;
  final ComputeRegionSecurityPolicyRulesPreconfiguredWafConfig?
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
class ComputeRegionSecurityPolicyRulesMatch {
  const ComputeRegionSecurityPolicyRulesMatch._({
    this.versionedExpr,
    this.config,
    this.expr,
  });

  factory ComputeRegionSecurityPolicyRulesMatch.config({
    required SecurityPolicyRuleMatchVersionedExpr versionedExpr,
    required ComputeRegionSecurityPolicyRulesMatchConfig config,
  }) => ComputeRegionSecurityPolicyRulesMatch._(
    versionedExpr: versionedExpr,
    config: config,
  );

  factory ComputeRegionSecurityPolicyRulesMatch.expr(
    ComputeRegionSecurityPolicyRulesMatchExpr expr,
  ) => ComputeRegionSecurityPolicyRulesMatch._(expr: expr);

  final SecurityPolicyRuleMatchVersionedExpr? versionedExpr;
  final ComputeRegionSecurityPolicyRulesMatchConfig? config;
  final ComputeRegionSecurityPolicyRulesMatchExpr? expr;

  Map<String, Object?> toArgMap() => {
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.toTfJson(),
    if (config != null) 'config': [config!.toArgMap()],
    if (expr != null) 'expr': [expr!.toArgMap()],
  };
}

@immutable
class ComputeRegionSecurityPolicyRulesMatchConfig {
  const ComputeRegionSecurityPolicyRulesMatchConfig({
    required this.srcIpRanges,
  });

  final List<String> srcIpRanges;

  Map<String, Object?> toArgMap() => {'src_ip_ranges': srcIpRanges};
}

@immutable
class ComputeRegionSecurityPolicyRulesMatchExpr {
  const ComputeRegionSecurityPolicyRulesMatchExpr({required this.expression});

  final TfArg<String> expression;

  Map<String, Object?> toArgMap() => {'expression': expression.toTfJson()};
}

/// `rules.rate_limit_options` -- required when [action] is
/// `rate_based_ban` or `throttle`.
@immutable
class ComputeRegionSecurityPolicyRulesRateLimitOptions {
  const ComputeRegionSecurityPolicyRulesRateLimitOptions({
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
  final ComputeRegionSecurityPolicyRulesRateLimitThreshold rateLimitThreshold;
  final TfArg<int>? banDurationSec;
  final ComputeRegionSecurityPolicyRulesRateLimitThreshold? banThreshold;
  final SecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKey;
  final TfArg<String>? enforceOnKeyName;
  final List<ComputeRegionSecurityPolicyRulesEnforceOnKeyConfig>?
  enforceOnKeyConfigs;

  Map<String, Object?> toArgMap() => {
    'conform_action': conformAction.toTfJson(),
    'exceed_action': exceedAction.toTfJson(),
    'rate_limit_threshold': [rateLimitThreshold.toArgMap()],
    if (banDurationSec != null) 'ban_duration_sec': banDurationSec!.toTfJson(),
    if (banThreshold != null) 'ban_threshold': [banThreshold!.toArgMap()],
    if (enforceOnKey != null) 'enforce_on_key': enforceOnKey!.toTfJson(),
    if (enforceOnKeyName != null)
      'enforce_on_key_name': enforceOnKeyName!.toTfJson(),
    if (enforceOnKeyConfigs != null)
      'enforce_on_key_configs': enforceOnKeyConfigs!
          .map((c) => c.toArgMap())
          .toList(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRulesRateLimitThreshold {
  const ComputeRegionSecurityPolicyRulesRateLimitThreshold({
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
class ComputeRegionSecurityPolicyRulesEnforceOnKeyConfig {
  const ComputeRegionSecurityPolicyRulesEnforceOnKeyConfig({
    this.enforceOnKeyType,
    this.enforceOnKeyName,
  });

  final SecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKeyType;
  final TfArg<String>? enforceOnKeyName;

  Map<String, Object?> toArgMap() => {
    if (enforceOnKeyType != null)
      'enforce_on_key_type': enforceOnKeyType!.toTfJson(),
    if (enforceOnKeyName != null)
      'enforce_on_key_name': enforceOnKeyName!.toTfJson(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRulesPreconfiguredWafConfig {
  const ComputeRegionSecurityPolicyRulesPreconfiguredWafConfig({
    this.exclusion,
  });

  final List<ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusion>?
  exclusion;

  Map<String, Object?> toArgMap() => {
    if (exclusion != null)
      'exclusion': exclusion!.map((e) => e.toArgMap()).toList(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusion {
  const ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusion({
    required this.targetRuleSet,
    this.targetRuleIds,
    this.requestCookie,
    this.requestHeader,
    this.requestQueryParam,
    this.requestUri,
  });

  final TfArg<String> targetRuleSet;
  final List<String>? targetRuleIds;
  final ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusionMatch?
  requestCookie;
  final ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusionMatch?
  requestHeader;
  final ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusionMatch?
  requestQueryParam;
  final ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusionMatch?
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
class ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusionMatch {
  const ComputeRegionSecurityPolicyRulesPreconfiguredWafExclusionMatch({
    required this.operator,
    this.value,
  });

  final SecurityPolicyWafExclusionOperator operator;
  final TfArg<String>? value;

  Map<String, Object?> toArgMap() => {
    'operator': operator.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

// ===========================================================================
// advanced_options_config (single block, max_items=1)
// ===========================================================================

@immutable
class ComputeRegionSecurityPolicyAdvancedOptionsConfig {
  const ComputeRegionSecurityPolicyAdvancedOptionsConfig({
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
    this.jsonCustomConfig,
  });

  final RegionSecurityPolicyJsonParsing? jsonParsing;
  final SecurityPolicyLogLevel? logLevel;
  final List<String>? userIpRequestHeaders;
  final ComputeRegionSecurityPolicyJsonCustomConfig? jsonCustomConfig;

  Map<String, Object?> toArgMap() => {
    if (jsonParsing != null) 'json_parsing': jsonParsing!.toTfJson(),
    if (logLevel != null) 'log_level': logLevel!.toTfJson(),
    if (userIpRequestHeaders != null)
      'user_ip_request_headers': userIpRequestHeaders,
    if (jsonCustomConfig != null)
      'json_custom_config': [jsonCustomConfig!.toArgMap()],
  };
}

@immutable
class ComputeRegionSecurityPolicyJsonCustomConfig {
  const ComputeRegionSecurityPolicyJsonCustomConfig({
    required this.contentTypes,
  });

  final List<String> contentTypes;

  Map<String, Object?> toArgMap() => {'content_types': contentTypes};
}

// ===========================================================================
// ddos_protection_config (single block, max_items=1)
// ===========================================================================

@immutable
class ComputeRegionSecurityPolicyDdosProtectionConfig {
  const ComputeRegionSecurityPolicyDdosProtectionConfig({
    required this.ddosProtection,
  });

  final RegionSecurityPolicyDdosProtection ddosProtection;

  Map<String, Object?> toArgMap() => {
    'ddos_protection': ddosProtection.toTfJson(),
  };
}

// ===========================================================================
// user_defined_fields[] -- CLOUD_ARMOR_NETWORK packet field definitions
// ===========================================================================

@immutable
class ComputeRegionSecurityPolicyUserDefinedField {
  const ComputeRegionSecurityPolicyUserDefinedField({
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
    'base': base.toTfJson(),
    if (mask != null) 'mask': mask!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
    if (offset != null) 'offset': offset!.toTfJson(),
    if (size != null) 'size': size!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_security_policy`.
///
/// Represents a Region Cloud Armor Security Policy resource.
final class GoogleComputeRegionSecurityPolicy extends Resource {
  static const String tfType = 'google_compute_region_security_policy';

  GoogleComputeRegionSecurityPolicy(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    RegionSecurityPolicyType? type,
    ComputeRegionSecurityPolicyAdvancedOptionsConfig? advancedOptionsConfig,
    ComputeRegionSecurityPolicyDdosProtectionConfig? ddosProtectionConfig,
    required List<ComputeRegionSecurityPolicyRules> rules,
    List<ComputeRegionSecurityPolicyUserDefinedField>? userDefinedFields,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'name': name,
           'project': ?project,
           'region': ?region,
           'type': ?type,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionSecurityPolicy>`.
  RefTo<GoogleComputeRegionSecurityPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
