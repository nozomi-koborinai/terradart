// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_region_forwarding_rule_service_iam_policy`.
const Set<String> _googleIapWebRegionForwardingRuleServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_region_forwarding_rule_service_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapWebRegionForwardingRuleServiceIamPolicy extends Data {
  static const String tfType =
      'google_iap_web_region_forwarding_rule_service_iam_policy';

  DataGoogleIapWebRegionForwardingRuleServiceIamPolicy({
    required super.localName,
    required TfArg<String> forwardingRuleRegionServiceName,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_region_service_name':
               forwardingRuleRegionServiceName,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionForwardingRuleServiceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
