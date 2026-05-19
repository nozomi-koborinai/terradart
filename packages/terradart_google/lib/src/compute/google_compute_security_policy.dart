// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_security_policy`.
const Set<String> _googleComputeSecurityPolicySensitive = <String>{};

// ===========================================================================
// Top-level enums
// ===========================================================================

/// `type` -- intended use of the security policy. Forces replacement
/// when changed. The default (when unset on create) is
/// [SecurityPolicyType.cloudArmor].
enum SecurityPolicyType {
  /// Backend-service policies. Filter incoming HTTP requests targeting
  /// backend services BEFORE they hit the origin servers. The default.
  cloudArmor('CLOUD_ARMOR'),

  /// Edge policies. Filter incoming HTTP requests targeting backend
  /// services (including Cloud CDN-enabled) and backend buckets
  /// (Cloud Storage) at Google's cache layer, BEFORE the request is
  /// served from cache. Use for cache-poisoning / cache-bypass
  /// protection.
  cloudArmorEdge('CLOUD_ARMOR_EDGE'),

  /// Network Load Balancing policies. Filter L3/L4 packets at the
  /// network edge for external Network Load Balancers.
  cloudArmorNetwork('CLOUD_ARMOR_NETWORK');

  const SecurityPolicyType(this.terraformValue);
  final String terraformValue;
}

/// `rule.action` -- what Cloud Armor does when the [SecurityPolicyRule]
/// matches. The `deny(NNN)` actions return a fixed HTTP status to the
/// client; `rateBasedBan` and `throttle` REQUIRE
/// [SecurityPolicyRule.rateLimitOptions]; `redirect` REQUIRES
/// [SecurityPolicyRule.redirectOptions]. The Terraform value
/// preserves the literal provider strings (parentheses and digits
/// included) -- the Dart variants pick identifier-safe names.
enum SecurityPolicyRuleAction {
  /// Pass the request through to the backend.
  allow('allow'),

  /// Block with HTTP 403 Forbidden.
  deny403('deny(403)'),

  /// Block with HTTP 404 Not Found. Useful when you want to hide the
  /// existence of an endpoint (vs. signalling "blocked" with 403).
  deny404('deny(404)'),

  /// Block with HTTP 502 Bad Gateway.
  deny502('deny(502)'),

  /// Rate-based ban: once the client trips the threshold configured
  /// in [SecurityPolicyRule.rateLimitOptions], the key is banned for
  /// `banDurationSec`.
  rateBasedBan('rate_based_ban'),

  /// Redirect (HTTP 302 or to a Google reCAPTCHA challenge). Pair with
  /// [SecurityPolicyRule.redirectOptions].
  redirect('redirect'),

  /// Throttle requests over the configured rate-limit threshold.
  /// Pair with [SecurityPolicyRule.rateLimitOptions].
  throttle('throttle');

  const SecurityPolicyRuleAction(this.terraformValue);
  final String terraformValue;
}

/// `match.versioned_expr` -- Cloud Armor's only built-in predicate
/// today. Pair with [SecurityPolicyRuleMatchConfig.srcIpRanges] to
/// match by source IP / CIDR. For richer matching (geo, path, headers),
/// use [SecurityPolicyRuleMatchExpr] (CEL) instead.
enum SecurityPolicyRuleMatchVersionedExpr {
  /// Source-IP-v1 predicate. Reads `match.config.src_ip_ranges` and
  /// matches IPv4/IPv6 CIDR ranges (or `'*'` for any).
  srcIpsV1('SRC_IPS_V1');

  const SecurityPolicyRuleMatchVersionedExpr(this.terraformValue);
  final String terraformValue;
}

/// `advanced_options_config.json_parsing` -- whether Cloud Armor
/// parses JSON request bodies during WAF evaluation. `standard` is
/// required for the JSON-aware preconfigured WAF rules to inspect
/// body content; otherwise default `disabled` keeps inspection limited
/// to URI / headers / query string.
enum SecurityPolicyJsonParsing {
  disabled('DISABLED'),
  standard('STANDARD');

