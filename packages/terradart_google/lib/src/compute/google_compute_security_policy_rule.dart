// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/compute/google_compute_security_policy.dart'
    show SecurityPolicyRuleMatchVersionedExpr;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_security_policy_rule`.
const Set<String> _googleComputeSecurityPolicyRuleSensitive = <String>{};

/// `rate_limit_options.enforce_on_key` — request attribute the rate-limit
/// threshold is keyed on.
enum ComputeSecurityPolicyRuleRateLimitEnforceOnKey implements TerraformEnum {
  all('ALL'),
  ip('IP'),
  httpHeader('HTTP_HEADER'),
  xffIp('XFF_IP'),
  httpCookie('HTTP_COOKIE'),
  httpPath('HTTP_PATH'),
  sni('SNI'),
  regionCode('REGION_CODE'),
  tlsJa3Fingerprint('TLS_JA3_FINGERPRINT'),
  tlsJa4Fingerprint('TLS_JA4_FINGERPRINT'),
  userIp('USER_IP');

  const ComputeSecurityPolicyRuleRateLimitEnforceOnKey(this.terraformValue);
  @override
  final String terraformValue;
}

/// `match` block — condition that fires this standalone rule.
@immutable
class ComputeSecurityPolicyRuleMatch {
  const ComputeSecurityPolicyRuleMatch({this.versionedExpr, this.config});

  /// Built-in predicate (pair with [config]).
  final SecurityPolicyRuleMatchVersionedExpr? versionedExpr;

  /// Source-IP ranges for [SecurityPolicyRuleMatchVersionedExpr.srcIpsV1].
  final ComputeSecurityPolicyRuleMatchConfig? config;

  Map<String, Object?> toArgMap() => {
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.terraformValue,
    if (config != null) 'config': config!.toArgMap(),
  };
}

/// `match.config` — payload for the `SRC_IPS_V1` predicate.
@immutable
class ComputeSecurityPolicyRuleMatchConfig {
  const ComputeSecurityPolicyRuleMatchConfig({required this.srcIpRanges});

  final List<String> srcIpRanges;

  Map<String, Object?> toArgMap() => {'src_ip_ranges': srcIpRanges};
}

/// `rate_limit_options` block for throttle / rate-based-ban actions.
@immutable
class ComputeSecurityPolicyRuleRateLimitOptions {
  const ComputeSecurityPolicyRuleRateLimitOptions({
    this.enforceOnKey,
    this.enforceOnKeyName,
  });

  final ComputeSecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKey;

  /// Header or cookie name when [enforceOnKey] is [ComputeSecurityPolicyRuleRateLimitEnforceOnKey.httpHeader]
  /// or [ComputeSecurityPolicyRuleRateLimitEnforceOnKey.httpCookie].
  final TfArg<String>? enforceOnKeyName;

  Map<String, Object?> toArgMap() => {
    if (enforceOnKey != null) 'enforce_on_key': enforceOnKey!.terraformValue,
    if (enforceOnKeyName != null)
      'enforce_on_key_name': enforceOnKeyName!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_security_policy_rule`.
final class GoogleComputeSecurityPolicyRule extends Resource {
  static const String tfType = 'google_compute_security_policy_rule';

  GoogleComputeSecurityPolicyRule({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? description,
    TfArg<bool>? preview,
    required TfArg<num> priority,
    TfArg<String>? project,
    required TfArg<String> securityPolicy,
    TfArg<Map<String, dynamic>>? headerAction,
    ComputeSecurityPolicyRuleMatch? match,
    TfArg<Map<String, dynamic>>? preconfiguredWafConfig,
    ComputeSecurityPolicyRuleRateLimitOptions? rateLimitOptions,
    TfArg<Map<String, dynamic>>? redirectOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (description != null) 'description': description,
           if (preview != null) 'preview': preview,
           'priority': priority,
           if (project != null) 'project': project,
           'security_policy': securityPolicy,
           if (headerAction != null) 'header_action': headerAction,
           if (match != null) 'match': TfArg.literal([match.toArgMap()]),
           if (preconfiguredWafConfig != null)
             'preconfigured_waf_config': preconfiguredWafConfig,
           if (rateLimitOptions != null)
             'rate_limit_options': TfArg.literal([rateLimitOptions.toArgMap()]),
           if (redirectOptions != null) 'redirect_options': redirectOptions,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSecurityPolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
