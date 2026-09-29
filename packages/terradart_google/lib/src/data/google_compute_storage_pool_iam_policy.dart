// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../compute/google_compute_storage_pool_iam_policy.dart';

/// Sensitive field paths for `google_compute_storage_pool_iam_policy`.
const Set<String> _googleComputeStoragePoolIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_storage_pool_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeStoragePoolIamPolicy extends Data {
  static const String tfType = 'google_compute_storage_pool_iam_policy';

  DataGoogleComputeStoragePoolIamPolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? zone,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'project': ?project, 'zone': ?zone},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeStoragePoolIamPolicySensitive;

  /// A reference to the `google_compute_storage_pool_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleComputeStoragePoolIamPolicy>`.
  RefTo<GoogleComputeStoragePoolIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
