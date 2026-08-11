// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_tunnel_iam_binding`.
const Set<String> _googleIapTunnelIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_tunnel_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on IAP TCP forwarding
/// at **project scope** (`iap.tunnel`).
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapTunnelIamMember] for additive grants.
final class GoogleIapTunnelIamBinding extends Resource {
  static const String tfType = 'google_iap_tunnel_iam_binding';

  GoogleIapTunnelIamBinding({
    required super.localName,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleIapTunnelIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
