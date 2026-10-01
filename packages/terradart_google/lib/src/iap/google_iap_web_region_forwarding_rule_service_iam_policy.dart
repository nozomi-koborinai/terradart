// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_region_forwarding_rule_service_iam_policy`.
const Set<String> _googleIapWebRegionForwardingRuleServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_region_forwarding_rule_service_iam_policy`.
///
/// Authoritative IAM policy for an IAP-protected regional forwarding rule
/// service.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebRegionForwardingRuleServiceIamMember] for single-principal grants.
final class GoogleIapWebRegionForwardingRuleServiceIamPolicy extends Resource {
  static const String tfType =
      'google_iap_web_region_forwarding_rule_service_iam_policy';

  GoogleIapWebRegionForwardingRuleServiceIamPolicy(
    super.localName, {
    required TfArg<String> forwardingRuleRegionServiceName,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_region_service_name':
               forwardingRuleRegionServiceName,
           'policy_data': policyData,
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionForwardingRuleServiceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapWebRegionForwardingRuleServiceIamPolicy>`.
  RefTo<GoogleIapWebRegionForwardingRuleServiceIamPolicy> get ref =>
      RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `forwarding_rule_region_service_name` attribute.
  TfRef<String> get forwardingRuleRegionServiceName =>
      TfRef.attribute<String>(this, 'forwarding_rule_region_service_name');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
