// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_service_directory_namespace_iam_policy`.
const Set<String> _googleServiceDirectoryNamespaceIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_service_directory_namespace_iam_policy`.
///
/// Authoritative IAM policy for a Service Directory namespace.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleServiceDirectoryNamespaceIamMember] for single-principal grants.
final class GoogleServiceDirectoryNamespaceIamPolicy extends Resource {
  static const String tfType = 'google_service_directory_namespace_iam_policy';

  GoogleServiceDirectoryNamespaceIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'policy_data': policyData},
       );

  @override
  Set<String> get sensitiveFields =>
      _googleServiceDirectoryNamespaceIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
