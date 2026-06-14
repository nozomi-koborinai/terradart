// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_dns_response_policy`.
const Set<String> _googleDnsResponsePolicySensitive = <String>{};

/// Factory wrapper for `google_dns_response_policy`.
///
/// A Response Policy is a collection of selectors that apply to queries made
/// against one or more Virtual Private Cloud networks.
final class GoogleDnsResponsePolicy extends Resource {
  static const String tfType = 'google_dns_response_policy';

  GoogleDnsResponsePolicy({
    required super.localName,
    required TfArg<String> responsePolicyName,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<List<Map<String, dynamic>>>? networks,
    TfArg<List<Map<String, dynamic>>>? gkeClusters,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'response_policy_name': responsePolicyName,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           if (networks != null) 'networks': networks,
           if (gkeClusters != null) 'gke_clusters': gkeClusters,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsResponsePolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
