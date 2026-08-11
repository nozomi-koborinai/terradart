// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_table_iam_binding`.
const Set<String> _googleBiglakeIcebergTableIamBindingSensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_table_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigLake Iceberg
/// table.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergTableIamMember] for
/// additive grants.
final class GoogleBiglakeIcebergTableIamBinding extends Resource {
  static const String tfType = 'google_biglake_iceberg_table_iam_binding';

  GoogleBiglakeIcebergTableIamBinding({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> namespace,
    required TfArg<String> name,
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
           'namespace': namespace,
           'name': name,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergTableIamBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
