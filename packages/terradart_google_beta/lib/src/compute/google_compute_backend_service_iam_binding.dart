// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_backend_service_iam_binding`.
const Set<String> _googleComputeBackendServiceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_compute_backend_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Compute Backend Service.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleComputeBackendServiceIamMember] for additive grants.
final class GoogleComputeBackendServiceIamBinding extends Resource {
  static const String tfType = 'google_compute_backend_service_iam_binding';

  GoogleComputeBackendServiceIamBinding({
    required super.localName,
    required TfArg<List<String>> members,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> role,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'members': members,
           'name': name,
           if (project != null) 'project': project,
           'role': role,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeBackendServiceIamBindingSensitive;
}
