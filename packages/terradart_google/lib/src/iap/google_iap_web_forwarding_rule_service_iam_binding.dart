// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_forwarding_rule_service_iam_binding`.
const Set<String> _googleIapWebForwardingRuleServiceIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_forwarding_rule_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP-protected
/// global/regional forwarding rule service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebForwardingRuleServiceIamMember] for additive grants.
final class GoogleIapWebForwardingRuleServiceIamBinding extends Resource {
  static const String tfType =
      'google_iap_web_forwarding_rule_service_iam_binding';

  GoogleIapWebForwardingRuleServiceIamBinding({
    required super.localName,
    required TfArg<String> forwardingRuleServiceName,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_service_name': forwardingRuleServiceName,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebForwardingRuleServiceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
