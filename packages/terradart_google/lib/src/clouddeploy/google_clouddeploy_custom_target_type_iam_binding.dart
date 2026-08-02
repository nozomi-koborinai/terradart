// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_custom_target_type_iam_binding`.
const Set<String> _googleClouddeployCustomTargetTypeIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_clouddeploy_custom_target_type_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Deploy custom
/// target type.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleClouddeployCustomTargetTypeIamMember] for additive grants.
final class GoogleClouddeployCustomTargetTypeIamBinding extends Resource {
  static const String tfType =
      'google_clouddeploy_custom_target_type_iam_binding';

  GoogleClouddeployCustomTargetTypeIamBinding({
    required super.localName,
    required TfArg<String> name,
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
           'name': name,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployCustomTargetTypeIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
