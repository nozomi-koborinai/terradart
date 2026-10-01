// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../iap/google_iap_web_forwarding_rule_service_iam_policy.dart';

/// Sensitive field paths for `google_iap_web_forwarding_rule_service_iam_policy`.
const Set<String> _googleIapWebForwardingRuleServiceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_forwarding_rule_service_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleIapWebForwardingRuleServiceIamPolicy extends Data {
  static const String tfType =
      'google_iap_web_forwarding_rule_service_iam_policy';

  DataGoogleIapWebForwardingRuleServiceIamPolicy(
    super.localName, {
    required TfArg<String> forwardingRuleServiceName,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_service_name': forwardingRuleServiceName,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebForwardingRuleServiceIamPolicySensitive;

  /// A reference to the `google_iap_web_forwarding_rule_service_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleIapWebForwardingRuleServiceIamPolicy>`.
  RefTo<GoogleIapWebForwardingRuleServiceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `forwarding_rule_service_name` attribute.
  TfRef<String> get forwardingRuleServiceName =>
      TfRef.attribute<String>(this, 'forwarding_rule_service_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
