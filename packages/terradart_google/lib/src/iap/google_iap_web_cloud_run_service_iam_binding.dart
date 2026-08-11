// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_cloud_run_service_iam_binding`.
const Set<String> _googleIapWebCloudRunServiceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_iap_web_cloud_run_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP-protected
/// Cloud Run service (`iap.web.services.<service>`).
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebCloudRunServiceIamMember] for additive grants.
final class GoogleIapWebCloudRunServiceIamBinding extends Resource {
  static const String tfType = 'google_iap_web_cloud_run_service_iam_binding';

  GoogleIapWebCloudRunServiceIamBinding({
    required super.localName,
    required TfArg<String> cloudRunServiceName,
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
           'cloud_run_service_name': cloudRunServiceName,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebCloudRunServiceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
