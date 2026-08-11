// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_gke_hub_scope_iam_binding`.
const Set<String> _googleGkeHubScopeIamBindingSensitive = <String>{};

/// Factory wrapper for `google_gke_hub_scope_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GKE Hub fleet scope.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleGkeHubScopeIamMember] for additive grants.
final class GoogleGkeHubScopeIamBinding extends Resource {
  static const String tfType = 'google_gke_hub_scope_iam_binding';

  GoogleGkeHubScopeIamBinding({
    required super.localName,
    required TfArg<String> scopeId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'scope_id': scopeId,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleGkeHubScopeIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
