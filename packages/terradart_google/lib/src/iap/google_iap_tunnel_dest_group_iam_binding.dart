// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_dest_group_iam_binding`.
const Set<String> _googleIapTunnelDestGroupIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_dest_group_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a IAP TCP-forwarding destination group.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelDestGroupIamMember] for additive grants.
final class GoogleIapTunnelDestGroupIamBinding extends Resource {
  static const String tfType = 'google_iap_tunnel_dest_group_iam_binding';

  GoogleIapTunnelDestGroupIamBinding({
    required super.localName,
    required TfArg<String> destGroup,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'dest_group': destGroup,
           if (region != null) 'region': region,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapTunnelDestGroupIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
