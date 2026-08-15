// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_table_iam_policy`.
const Set<String> _googleBiglakeIcebergTableIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_table_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBiglakeIcebergTableIamPolicy extends Data {
  static const String tfType = 'google_biglake_iceberg_table_iam_policy';

  DataGoogleBiglakeIcebergTableIamPolicy({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> name,
    required TfArg<String> namespace,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'name': name,
           'namespace': namespace,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergTableIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
