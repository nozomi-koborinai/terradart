// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> catalog,
    required TfArg<String> namespace,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace': namespace,
           'name': name,
           'policy_data': policyData,
           'project': ?project,
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
