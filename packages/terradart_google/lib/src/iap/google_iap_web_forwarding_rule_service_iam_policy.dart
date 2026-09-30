// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_forwarding_rule_service_iam_policy`.
const Set<String> _googleIapWebForwardingRuleServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_forwarding_rule_service_iam_policy`.
///
/// Authoritative IAM policy for an IAP-protected forwarding rule service.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebForwardingRuleServiceIamMember] for single-principal grants.
final class GoogleIapWebForwardingRuleServiceIamPolicy extends Resource {
  static const String tfType =
      'google_iap_web_forwarding_rule_service_iam_policy';

  GoogleIapWebForwardingRuleServiceIamPolicy({
    required super.localName,
    required TfArg<String> forwardingRuleServiceName,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_service_name': forwardingRuleServiceName,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebForwardingRuleServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebForwardingRuleServiceIamPolicy>`.
  RefTo<GoogleIapWebForwardingRuleServiceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `forwarding_rule_service_name` attribute.
  TfRef<String> get forwardingRuleServiceNameRef =>
      TfRef.attribute<String>(this, 'forwarding_rule_service_name');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
