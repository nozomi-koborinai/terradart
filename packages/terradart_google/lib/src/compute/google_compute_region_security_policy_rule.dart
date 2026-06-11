// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/compute/google_compute_security_policy.dart'
    show SecurityPolicyRuleMatchVersionedExpr;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_security_policy_rule`.
const Set<String> _googleComputeRegionSecurityPolicyRuleSensitive = <String>{};

/// `rate_limit_options.enforce_on_key` — request attribute the rate-limit
/// threshold is keyed on (regional Cloud Armor standalone rule).
enum ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKey
    implements TerraformEnum {
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

  const ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKey(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `match` block — condition that fires this regional standalone rule.
@immutable
class ComputeRegionSecurityPolicyRuleMatch {
  const ComputeRegionSecurityPolicyRuleMatch({this.versionedExpr, this.config});

  final SecurityPolicyRuleMatchVersionedExpr? versionedExpr;
  final ComputeRegionSecurityPolicyRuleMatchConfig? config;

  Map<String, Object?> toArgMap() => {
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.terraformValue,
    if (config != null) 'config': config!.toArgMap(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRuleMatchConfig {
  const ComputeRegionSecurityPolicyRuleMatchConfig({required this.srcIpRanges});

  final List<String> srcIpRanges;

  Map<String, Object?> toArgMap() => {'src_ip_ranges': srcIpRanges};
}

@immutable
class ComputeRegionSecurityPolicyRuleRateLimitOptions {
  const ComputeRegionSecurityPolicyRuleRateLimitOptions({
    this.enforceOnKey,
    this.enforceOnKeyName,
  });

  final ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKey;
  final TfArg<String>? enforceOnKeyName;

  Map<String, Object?> toArgMap() => {
    if (enforceOnKey != null) 'enforce_on_key': enforceOnKey!.terraformValue,
    if (enforceOnKeyName != null)
      'enforce_on_key_name': enforceOnKeyName!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_security_policy_rule`.
final class GoogleComputeRegionSecurityPolicyRule extends Resource {
  static const String tfType = 'google_compute_region_security_policy_rule';

  GoogleComputeRegionSecurityPolicyRule({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? description,
    TfArg<bool>? preview,
    required TfArg<num> priority,
    TfArg<String>? project,
    required TfArg<String> region,
    required TfArg<String> securityPolicy,
    ComputeRegionSecurityPolicyRuleMatch? match,
    TfArg<Map<String, dynamic>>? networkMatch,
    TfArg<Map<String, dynamic>>? preconfiguredWafConfig,
    ComputeRegionSecurityPolicyRuleRateLimitOptions? rateLimitOptions,
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
           'region': region,
           'security_policy': securityPolicy,
           if (match != null) 'match': TfArg.literal([match.toArgMap()]),
           if (networkMatch != null) 'network_match': networkMatch,
           if (preconfiguredWafConfig != null)
             'preconfigured_waf_config': preconfiguredWafConfig,
           if (rateLimitOptions != null)
             'rate_limit_options': TfArg.literal([rateLimitOptions.toArgMap()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSecurityPolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
