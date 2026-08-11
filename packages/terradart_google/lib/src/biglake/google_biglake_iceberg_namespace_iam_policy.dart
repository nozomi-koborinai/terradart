// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_namespace_iam_policy`.
const Set<String> _googleBiglakeIcebergNamespaceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_namespace_iam_policy`.
///
/// Authoritative IAM policy for a BigLake Iceberg namespace.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergNamespaceIamMember] for
/// single-principal grants.
final class GoogleBiglakeIcebergNamespaceIamPolicy extends Resource {
  static const String tfType = 'google_biglake_iceberg_namespace_iam_policy';

  GoogleBiglakeIcebergNamespaceIamPolicy({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> namespaceId,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace_id': namespaceId,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergNamespaceIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
