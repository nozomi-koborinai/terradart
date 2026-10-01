// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_table.dart'
    show GoogleBiglakeIcebergTable;

/// Sensitive field paths for `google_biglake_iceberg_table_iam_policy`.
const Set<String> _googleBiglakeIcebergTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_table_iam_policy`.
///
/// Authoritative IAM policy for a BigLake Iceberg table.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergTableIamMember] for
/// single-principal grants.
final class GoogleBiglakeIcebergTableIamPolicy extends Resource {
  static const String tfType = 'google_biglake_iceberg_table_iam_policy';

  GoogleBiglakeIcebergTableIamPolicy({
    required super.localName,
    TfArg<String>? catalog,
    TfArg<String>? namespace,
    required RefTo<GoogleBiglakeIcebergTable> table,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? table.alsoAs('catalog')),
           'namespace': ?(namespace ?? table.alsoAs('namespace')),
           'name': table.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? table.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergTableIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergTableIamPolicy>`.
  RefTo<GoogleBiglakeIcebergTableIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalogRef => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespaceRef => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
