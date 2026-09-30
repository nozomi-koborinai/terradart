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

/// Typed helper for the `network_match` block of
/// `google_compute_region_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionSecurityPolicyRuleNetworkMatch {
  const ComputeRegionSecurityPolicyRuleNetworkMatch({
    this.destIpRanges,
    this.destPorts,
    this.ipProtocols,
    this.srcAsns,
    this.srcIpRanges,
    this.srcPorts,
    this.srcRegionCodes,
    this.userDefinedFields,
  });

  final TfArg<List<String>>? destIpRanges;

  final TfArg<List<String>>? destPorts;

  final TfArg<List<String>>? ipProtocols;

  final TfArg<List<num>>? srcAsns;

  final TfArg<List<String>>? srcIpRanges;

  final TfArg<List<String>>? srcPorts;

  final TfArg<List<String>>? srcRegionCodes;

  final List<ComputeRegionSecurityPolicyRuleNetworkMatchUserDefinedFields>?
  userDefinedFields;

  Map<String, Object?> encode() => {
    'dest_ip_ranges': ?destIpRanges?.toTfJson(),
    'dest_ports': ?destPorts?.toTfJson(),
    'ip_protocols': ?ipProtocols?.toTfJson(),
    'src_asns': ?srcAsns?.toTfJson(),
    'src_ip_ranges': ?srcIpRanges?.toTfJson(),
    'src_ports': ?srcPorts?.toTfJson(),
    'src_region_codes': ?srcRegionCodes?.toTfJson(),
    if (userDefinedFields != null)
      'user_defined_fields': [for (final e in userDefinedFields!) e.encode()],
  };
}

/// Typed helper for the `network_match.user_defined_fields` block of
/// `google_compute_region_security_policy_rule` (derived from provider schema).
@immutable
final class ComputeRegionSecurityPolicyRuleNetworkMatchUserDefinedFields {
  const ComputeRegionSecurityPolicyRuleNetworkMatchUserDefinedFields({
    this.name,
    this.values,
  });

  final TfArg<String>? name;

  final TfArg<List<String>>? values;

  Map<String, Object?> encode() => {
    'name': ?name?.toTfJson(),
    'values': ?values?.toTfJson(),
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
    ComputeRegionSecurityPolicyRuleNetworkMatch? networkMatch,
    ComputeRegionSecurityPolicyRulePreconfiguredWafConfig?
    preconfiguredWafConfig,
    ComputeRegionSecurityPolicyRuleRateLimitOptions? rateLimitOptions,
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
           'region': region,
           'security_policy': securityPolicy,
           if (match != null) 'match': TfArg.literal([match.toArgMap()]),
           if (networkMatch != null)
             'network_match': TfArg.literal(networkMatch.encode()),
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionSecurityPolicyRule>`.
  RefTo<GoogleComputeRegionSecurityPolicyRule> get ref => RefTo.of(this);

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

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_policy` attribute.
  TfRef<String> get securityPolicyRef =>
      TfRef.attribute<String>(this, 'security_policy');
}
