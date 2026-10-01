// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_managed_folder.dart'
    show GoogleStorageManagedFolder;

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
    TfArg<String>? bucket,
    required RefTo<GoogleStorageManagedFolder> managedFolder,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': ?(bucket ?? managedFolder.alsoAs('bucket')),
           'managed_folder': managedFolder.encodeAs('name'),
           'policy_data': policyData,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageManagedFolderIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageManagedFolderIamPolicy>`.
  RefTo<GoogleStorageManagedFolderIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `managed_folder` attribute.
  TfRef<String> get managedFolder =>
      TfRef.attribute<String>(this, 'managed_folder');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
