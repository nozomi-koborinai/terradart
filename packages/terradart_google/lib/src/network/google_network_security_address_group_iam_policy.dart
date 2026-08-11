// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_network_security_address_group_iam_policy`.
const Set<String> _googleNetworkSecurityAddressGroupIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_network_security_address_group_iam_policy`.
///
/// Authoritative IAM policy for a Network Security address group.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleNetworkSecurityAddressGroupIamMember] for single-principal grants.
final class GoogleNetworkSecurityAddressGroupIamPolicy extends Resource {
  static const String tfType =
      'google_network_security_address_group_iam_policy';

  GoogleNetworkSecurityAddressGroupIamPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAddressGroupIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
