// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_managed_folder_iam_binding`.
const Set<String> _googleStorageManagedFolderIamBindingSensitive = <String>{};

/// Factory wrapper for `google_storage_managed_folder_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Storage
/// managed folder.
///
/// Replaces the entire member list for that role on the managed folder.
/// Prefer [GoogleStorageManagedFolderIamMember] when adding one principal
/// without touching existing bindings.
final class GoogleStorageManagedFolderIamBinding extends Resource {
  static const String tfType = 'google_storage_managed_folder_iam_binding';

  GoogleStorageManagedFolderIamBinding({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> managedFolder,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'managed_folder': managedFolder,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageManagedFolderIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
