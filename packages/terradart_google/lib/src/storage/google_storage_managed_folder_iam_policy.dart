// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_managed_folder_iam_policy`.
const Set<String> _googleStorageManagedFolderIamPolicySensitive = <String>{};

/// Factory wrapper for `google_storage_managed_folder_iam_policy`.
///
/// Authoritative IAM policy for an entire Cloud Storage managed folder.
///
/// Replaces the managed folder's whole IAM policy. Prefer
/// [GoogleStorageManagedFolderIamMember] when an additive grant is enough.
final class GoogleStorageManagedFolderIamPolicy extends Resource {
  static const String tfType = 'google_storage_managed_folder_iam_policy';

  GoogleStorageManagedFolderIamPolicy({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> managedFolder,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'managed_folder': managedFolder,
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageManagedFolderIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
