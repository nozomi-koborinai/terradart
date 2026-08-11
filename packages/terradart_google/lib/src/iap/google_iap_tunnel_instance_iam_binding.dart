// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_instance_iam_binding`.
const Set<String> _googleIapTunnelInstanceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_instance_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP TCP forwarding to a
/// Compute Engine instance (`iap.tunnel.instances.<instance>`).
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelInstanceIamMember] for additive grants.
final class GoogleIapTunnelInstanceIamBinding extends Resource {
  static const String tfType = 'google_iap_tunnel_instance_iam_binding';

  GoogleIapTunnelInstanceIamBinding({
    required super.localName,
    required TfArg<String> instance,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? zone,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (zone != null) 'zone': zone,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapTunnelInstanceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
