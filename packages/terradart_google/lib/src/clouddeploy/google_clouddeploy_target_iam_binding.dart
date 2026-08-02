// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_target_iam_binding`.
const Set<String> _googleClouddeployTargetIamBindingSensitive = <String>{};

/// Factory wrapper for `google_clouddeploy_target_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Deploy target.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleClouddeployTargetIamMember] for additive grants.
final class GoogleClouddeployTargetIamBinding extends Resource {
  static const String tfType = 'google_clouddeploy_target_iam_binding';

  GoogleClouddeployTargetIamBinding({
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
      _googleClouddeployTargetIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