  const SecurityPolicyJsonParsing(this.terraformValue);
  final String terraformValue;
}

/// `advanced_options_config.log_level` -- verbosity of Cloud Armor's
/// Cloud Logging output. `verbose` includes preconfigured-WAF rule
/// match details and is the recommended setting during policy tuning;
/// switch back to `normal` for steady-state to control log volume.
enum SecurityPolicyLogLevel {
  normal('NORMAL'),
  verbose('VERBOSE');

  const SecurityPolicyLogLevel(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// rules[] -- the heart of the policy
// ===========================================================================

/// One entry in `rule[]`. Rules are evaluated from highest priority
/// (lowest numeric value) to lowest priority. The first match wins
/// and its [action] is enforced. Cloud Armor REQUIRES a default rule
/// at priority `2147483647` matching all traffic (`'*'`) -- if you
/// omit it the provider injects one with [SecurityPolicyRuleAction.allow],
/// which silently disables a deny-list policy. Always author the
/// default rule explicitly.
@immutable
class SecurityPolicyRule {
  const SecurityPolicyRule({
    required this.priority,
    required this.action,
    required this.match,
    this.description,
    this.preview,
    this.rateLimitOptions,
    this.redirectOptions,
    this.headerAction,
  });

  /// Unique positive integer indicating evaluation order. Lower =
  /// higher priority. Reserve `2147483647` for the default rule.
  final int priority;

  /// What Cloud Armor does when this rule matches. Certain actions
  /// require sibling blocks: `rateBasedBan` / `throttle` need
  /// [rateLimitOptions], `redirect` needs [redirectOptions].
  final SecurityPolicyRuleAction action;

  /// Match condition. Pick exactly one of
  /// [SecurityPolicyRuleMatch.config] (versioned predicate over
  /// source IPs) or [SecurityPolicyRuleMatch.expr] (CEL expression).
  final SecurityPolicyRuleMatch match;

  /// Free-form description. Max 64 chars per the schema.
  final TfArg<String>? description;

  /// Staging flag. When `true`, the rule's [action] is NOT enforced
  /// but matches are logged with a `preview: true` annotation -- use
  /// to validate a new rule against production traffic before flipping
  /// it live.
  final bool? preview;

  /// Required when [action] is [SecurityPolicyRuleAction.rateBasedBan]
  /// or [SecurityPolicyRuleAction.throttle]; forbidden otherwise.
  final SecurityPolicyRuleRateLimitOptions? rateLimitOptions;

  /// Required when [action] is [SecurityPolicyRuleAction.redirect];
  /// forbidden otherwise.
  final SecurityPolicyRuleRedirectOptions? redirectOptions;

  /// Optional header rewrites applied alongside the match action
  /// (e.g. tagging a request with an internal `X-Cloud-Armor-Rule`
  /// header for downstream observability).
  final SecurityPolicyRuleHeaderAction? headerAction;

  Map<String, Object?> toArgMap() => {
    'priority': priority,
    'action': action.terraformValue,
    'match': [match.toArgMap()],
    if (description != null) 'description': description!.toTfJson(),
    if (preview != null) 'preview': preview,
    if (rateLimitOptions != null)
      'rate_limit_options': [rateLimitOptions!.toArgMap()],
    if (redirectOptions != null)
      'redirect_options': [redirectOptions!.toArgMap()],
    if (headerAction != null) 'header_action': [headerAction!.toArgMap()],
  };
}

/// `rule.match` -- the condition under which a rule fires.
/// Mutually-exclusive variants:
/// - [SecurityPolicyRuleMatch.config] -- built-in predicate
///   (`versionedExpr` + `config.srcIpRanges`). Use for IP / CIDR
///   allow-lists or deny-lists. Fast path; no CEL evaluation.
/// - [SecurityPolicyRuleMatch.expr] -- user-defined CEL expression.
///   Use for anything beyond source-IP matching (geo, path, header,
///   request size, ...). See
///   https://cloud.google.com/armor/docs/rules-language-reference.
@immutable
class SecurityPolicyRuleMatch {
  const SecurityPolicyRuleMatch._({this.versionedExpr, this.config, this.expr});

  /// Built-in predicate variant. Pair [versionedExpr] with [config]
  /// (both required by the schema when this variant is used).
  factory SecurityPolicyRuleMatch.config({
    required SecurityPolicyRuleMatchVersionedExpr versionedExpr,
    required SecurityPolicyRuleMatchConfig config,
  }) => SecurityPolicyRuleMatch._(versionedExpr: versionedExpr, config: config);

  /// User-defined CEL expression variant.
  factory SecurityPolicyRuleMatch.expr(SecurityPolicyRuleMatchExpr expr) =>
      SecurityPolicyRuleMatch._(expr: expr);

  final SecurityPolicyRuleMatchVersionedExpr? versionedExpr;
  final SecurityPolicyRuleMatchConfig? config;
  final SecurityPolicyRuleMatchExpr? expr;

  Map<String, Object?> toArgMap() => {
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.terraformValue,
    if (config != null) 'config': [config!.toArgMap()],
    if (expr != null) 'expr': [expr!.toArgMap()],
  };
}

/// `match.config` -- payload for the `SRC_IPS_V1` predicate. The only
/// field today is [srcIpRanges]; the schema limits this to 10 entries
/// per rule. Pass `['*']` to match ALL inbound IPs (the canonical
/// default-deny / default-allow shape).
@immutable
class SecurityPolicyRuleMatchConfig {
  const SecurityPolicyRuleMatchConfig({required this.srcIpRanges});

  /// IPv4/IPv6 CIDR ranges to match against the request's source IP.
  /// Max 10 entries. Use `'*'` to match any.
  final List<String> srcIpRanges;

  Map<String, Object?> toArgMap() => {'src_ip_ranges': srcIpRanges};
}

/// `match.expr` -- a user-defined Common Expression Language (CEL)
/// predicate evaluated against the request. The expression is passed
/// to Cloud Armor as an opaque string; the Dart wrapper does NOT
/// type-check CEL syntax, so callers are responsible for matching
/// Cloud Armor's CEL dialect (see
/// https://cloud.google.com/armor/docs/rules-language-reference).
///
/// Example expressions:
/// - `origin.region_code == 'JP'` -- only Japanese-geocoded traffic.
/// - `request.path.matches('/admin/.*')` -- requests to any admin URL.
@immutable
class SecurityPolicyRuleMatchExpr {
  const SecurityPolicyRuleMatchExpr({required this.expression});

  /// CEL expression. Pass as a raw [String] -- the wrapper does not
  /// validate CEL syntax; invalid expressions surface as Cloud Armor
  /// apply-time errors.
  final TfArg<String> expression;

  Map<String, Object?> toArgMap() => {'expression': expression.toTfJson()};
}

/// `rule.rate_limit_options` -- threshold + action plumbing for
/// [SecurityPolicyRuleAction.throttle] and
/// [SecurityPolicyRuleAction.rateBasedBan]. Throttle simply rejects
/// requests over the threshold; rate-based ban additionally locks the
/// offending key out for [banDurationSec] seconds once it trips
/// [banThreshold].
@immutable
class SecurityPolicyRuleRateLimitOptions {
  const SecurityPolicyRuleRateLimitOptions({
    required this.conformAction,
    required this.exceedAction,
    required this.rateLimitThreshold,
    this.banDurationSec,
    this.banThreshold,
    this.enforceOnKey,
    this.enforceOnKeyName,
    this.enforceOnKeyConfigs,
    this.exceedRedirectOptions,
  });

  /// Action for under-threshold requests. The schema only accepts
  /// `'allow'` today.
  final String conformAction;

  /// Action for over-threshold requests. Valid values are `'deny(403)'`,
  /// `'deny(404)'`, `'deny(429)'`, `'deny(502)'`, and `'redirect'`
  /// (paired with [exceedRedirectOptions]).
  final String exceedAction;

  /// Required rate-limit threshold (counts per interval).
  final SecurityPolicyRuleRateLimitThreshold rateLimitThreshold;

  /// Only honored when the rule action is
  /// [SecurityPolicyRuleAction.rateBasedBan]. Seconds the key remains
  /// banned after the rate falls below threshold.
  final int? banDurationSec;

  /// Only honored when the rule action is
  /// [SecurityPolicyRuleAction.rateBasedBan]. Trip threshold for
  /// converting a throttle into a ban.
  final SecurityPolicyRuleRateLimitThreshold? banThreshold;

  /// Which request attribute the threshold is keyed on (e.g. `'IP'`,
  /// `'HTTP_HEADER'`, `'HTTP_COOKIE'`, `'XFF_IP'`, ...). See the Cloud
  /// Armor docs for the full list.
  final String? enforceOnKey;

  /// Header / cookie name when [enforceOnKey] is `HTTP_HEADER` or
  /// `HTTP_COOKIE`.
  final String? enforceOnKeyName;

  /// Composite key (combine multiple attributes). Mutually exclusive
  /// with the single-attribute [enforceOnKey] / [enforceOnKeyName].
  final List<SecurityPolicyRuleEnforceOnKeyConfig>? enforceOnKeyConfigs;

  /// Redirect target when [exceedAction] is `'redirect'`.
  final SecurityPolicyRuleRedirectOptions? exceedRedirectOptions;

  Map<String, Object?> toArgMap() => {
    'conform_action': conformAction,
    'exceed_action': exceedAction,
    'rate_limit_threshold': [rateLimitThreshold.toArgMap()],
    if (banDurationSec != null) 'ban_duration_sec': banDurationSec,
    if (banThreshold != null) 'ban_threshold': [banThreshold!.toArgMap()],
    if (enforceOnKey != null) 'enforce_on_key': enforceOnKey,
    if (enforceOnKeyName != null) 'enforce_on_key_name': enforceOnKeyName,
    if (enforceOnKeyConfigs != null)
      'enforce_on_key_configs': enforceOnKeyConfigs!
          .map((c) => c.toArgMap())
          .toList(),
    if (exceedRedirectOptions != null)
      'exceed_redirect_options': [exceedRedirectOptions!.toArgMap()],
  };
}

/// `rate_limit_threshold` / `ban_threshold` shape. Count of requests
/// per fixed [intervalSec] window.
@immutable
class SecurityPolicyRuleRateLimitThreshold {
  const SecurityPolicyRuleRateLimitThreshold({
    required this.count,
    required this.intervalSec,
  });

  final int count;
  final int intervalSec;

  Map<String, Object?> toArgMap() => {
    'count': count,
    'interval_sec': intervalSec,
  };
}

/// One entry in `rate_limit_options.enforce_on_key_configs`. Lets a
/// rule key on a composite of attributes (e.g. "(client IP, region)").
@immutable
class SecurityPolicyRuleEnforceOnKeyConfig {
  const SecurityPolicyRuleEnforceOnKeyConfig({
    this.enforceOnKeyType,
    this.enforceOnKeyName,
  });

  /// Attribute type (`'IP'`, `'HTTP_HEADER'`, `'HTTP_COOKIE'`, ...).
  final String? enforceOnKeyType;

  /// Header / cookie name when [enforceOnKeyType] is `HTTP_HEADER` or
  /// `HTTP_COOKIE`.
  final String? enforceOnKeyName;

  Map<String, Object?> toArgMap() => {
    if (enforceOnKeyType != null) 'enforce_on_key_type': enforceOnKeyType,
    if (enforceOnKeyName != null) 'enforce_on_key_name': enforceOnKeyName,
  };
}

/// `rule.redirect_options` -- redirect target shape, also reused as
/// `rate_limit_options.exceed_redirect_options`. Two flavors:
/// `'EXTERNAL_302'` requires [target] (an HTTPS URL Cloud Armor 302s
/// to); `'GOOGLE_RECAPTCHA'` swaps the request for a Google-hosted
/// reCAPTCHA challenge and MUST NOT set [target].
@immutable
class SecurityPolicyRuleRedirectOptions {
  const SecurityPolicyRuleRedirectOptions({required this.type, this.target});

  /// `'EXTERNAL_302'` or `'GOOGLE_RECAPTCHA'`. Surfaced as a raw
  /// string to avoid yet another enum for a binary choice; validate
  /// with a comment at the call site.
  final String type;

  /// HTTPS redirect target. Required for `EXTERNAL_302`; rejected for
  /// `GOOGLE_RECAPTCHA`.
  final String? target;

  Map<String, Object?> toArgMap() => {
    'type': type,
    if (target != null) 'target': target,
  };
}

/// `rule.header_action` -- request-header rewrites applied alongside
/// the rule's match action. Useful for tagging matched requests so
/// downstream services (or Cloud Logging) can see which Cloud Armor
/// rule fired.
@immutable
class SecurityPolicyRuleHeaderAction {
  const SecurityPolicyRuleHeaderAction({required this.requestHeadersToAdds})
    : assert(
        requestHeadersToAdds.length >= 1,
        'SecurityPolicyRuleHeaderAction.requestHeadersToAdds must have '
        'at least one entry (schema enforces min_items=1).',
      );

  /// At least one per the schema's `min_items=1`.
  final List<SecurityPolicyRuleHeaderAdd> requestHeadersToAdds;

  Map<String, Object?> toArgMap() => {
    'request_headers_to_adds': requestHeadersToAdds
        .map((h) => h.toArgMap())
        .toList(),
  };
}

/// One header rewrite in [SecurityPolicyRuleHeaderAction.requestHeadersToAdds].
/// `headerValue` is optional -- omitting it adds the header with an
/// empty string value.
@immutable
class SecurityPolicyRuleHeaderAdd {
  const SecurityPolicyRuleHeaderAdd({
    required this.headerName,
    this.headerValue,
  });

  final String headerName;
  final String? headerValue;

  Map<String, Object?> toArgMap() => {
    'header_name': headerName,
    if (headerValue != null) 'header_value': headerValue,
  };
}

// ===========================================================================
// advanced_options_config (single block, max_items=1)
// ===========================================================================

/// `advanced_options_config` -- knobs that apply across the whole
/// policy: JSON-body inspection for preconfigured WAF rules, log
/// verbosity, and client-IP resolution headers.
@immutable
class SecurityPolicyAdvancedOptionsConfig {
  const SecurityPolicyAdvancedOptionsConfig({
    this.jsonParsing,
    this.logLevel,
    this.requestBodyInspectionSize,
    this.userIpRequestHeaders,
    this.jsonCustomConfig,
  });

  /// JSON-body parsing mode. Required to be [SecurityPolicyJsonParsing.standard]
  /// for the JSON-aware preconfigured WAF rules to inspect bodies.
  final SecurityPolicyJsonParsing? jsonParsing;

  /// Cloud Logging verbosity for this policy.
  final SecurityPolicyLogLevel? logLevel;

  /// Max request body size to inspect with WAF (`'8KB'`, `'16KB'`,
  /// `'32KB'`, `'48KB'`, `'64KB'` -- case-insensitive). Larger values
  /// catch more attacks at the cost of latency / cost.
  final String? requestBodyInspectionSize;

  /// Headers Cloud Armor consults to derive the client IP (in addition
  /// to the L4 source). Case-insensitive header names; typically
  /// `'X-Forwarded-For'` or a vendor-specific equivalent.
  final List<String>? userIpRequestHeaders;

  /// Custom Content-Type → JSON parser mapping. Only honored when
  /// [jsonParsing] is [SecurityPolicyJsonParsing.standard].
  final SecurityPolicyJsonCustomConfig? jsonCustomConfig;

  Map<String, Object?> toArgMap() => {
    if (jsonParsing != null) 'json_parsing': jsonParsing!.terraformValue,
    if (logLevel != null) 'log_level': logLevel!.terraformValue,
    if (requestBodyInspectionSize != null)
      'request_body_inspection_size': requestBodyInspectionSize,
    if (userIpRequestHeaders != null)
      'user_ip_request_headers': userIpRequestHeaders,
    if (jsonCustomConfig != null)
      'json_custom_config': [jsonCustomConfig!.toArgMap()],
  };
}

/// `advanced_options_config.json_custom_config` -- list of additional
/// Content-Type values Cloud Armor should treat as JSON for WAF body
/// inspection (beyond the default `application/json`).
@immutable
class SecurityPolicyJsonCustomConfig {
  const SecurityPolicyJsonCustomConfig({required this.contentTypes});

  /// Additional Content-Type header values to apply JSON parsing to.
  final List<String> contentTypes;

  Map<String, Object?> toArgMap() => {'content_types': contentTypes};
}

// ===========================================================================
// adaptive_protection_config (single block, max_items=1)
// ===========================================================================

/// `adaptive_protection_config` -- Google's ML-driven layer-7 DDoS
/// auto-mitigation. When enabled, Cloud Armor watches traffic patterns
/// and proposes / auto-deploys rules during a suspected attack.
@immutable
class SecurityPolicyAdaptiveProtectionConfig {
  const SecurityPolicyAdaptiveProtectionConfig({this.layer7DdosDefenseConfig});

  final SecurityPolicyLayer7DdosDefenseConfig? layer7DdosDefenseConfig;

  Map<String, Object?> toArgMap() => {
    if (layer7DdosDefenseConfig != null)
      'layer_7_ddos_defense_config': [layer7DdosDefenseConfig!.toArgMap()],
  };
}

/// `layer_7_ddos_defense_config` block. Pair [enable] with [ruleVisibility]
/// (typically `'STANDARD'`); per-segment thresholds can be tuned via
/// [thresholdConfigs] for tenants with predictable traffic shape.
@immutable
class SecurityPolicyLayer7DdosDefenseConfig {
  const SecurityPolicyLayer7DdosDefenseConfig({
    this.enable,
    this.ruleVisibility,
    this.thresholdConfigs,
  });

  /// Master switch for L7 adaptive protection on this policy.
  final bool? enable;

  /// Which rule details are surfaced in attack alerts: `'STANDARD'`
  /// (anonymised) or `'PREMIUM'` (full rule body). Premium requires
  /// Managed Protection Plus.
  final String? ruleVisibility;

  /// Per-named-config threshold overrides. Each entry must have a
  /// unique [SecurityPolicyAdaptiveProtectionThresholdConfig.name].
  final List<SecurityPolicyAdaptiveProtectionThresholdConfig>? thresholdConfigs;

  Map<String, Object?> toArgMap() => {
    if (enable != null) 'enable': enable,
    if (ruleVisibility != null) 'rule_visibility': ruleVisibility,
    if (thresholdConfigs != null)
      'threshold_configs': thresholdConfigs!.map((t) => t.toArgMap()).toList(),
  };
}

/// One entry in `threshold_configs`. The numeric knobs are passed
/// through verbatim -- consult the Cloud Armor adaptive-protection
/// docs for tuning guidance.
@immutable
class SecurityPolicyAdaptiveProtectionThresholdConfig {
  const SecurityPolicyAdaptiveProtectionThresholdConfig({
    required this.name,
    this.autoDeployConfidenceThreshold,
    this.autoDeployExpirationSec,
    this.autoDeployImpactedBaselineThreshold,
    this.autoDeployLoadThreshold,
    this.detectionAbsoluteQps,
    this.detectionLoadThreshold,
    this.detectionRelativeToBaselineQps,
    this.trafficGranularityConfigs,
  });

  /// Unique config name (1-63 chars, RFC1035).
  final String name;

  final double? autoDeployConfidenceThreshold;
  final double? autoDeployExpirationSec;
  final double? autoDeployImpactedBaselineThreshold;
  final double? autoDeployLoadThreshold;
  final double? detectionAbsoluteQps;
  final double? detectionLoadThreshold;
  final double? detectionRelativeToBaselineQps;

  /// Per-traffic-segment thresholds (e.g. region, header value). Each
  /// entry constitutes a separate traffic unit for evaluation.
  final List<SecurityPolicyTrafficGranularityConfig>? trafficGranularityConfigs;

  Map<String, Object?> toArgMap() => {
    'name': name,
    if (autoDeployConfidenceThreshold != null)
      'auto_deploy_confidence_threshold': autoDeployConfidenceThreshold,
    if (autoDeployExpirationSec != null)
      'auto_deploy_expiration_sec': autoDeployExpirationSec,
    if (autoDeployImpactedBaselineThreshold != null)
      'auto_deploy_impacted_baseline_threshold':
          autoDeployImpactedBaselineThreshold,
    if (autoDeployLoadThreshold != null)
      'auto_deploy_load_threshold': autoDeployLoadThreshold,
    if (detectionAbsoluteQps != null)
      'detection_absolute_qps': detectionAbsoluteQps,
    if (detectionLoadThreshold != null)
      'detection_load_threshold': detectionLoadThreshold,
    if (detectionRelativeToBaselineQps != null)
      'detection_relative_to_baseline_qps': detectionRelativeToBaselineQps,
    if (trafficGranularityConfigs != null)
      'traffic_granularity_configs': trafficGranularityConfigs!
          .map((t) => t.toArgMap())
          .toList(),
  };
}

/// One entry in `traffic_granularity_configs`. [enableEachUniqueValue]
/// (true) and [value] (non-empty string) are mutually exclusive: the
/// schema rejects setting both.
@immutable
class SecurityPolicyTrafficGranularityConfig {
  const SecurityPolicyTrafficGranularityConfig({
    required this.type,
    this.enableEachUniqueValue,
    this.value,
  });

  /// Granularity dimension (`'HTTP_HEADER_HOST'`, `'HTTP_PATH'`, ...).
  /// See the Cloud Armor docs for the supported types.
  final String type;

  /// When true, each unique value of [type] constitutes a separate
  /// traffic unit. Mutually exclusive with [value].
  final bool? enableEachUniqueValue;

  /// Pin a specific value to constitute a granular traffic unit.
  /// Mutually exclusive with [enableEachUniqueValue].
  final String? value;

  Map<String, Object?> toArgMap() => {
    'type': type,
    if (enableEachUniqueValue != null)
      'enable_each_unique_value': enableEachUniqueValue,
    if (value != null) 'value': value,
  };
}

// ===========================================================================
// recaptcha_options_config (single block, max_items=1)
// ===========================================================================

/// `recaptcha_options_config` -- policy-wide reCAPTCHA site key used
/// for redirect-to-reCAPTCHA actions. Only the redirect site key is
/// exposed by Terraform today; if unset, Cloud Armor uses a Google-
/// managed key.
@immutable
class SecurityPolicyRecaptchaOptionsConfig {
  const SecurityPolicyRecaptchaOptionsConfig({required this.redirectSiteKey});

  /// reCAPTCHA site key (callers are responsible for ensuring it is
  /// valid and created from the reCAPTCHA API). Required by the schema.
  final TfArg<String> redirectSiteKey;

  Map<String, Object?> toArgMap() => {
    'redirect_site_key': redirectSiteKey.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_security_policy` (provider
/// `hashicorp/google ~> 7.0`). This is Google Cloud Armor: a layer-7
/// WAF / DDoS / rate-limiting policy that attaches to one or more
/// `google_compute_backend_service` (via that resource's
/// `securityPolicy` field) or to backend buckets for edge variants.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_compute_security_policy.`).
/// - `name`: GCP resource name (1-63 chars, lowercase RFC1035).
///
/// Policy intent:
/// - [type]: pick [SecurityPolicyType.cloudArmor] for backend-service
///   policies (the default and most common), [SecurityPolicyType.cloudArmorEdge]
///   for edge policies that filter at Google's cache layer (cache-bypass
///   protection, applied to backend services and backend buckets), or
///   [SecurityPolicyType.cloudArmorNetwork] for Network Load Balancing.
/// - [rules]: at least one [SecurityPolicyRule]. Cloud Armor always
///   needs a default rule (priority `2147483647`, match `'*'`) -- if
///   you omit it the provider auto-injects one with action `allow`,
///   which is rarely what you want for a deny-list policy. Author
///   the default-deny explicitly.
///
/// Example (deny-by-default with a JP allow-list):
/// ```dart
/// final policy = GoogleComputeSecurityPolicy(
///   localName: 'edge_deny_all',
///   name: TfArg.literal('edge-deny-all'),
///   type: TfArg.literal(SecurityPolicyType.cloudArmorEdge),
///   rules: [
///     // Higher-priority allow for JP traffic.
///     SecurityPolicyRule(
///       priority: 1000,
///       action: SecurityPolicyRuleAction.allow,
///       match: SecurityPolicyRuleMatch.expr(
///         SecurityPolicyRuleMatchExpr(
///           expression: "origin.region_code == 'JP'",
///         ),
///       ),
///       description: 'allow JP',
///     ),
///     // Default-deny (lowest priority, match all).
///     SecurityPolicyRule(
///       priority: 2147483647,
///       action: SecurityPolicyRuleAction.deny403,
///       match: SecurityPolicyRuleMatch.config(
///         versionedExpr: SecurityPolicyRuleMatchVersionedExpr.srcIpsV1,
///         config: SecurityPolicyRuleMatchConfig(srcIpRanges: ['*']),
///       ),
///       description: 'default deny',
///     ),
///   ],
/// );
/// ```
///
/// Example (rate-limit on `/api/*`, redirect overflow to a CAPTCHA):
/// ```dart
/// SecurityPolicyRule(
///   priority: 500,
///   action: SecurityPolicyRuleAction.throttle,
///   match: SecurityPolicyRuleMatch.expr(
///     SecurityPolicyRuleMatchExpr(
///       expression: "request.path.matches('/api/.*')",
///     ),
///   ),
///   rateLimitOptions: SecurityPolicyRuleRateLimitOptions(
///     conformAction: 'allow',
///     exceedAction: 'redirect',
///     rateLimitThreshold: SecurityPolicyRuleRateLimitThreshold(
///       count: 100,
///       intervalSec: 60,
///     ),
///     exceedRedirectOptions: SecurityPolicyRuleRedirectOptions(
///       type: 'GOOGLE_RECAPTCHA',
///     ),
///   ),
/// );
/// ```
///
/// All nested classes are prefixed with `SecurityPolicy` to avoid
/// collisions with other Cloud Armor / load-balancing wrappers that
/// reuse the same Terraform field names (`config`, `expr`, `match`,
/// `header_action`, ...).
final class GoogleComputeSecurityPolicy extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_compute_security_policy';

  GoogleComputeSecurityPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? description,
    TfArg<SecurityPolicyType>? type,
    required List<SecurityPolicyRule> rules,
    SecurityPolicyAdaptiveProtectionConfig? adaptiveProtectionConfig,
    SecurityPolicyAdvancedOptionsConfig? advancedOptionsConfig,
    SecurityPolicyRecaptchaOptionsConfig? recaptchaOptionsConfig,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'name': name,
           if (description != null) 'description': description,
           if (type != null) 'type': type,
           'rule': TfArg.literal(rules.map((r) => r.toArgMap()).toList()),
           if (adaptiveProtectionConfig != null)
             'adaptive_protection_config': TfArg.literal([
               adaptiveProtectionConfig.toArgMap(),
             ]),
           if (advancedOptionsConfig != null)
             'advanced_options_config': TfArg.literal([
               advancedOptionsConfig.toArgMap(),
             ]),
           if (recaptchaOptionsConfig != null)
             'recaptcha_options_config': TfArg.literal([
               recaptchaOptionsConfig.toArgMap(),
             ]),
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleComputeSecurityPolicySensitive;

  /// Reference to `name` attribute. Use `policy.nameRef` when wiring a
  /// `google_compute_backend_service.securityPolicy`.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute (full path
  /// `projects/{project}/global/securityPolicies/{name}`).
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `self_link` attribute. The canonical reference
  /// `google_compute_backend_service.security_policy` expects.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `fingerprint` attribute -- used by the API for
  /// optimistic locking on updates.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');
}
