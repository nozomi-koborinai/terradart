// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iap/google_iap_tunnel_dest_group.dart' show GoogleIapTunnelDestGroup;

/// Sensitive field paths for `google_iap_tunnel_dest_group_iam_policy`.
const Set<String> _googleIapTunnelDestGroupIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_dest_group_iam_policy`.
///
/// Authoritative IAM policy for a IAP TCP-forwarding destination group.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelDestGroupIamMember] for single-principal grants.
final class GoogleIapTunnelDestGroupIamPolicy extends Resource {
  static const String tfType = 'google_iap_tunnel_dest_group_iam_policy';

  GoogleIapTunnelDestGroupIamPolicy(
    super.localName, {
    required RefTo<GoogleIapTunnelDestGroup> destGroup,
    TfArg<String>? region,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dest_group': destGroup.encodeAs('name'),
           'region': ?(region ?? destGroup.alsoAs('region')),
           'policy_data': policyData,
           'project': ?(project ?? destGroup.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapTunnelDestGroupIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelDestGroupIamPolicy>`.
  RefTo<GoogleIapTunnelDestGroupIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `dest_group` attribute.
  TfRef<String> get destGroup => TfRef.attribute<String>(this, 'dest_group');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
