// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_security_policy_rule`.
const Set<String> _googleComputeRegionSecurityPolicyRuleSensitive = <String>{};

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
    TfArg<Map<String, dynamic>>? match,
    TfArg<Map<String, dynamic>>? networkMatch,
    TfArg<Map<String, dynamic>>? preconfiguredWafConfig,
    TfArg<Map<String, dynamic>>? rateLimitOptions,
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
           if (match != null) 'match': match,
           if (networkMatch != null) 'network_match': networkMatch,
           if (preconfiguredWafConfig != null)
             'preconfigured_waf_config': preconfiguredWafConfig,
           if (rateLimitOptions != null) 'rate_limit_options': rateLimitOptions,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionSecurityPolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
