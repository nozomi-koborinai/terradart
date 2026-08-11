// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_region_forwarding_rule_service_iam_member`.
const Set<String> _googleIapWebRegionForwardingRuleServiceIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_region_forwarding_rule_service_iam_member`.
final class GoogleIapWebRegionForwardingRuleServiceIamMember extends Resource {
  static const String tfType =
      'google_iap_web_region_forwarding_rule_service_iam_member';

  GoogleIapWebRegionForwardingRuleServiceIamMember({
    required super.localName,
    required TfArg<String> forwardingRuleRegionServiceName,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'forwarding_rule_region_service_name':
               forwardingRuleRegionServiceName,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionForwardingRuleServiceIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
