// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_iam_policy`.
const Set<String> _googleIapTunnelIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_iam_policy`.
///
/// Authoritative IAM policy for IAP TCP forwarding at **project scope**
/// (`iap.tunnel`).
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelIamMember] for single-principal grants.
final class GoogleIapTunnelIamPolicy extends Resource {
  static const String tfType = 'google_iap_tunnel_iam_policy';

  GoogleIapTunnelIamPolicy({
    required super.localName,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
