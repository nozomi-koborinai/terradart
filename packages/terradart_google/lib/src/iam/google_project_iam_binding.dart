// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_project_iam_binding`.
const Set<String> _googleProjectIamBindingSensitive = <String>{};

/// Factory wrapper for `google_project_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GCP project.
///
/// Replaces the entire member list for that role on the project. Prefer
/// [GoogleProjectIamMember] for additive grants.
final class GoogleProjectIamBinding extends Resource {
  static const String tfType = 'google_project_iam_binding';

  GoogleProjectIamBinding({
    required super.localName,
    required TfArg<String> project,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'project': project,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleProjectIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
