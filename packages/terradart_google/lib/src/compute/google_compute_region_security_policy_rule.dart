// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_google/src/compute/google_compute_security_policy.dart'
    show
        SecurityPolicyRuleMatchVersionedExpr,
        SecurityPolicyRuleRateLimitEnforceOnKey,
        SecurityPolicyWafExclusionOperator;
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_security_policy_rule`.
const Set<String> _googleComputeRegionSecurityPolicyRuleSensitive = <String>{};

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
    this.enforceOnKeyConfigs,
  });

  final SecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKey;
  final TfArg<String>? enforceOnKeyName;
  final List<ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKeyConfig>?
  enforceOnKeyConfigs;

  Map<String, Object?> toArgMap() => {
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
class ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKeyConfig {
  const ComputeRegionSecurityPolicyRuleRateLimitEnforceOnKeyConfig({
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
class ComputeRegionSecurityPolicyRulePreconfiguredWafConfig {
  const ComputeRegionSecurityPolicyRulePreconfiguredWafConfig({this.exclusion});

  final List<ComputeRegionSecurityPolicyRulePreconfiguredWafExclusion>?
  exclusion;

  Map<String, Object?> toArgMap() => {
    if (exclusion != null)
      'exclusion': exclusion!.map((e) => e.toArgMap()).toList(),
  };
}

@immutable
class ComputeRegionSecurityPolicyRulePreconfiguredWafExclusion {
  const ComputeRegionSecurityPolicyRulePreconfiguredWafExclusion({
    this.requestCookie,
    this.requestHeader,
    this.requestQueryParam,
    this.requestUri,
  });

  final ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestCookie;
  final ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestHeader;
  final ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestQueryParam;
  final ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestUri;

  Map<String, Object?> toArgMap() => {
    if (requestCookie != null) 'request_cookie': [requestCookie!.toArgMap()],
    if (requestHeader != null) 'request_header': [requestHeader!.toArgMap()],
    if (requestQueryParam != null)
      'request_query_param': [requestQueryParam!.toArgMap()],
    if (requestUri != null) 'request_uri': [requestUri!.toArgMap()],
  };
}

@immutable
class ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch {
  const ComputeRegionSecurityPolicyRulePreconfiguredWafExclusionMatch({
    this.operator,
    this.value,
  });

  final SecurityPolicyWafExclusionOperator? operator;
  final TfArg<String>? value;

  Map<String, Object?> toArgMap() => {
    if (operator != null) 'operator': operator!.terraformValue,
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_region_security_policy_rule`.
///
/// A rule for the RegionSecurityPolicy.
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
    ComputeRegionSecurityPolicyRulePreconfiguredWafConfig?
    preconfiguredWafConfig,
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
             'preconfigured_waf_config': TfArg.literal([
               preconfiguredWafConfig.toArgMap(),
             ]),
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
