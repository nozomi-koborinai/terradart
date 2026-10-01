// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../network/google_network_security_address_group.dart'
    show GoogleNetworkSecurityAddressGroup;

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
    required RefTo<GoogleNetworkSecurityAddressGroup> addressGroup,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': addressGroup.encodeAs('name'),
           'location': ?(location ?? addressGroup.alsoAs('location')),
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleNetworkSecurityAddressGroupIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetworkSecurityAddressGroupIamPolicy>`.
  RefTo<GoogleNetworkSecurityAddressGroupIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
