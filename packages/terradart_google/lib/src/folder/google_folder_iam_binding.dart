// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_folder_iam_binding`.
const Set<String> _googleFolderIamBindingSensitive = <String>{};

/// Factory wrapper for `google_folder_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GCP folder.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleFolderIamMember] for additive grants.
final class GoogleFolderIamBinding extends Resource {
  static const String tfType = 'google_folder_iam_binding';

  GoogleFolderIamBinding({
    required super.localName,
    required TfArg<String> folder,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'folder': folder,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFolderIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
