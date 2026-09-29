// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleIapTunnelDestGroupIamPolicy({
    required super.localName,
    required TfArg<String> destGroup,
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
           'dest_group': destGroup,
           'region': ?region,
           'policy_data': policyData,
           'project': ?project,
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
}
