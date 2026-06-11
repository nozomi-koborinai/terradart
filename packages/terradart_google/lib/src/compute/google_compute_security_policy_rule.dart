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

/// Sensitive field paths for `google_compute_security_policy_rule`.
const Set<String> _googleComputeSecurityPolicyRuleSensitive = <String>{};

/// `match` block — condition that fires this standalone rule.
@immutable
class ComputeSecurityPolicyRuleMatch {
  const ComputeSecurityPolicyRuleMatch({this.versionedExpr, this.config});

  final SecurityPolicyRuleMatchVersionedExpr? versionedExpr;
  final ComputeSecurityPolicyRuleMatchConfig? config;

  Map<String, Object?> toArgMap() => {
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.terraformValue,
    if (config != null) 'config': config!.toArgMap(),
  };
}

@immutable
class ComputeSecurityPolicyRuleMatchConfig {
  const ComputeSecurityPolicyRuleMatchConfig({required this.srcIpRanges});

  final List<String> srcIpRanges;

  Map<String, Object?> toArgMap() => {'src_ip_ranges': srcIpRanges};
}

@immutable
class ComputeSecurityPolicyRuleRateLimitOptions {
  const ComputeSecurityPolicyRuleRateLimitOptions({
    this.enforceOnKey,
    this.enforceOnKeyName,
    this.enforceOnKeyConfigs,
  });

  final SecurityPolicyRuleRateLimitEnforceOnKey? enforceOnKey;
  final TfArg<String>? enforceOnKeyName;
  final List<ComputeSecurityPolicyRuleRateLimitEnforceOnKeyConfig>?
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
class ComputeSecurityPolicyRuleRateLimitEnforceOnKeyConfig {
  const ComputeSecurityPolicyRuleRateLimitEnforceOnKeyConfig({
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
class ComputeSecurityPolicyRulePreconfiguredWafConfig {
  const ComputeSecurityPolicyRulePreconfiguredWafConfig({this.exclusion});

  final List<ComputeSecurityPolicyRulePreconfiguredWafExclusion>? exclusion;

  Map<String, Object?> toArgMap() => {
    if (exclusion != null)
      'exclusion': exclusion!.map((e) => e.toArgMap()).toList(),
  };
}

@immutable
class ComputeSecurityPolicyRulePreconfiguredWafExclusion {
  const ComputeSecurityPolicyRulePreconfiguredWafExclusion({
    this.requestCookie,
    this.requestHeader,
    this.requestQueryParam,
    this.requestUri,
  });

  final ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch? requestCookie;
  final ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch? requestHeader;
  final ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch?
  requestQueryParam;
  final ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch? requestUri;

  Map<String, Object?> toArgMap() => {
    if (requestCookie != null) 'request_cookie': [requestCookie!.toArgMap()],
    if (requestHeader != null) 'request_header': [requestHeader!.toArgMap()],
    if (requestQueryParam != null)
      'request_query_param': [requestQueryParam!.toArgMap()],
    if (requestUri != null) 'request_uri': [requestUri!.toArgMap()],
  };
}

@immutable
class ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch {
  const ComputeSecurityPolicyRulePreconfiguredWafExclusionMatch({
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
    ComputeSecurityPolicyRulePreconfiguredWafConfig? preconfiguredWafConfig,
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
             'preconfigured_waf_config': TfArg.literal([
               preconfiguredWafConfig.toArgMap(),
             ]),
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
