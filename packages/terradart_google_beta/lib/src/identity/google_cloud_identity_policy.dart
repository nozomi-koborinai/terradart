// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_identity_policy`.
const Set<String> _googleCloudIdentityPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_identity_policy`.
final class GoogleCloudIdentityPolicy extends Resource {
  static const String tfType = 'google_cloud_identity_policy';

  GoogleCloudIdentityPolicy({
    required super.localName,
    required TfArg<String> customer,
    TfArg<String>? deletionPolicy,
    required TfArg<Map<String, dynamic>> policyQuery,
    required TfArg<Map<String, dynamic>> setting,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'customer': customer,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'policy_query': policyQuery,
           'setting': setting,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudIdentityPolicySensitive;
}
