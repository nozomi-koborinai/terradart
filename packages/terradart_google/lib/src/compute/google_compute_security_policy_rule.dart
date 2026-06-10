// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_security_policy_rule`.
const Set<String> _googleComputeSecurityPolicyRuleSensitive = <String>{};

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
    TfArg<Map<String, dynamic>>? match,
    TfArg<Map<String, dynamic>>? preconfiguredWafConfig,
    TfArg<Map<String, dynamic>>? rateLimitOptions,
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
           if (match != null) 'match': match,
           if (preconfiguredWafConfig != null)
             'preconfigured_waf_config': preconfiguredWafConfig,
           if (rateLimitOptions != null) 'rate_limit_options': rateLimitOptions,
           if (redirectOptions != null) 'redirect_options': redirectOptions,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeSecurityPolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
