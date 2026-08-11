// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iam_workload_identity_pool_iam_binding`.
const Set<String> _googleIamWorkloadIdentityPoolIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_iam_workload_identity_pool_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Workload Identity Federation pool.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIamWorkloadIdentityPoolIamMember] for additive grants.
final class GoogleIamWorkloadIdentityPoolIamBinding extends Resource {
  static const String tfType = 'google_iam_workload_identity_pool_iam_binding';

  GoogleIamWorkloadIdentityPoolIamBinding({
    required super.localName,
    required TfArg<String> workloadIdentityPoolId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workload_identity_pool_id': workloadIdentityPoolId,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIamWorkloadIdentityPoolIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
