// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/google_storage_bucket_iam_policy.dart';

/// Sensitive field paths for `google_storage_bucket_iam_policy`.
const Set<String> _googleStorageBucketIamPolicySensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageBucketIamPolicy extends Data {
  static const String tfType = 'google_storage_bucket_iam_policy';

  DataGoogleStorageBucketIamPolicy({
    required super.localName,
    required TfArg<String> bucket,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'bucket': bucket});

  @override
  Set<String> get sensitiveFields => _googleStorageBucketIamPolicySensitive;

  /// A reference to the `google_storage_bucket_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleStorageBucketIamPolicy>`.
  // ignore: invalid_use_of_internal_member
  RefTo<GoogleStorageBucketIamPolicy> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
