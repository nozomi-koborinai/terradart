// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_organization_security_policy_rule`.
const Set<String> _googleComputeOrganizationSecurityPolicyRuleSensitive =
    <String>{};

/// Typed helper for the `header_action` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRuleHeaderAction {
  const ComputeOrganizationSecurityPolicyRuleHeaderAction({
    this.requestHeadersToAdds,
  });

  final List<
    ComputeOrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdds
  >?
  requestHeadersToAdds;

  Map<String, Object?> encode() => {
    if (requestHeadersToAdds != null)
      'request_headers_to_adds': [
        for (final e in requestHeadersToAdds!) e.encode(),
      ],
  };
}

/// Typed helper for the `header_action.request_headers_to_adds` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdds {
  const ComputeOrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAdds({
    this.headerName,
    this.headerValue,
  });

  final TfArg<String>? headerName;

  final TfArg<String>? headerValue;

  Map<String, Object?> encode() => {
    if (headerName != null) 'header_name': headerName!.toTfJson(),
    if (headerValue != null) 'header_value': headerValue!.toTfJson(),
  };
}

/// Typed helper for the `match` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRuleMatch {
  const ComputeOrganizationSecurityPolicyRuleMatch({
    this.description,
    this.versionedExpr,
    this.config,
    this.expr,
  });

  final TfArg<String>? description;

  final TfArg<String>? versionedExpr;

  final ComputeOrganizationSecurityPolicyRuleMatchConfig? config;

  final ComputeOrganizationSecurityPolicyRuleMatchExpr? expr;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (versionedExpr != null) 'versioned_expr': versionedExpr!.toTfJson(),
    if (config != null) 'config': config!.encode(),
    if (expr != null) 'expr': expr!.encode(),
  };
}

/// Typed helper for the `match.config` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRuleMatchConfig {
  const ComputeOrganizationSecurityPolicyRuleMatchConfig({this.srcIpRanges});

  final TfArg<List<Object?>>? srcIpRanges;

  Map<String, Object?> encode() => {
    if (srcIpRanges != null) 'src_ip_ranges': srcIpRanges!.toTfJson(),
  };
}

/// Typed helper for the `match.expr` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRuleMatchExpr {
  const ComputeOrganizationSecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  final TfArg<String> expression;

  Map<String, Object?> encode() => {'expression': expression.toTfJson()};
}

/// Typed helper for the `preconfigured_waf_config` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfig {
  const ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfig({
    this.exclusion,
  });

  final List<
    ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion
  >?
  exclusion;

  Map<String, Object?> encode() => {
    if (exclusion != null)
      'exclusion': [for (final e in exclusion!) e.encode()],
  };
}

/// Typed helper for the `preconfigured_waf_config.exclusion` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion {
  const ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion({
    this.targetRuleIds,
    required this.targetRuleSet,
    this.requestCookie,
    this.requestHeader,
    this.requestQueryParam,
    this.requestUri,
  });

  final TfArg<List<Object?>>? targetRuleIds;

  final TfArg<String> targetRuleSet;

  final List<
    ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCookie
  >?
  requestCookie;

  final List<
    ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader
  >?
  requestHeader;

  final List<
    ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
  >?
  requestQueryParam;

  final List<
    ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri
  >?
  requestUri;

  Map<String, Object?> encode() => {
    if (targetRuleIds != null) 'target_rule_ids': targetRuleIds!.toTfJson(),
    'target_rule_set': targetRuleSet.toTfJson(),
    if (requestCookie != null)
      'request_cookie': [for (final e in requestCookie!) e.encode()],
    if (requestHeader != null)
      'request_header': [for (final e in requestHeader!) e.encode()],
    if (requestQueryParam != null)
      'request_query_param': [for (final e in requestQueryParam!) e.encode()],
    if (requestUri != null)
      'request_uri': [for (final e in requestUri!) e.encode()],
  };
}

/// Typed helper for the `preconfigured_waf_config.exclusion.request_cookie` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCookie {
  const ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCookie({
    required this.operator,
    this.value,
  });

  final TfArg<String> operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `preconfigured_waf_config.exclusion.request_header` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader {
  const ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader({
    required this.operator,
    this.value,
  });

  final TfArg<String> operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `preconfigured_waf_config.exclusion.request_query_param` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam {
  const ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam({
    required this.operator,
    this.value,
  });

  final TfArg<String> operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `preconfigured_waf_config.exclusion.request_uri` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri {
  const ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri({
    required this.operator,
    this.value,
  });

  final TfArg<String> operator;

  final TfArg<String>? value;

  Map<String, Object?> encode() => {
    'operator': operator.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `redirect_options` block of
/// `google_compute_organization_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeOrganizationSecurityPolicyRuleRedirectOptions {
  const ComputeOrganizationSecurityPolicyRuleRedirectOptions({
    this.target,
    required this.type,
  });

  final TfArg<String>? target;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (target != null) 'target': target!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_organization_security_policy_rule`.
///
/// A rule for the OrganizationSecurityPolicy.
///
/// Org security policy rule — leftover factory on the
/// apply-excluded path (synth + `terraform validate` only).
///
/// Needs an organization / folder / external artifact that
/// standalone terradart-validate cannot supply. Do not apply.
final class GoogleComputeOrganizationSecurityPolicyRule extends Resource {
  static const String tfType =
      'google_compute_organization_security_policy_rule';

  GoogleComputeOrganizationSecurityPolicyRule({
    required super.localName,
    required TfArg<String> action,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required TfArg<String> policyId,
    TfArg<bool>? preview,
    required TfArg<num> priority,
    ComputeOrganizationSecurityPolicyRuleHeaderAction? headerAction,
    required ComputeOrganizationSecurityPolicyRuleMatch match,
    ComputeOrganizationSecurityPolicyRulePreconfiguredWafConfig?
    preconfiguredWafConfig,
    ComputeOrganizationSecurityPolicyRuleRedirectOptions? redirectOptions,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'action': action,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           'policy_id': policyId,
           if (preview != null) 'preview': preview,
           'priority': priority,
           if (headerAction != null)
             'header_action': TfArg.literal(headerAction.encode()),
           'match': TfArg.literal(match.encode()),
           if (preconfiguredWafConfig != null)
             'preconfigured_waf_config': TfArg.literal(
               preconfiguredWafConfig.encode(),
             ),
           if (redirectOptions != null)
             'redirect_options': TfArg.literal(redirectOptions.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeOrganizationSecurityPolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
