// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_iap_web_region_backend_service_iam_binding`.
const Set<String> _googleIapWebRegionBackendServiceIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_iap_web_region_backend_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an IAP-protected
/// regional backend service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleIapWebRegionBackendServiceIamMember] for additive grants.
final class GoogleIapWebRegionBackendServiceIamBinding extends Resource {
  static const String tfType =
      'google_iap_web_region_backend_service_iam_binding';

  GoogleIapWebRegionBackendServiceIamBinding({
    required super.localName,
    required TfArg<String> webRegionBackendService,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'web_region_backend_service': webRegionBackendService,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (region != null) 'region': region,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleIapWebRegionBackendServiceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
