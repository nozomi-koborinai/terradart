// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/google_storage_managed_folder_iam_policy.dart';
import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_managed_folder_iam_policy`.
const Set<String> _googleStorageManagedFolderIamPolicySensitive = <String>{};

/// Factory wrapper for `google_storage_managed_folder_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageManagedFolderIamPolicy extends Data {
  static const String tfType = 'google_storage_managed_folder_iam_policy';

  DataGoogleStorageManagedFolderIamPolicy({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> managedFolder,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'managed_folder': managedFolder,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleStorageManagedFolderIamPolicySensitive;

  /// A reference to the `google_storage_managed_folder_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleStorageManagedFolderIamPolicy>`.
  RefTo<GoogleStorageManagedFolderIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `managed_folder` attribute.
  TfRef<String> get managedFolder =>
      TfRef.attribute<String>(this, 'managed_folder');
}
