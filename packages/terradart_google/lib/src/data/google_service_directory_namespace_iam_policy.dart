// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../service_directory/google_service_directory_namespace_iam_policy.dart';

/// Sensitive field paths for `google_service_directory_namespace_iam_policy`.
const Set<String> _googleServiceDirectoryNamespaceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_service_directory_namespace_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleServiceDirectoryNamespaceIamPolicy extends Data {
  static const String tfType = 'google_service_directory_namespace_iam_policy';

  DataGoogleServiceDirectoryNamespaceIamPolicy(
    super.localName, {
    required TfArg<String> name,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'name': name});

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryNamespaceIamPolicySensitive;

  /// A reference to the `google_service_directory_namespace_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleServiceDirectoryNamespaceIamPolicy>`.
  RefTo<GoogleServiceDirectoryNamespaceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
