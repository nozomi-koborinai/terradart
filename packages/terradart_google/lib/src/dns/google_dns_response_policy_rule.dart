// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_response_policy_rule`.
const Set<String> _googleDnsResponsePolicyRuleSensitive = <String>{};

/// Factory wrapper for `google_dns_response_policy_rule`.
final class GoogleDnsResponsePolicyRule extends Resource {
  static const String tfType = 'google_dns_response_policy_rule';

  GoogleDnsResponsePolicyRule({
    required super.localName,
    required TfArg<String> responsePolicy,
    required TfArg<String> ruleName,
    required TfArg<String> dnsName,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? localData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'response_policy': responsePolicy,
           'rule_name': ruleName,
           'dns_name': dnsName,
           if (project != null) 'project': project,
           if (localData != null) 'local_data': localData,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsResponsePolicyRuleSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
