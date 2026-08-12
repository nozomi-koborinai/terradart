// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloud_run_service_iam_binding`.
const Set<String> _googleCloudRunServiceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_cloud_run_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Run (v1) service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudRunServiceIamMember] for additive grants.
/// Prefer [GoogleCloudRunV2ServiceIamMember] for Cloud Run v2 services.
final class GoogleCloudRunServiceIamBinding extends Resource {
  static const String tfType = 'google_cloud_run_service_iam_binding';

  GoogleCloudRunServiceIamBinding({
    required super.localName,
    required TfArg<String> service,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service': service,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudRunServiceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
