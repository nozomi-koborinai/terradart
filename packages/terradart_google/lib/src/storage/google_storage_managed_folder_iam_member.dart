// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_managed_folder_iam_member`.
const Set<String> _googleStorageManagedFolderIamMemberSensitive = <String>{};

/// Factory wrapper for `google_storage_managed_folder_iam_member`.
///
/// Additive IAM grant on a [GoogleStorageManagedFolder]. Prefer this over
/// binding/policy when you only need to add one (`role`, `member`) tuple.
///
/// Example:
/// ```dart
/// GoogleStorageManagedFolderIamMember(
///   localName: 'folder_viewer',
///   bucket: TfArg.ref(assets.nameRef),
///   managedFolder: TfArg.ref(folder.nameRef),
///   role: TfArg.literal('roles/storage.objectViewer'),
///   member: TfArg.ref(reader.iamMember),
/// );
/// ```
final class GoogleStorageManagedFolderIamMember extends Resource {
  static const String tfType = 'google_storage_managed_folder_iam_member';

  GoogleStorageManagedFolderIamMember({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> managedFolder,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'managed_folder': managedFolder,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageManagedFolderIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
