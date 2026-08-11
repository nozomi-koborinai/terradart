// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_endpoints_service_iam_binding`.
const Set<String> _googleEndpointsServiceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_endpoints_service_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Endpoints service.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleEndpointsServiceIamMember] for additive grants.
final class GoogleEndpointsServiceIamBinding extends Resource {
  static const String tfType = 'google_endpoints_service_iam_binding';

  GoogleEndpointsServiceIamBinding({
    required super.localName,
    required TfArg<String> serviceName,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'service_name': serviceName,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleEndpointsServiceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
