// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_namespace_iam_binding`.
const Set<String> _googleBiglakeIcebergNamespaceIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_biglake_iceberg_namespace_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigLake Iceberg
/// namespace.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergNamespaceIamMember] for
/// additive grants.
final class GoogleBiglakeIcebergNamespaceIamBinding extends Resource {
  static const String tfType = 'google_biglake_iceberg_namespace_iam_binding';

  GoogleBiglakeIcebergNamespaceIamBinding({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> namespaceId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace_id': namespaceId,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergNamespaceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
