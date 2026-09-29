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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'response_policy_name': responsePolicyName,
           'description': ?description,
           'project': ?project,
           'networks': ?networks,
           'gke_clusters': ?gkeClusters,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleDnsResponsePolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDnsResponsePolicy>`.
  RefTo<GoogleDnsResponsePolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
