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

/// Typed helper for the `header_action` block of
/// `google_compute_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeSecurityPolicyRuleHeaderAction {
  const ComputeSecurityPolicyRuleHeaderAction({this.requestHeadersToAdds});

  final List<ComputeSecurityPolicyRuleHeaderActionRequestHeadersToAdds>?
  requestHeadersToAdds;

  Map<String, Object?> encode() => {
    if (requestHeadersToAdds != null)
      'request_headers_to_adds': [
        for (final e in requestHeadersToAdds!) e.encode(),
      ],
  };
}

/// Typed helper for the `header_action.request_headers_to_adds` block of
/// `google_compute_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeSecurityPolicyRuleHeaderActionRequestHeadersToAdds {
  const ComputeSecurityPolicyRuleHeaderActionRequestHeadersToAdds({
    this.headerName,
    this.headerValue,
  });

  final TfArg<String>? headerName;

  final TfArg<String>? headerValue;

  Map<String, Object?> encode() => {
    'header_name': ?headerName?.toTfJson(),
    'header_value': ?headerValue?.toTfJson(),
  };
}

/// Typed helper for the `redirect_options` block of
/// `google_compute_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeSecurityPolicyRuleRedirectOptions {
  const ComputeSecurityPolicyRuleRedirectOptions({this.target, this.type});

  final TfArg<String>? target;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'target': ?target?.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_security_policy_rule`.
///
/// A rule for the SecurityPolicy.
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
    ComputeSecurityPolicyRuleHeaderAction? headerAction,
    ComputeSecurityPolicyRuleMatch? match,
    ComputeSecurityPolicyRulePreconfiguredWafConfig? preconfiguredWafConfig,
    ComputeSecurityPolicyRuleRateLimitOptions? rateLimitOptions,
    ComputeSecurityPolicyRuleRedirectOptions? redirectOptions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           'description': ?description,
           'preview': ?preview,
           'priority': priority,
           'project': ?project,
           'security_policy': securityPolicy,
           if (headerAction != null)
             'header_action': TfArg.literal(headerAction.encode()),
           if (match != null) 'match': TfArg.literal([match.toArgMap()]),
           if (preconfiguredWafConfig != null)
             'preconfigured_waf_config': TfArg.literal([
               preconfiguredWafConfig.toArgMap(),
             ]),
           if (rateLimitOptions != null)
             'rate_limit_options': TfArg.literal([rateLimitOptions.toArgMap()]),
           if (redirectOptions != null)
             'redirect_options': TfArg.literal(redirectOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSecurityPolicyRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeSecurityPolicyRule>`.
  RefTo<GoogleComputeSecurityPolicyRule> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `action` attribute.
  TfRef<String> get actionRef => TfRef.attribute<String>(this, 'action');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `preview` attribute.
  TfRef<bool> get previewRef => TfRef.attribute<bool>(this, 'preview');

  /// Reference to `priority` attribute.
  TfRef<num> get priorityRef => TfRef.attribute<num>(this, 'priority');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicyRef =>
      TfRef.attribute<String>(this, 'security_policy');
}
