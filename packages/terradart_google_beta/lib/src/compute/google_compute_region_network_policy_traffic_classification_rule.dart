// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_network_policy_traffic_classification_rule`.
const Set<String>
_googleComputeRegionNetworkPolicyTrafficClassificationRuleSensitive =
    <String>{};

/// Factory wrapper for `google_compute_region_network_policy_traffic_classification_rule`.
final class GoogleComputeRegionNetworkPolicyTrafficClassificationRule
    extends Resource {
  static const String tfType =
      'google_compute_region_network_policy_traffic_classification_rule';

  GoogleComputeRegionNetworkPolicyTrafficClassificationRule({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    TfArg<bool>? disabled,
    required TfArg<String> networkPolicy,
    required TfArg<num> priority,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? ruleName,
    TfArg<List<String>>? targetServiceAccounts,
    TfArg<Map<String, dynamic>>? action,
    required TfArg<Map<String, dynamic>> match,
    TfArg<List<Map<String, dynamic>>>? targetSecureTags,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (description != null) 'description': description,
           if (disabled != null) 'disabled': disabled,
           'network_policy': networkPolicy,
           'priority': priority,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (ruleName != null) 'rule_name': ruleName,
           if (targetServiceAccounts != null)
             'target_service_accounts': targetServiceAccounts,
           if (action != null) 'action': action,
           'match': match,
           if (targetSecureTags != null) 'target_secure_tags': targetSecureTags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionNetworkPolicyTrafficClassificationRuleSensitive;
}
