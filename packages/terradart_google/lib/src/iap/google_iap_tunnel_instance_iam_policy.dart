// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_instance_iam_policy`.
const Set<String> _googleIapTunnelInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_instance_iam_policy`.
///
/// Authoritative IAM policy for IAP TCP forwarding to a Compute Engine
/// instance (`iap.tunnel.instances.<instance>`).
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelInstanceIamMember] for single-principal grants.
final class GoogleIapTunnelInstanceIamPolicy extends Resource {
  static const String tfType = 'google_iap_tunnel_instance_iam_policy';

  GoogleIapTunnelInstanceIamPolicy(
    super.localName, {
    required TfArg<String> instance,
    required TfArg<String> policyData,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'policy_data': policyData,
           'zone': ?zone,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleIapTunnelInstanceIamPolicy>`.
  RefTo<GoogleIapTunnelInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
