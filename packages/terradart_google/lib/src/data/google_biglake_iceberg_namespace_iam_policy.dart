// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../biglake/google_biglake_iceberg_namespace_iam_policy.dart';

/// Sensitive field paths for `google_biglake_iceberg_namespace_iam_policy`.
const Set<String> _googleBiglakeIcebergNamespaceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_biglake_iceberg_namespace_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleBiglakeIcebergNamespaceIamPolicy extends Data {
  static const String tfType = 'google_biglake_iceberg_namespace_iam_policy';

  DataGoogleBiglakeIcebergNamespaceIamPolicy({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> namespaceId,
    TfArg<String>? project,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace_id': namespaceId,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergNamespaceIamPolicySensitive;

  /// A reference to the `google_biglake_iceberg_namespace_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleBiglakeIcebergNamespaceIamPolicy>`.
  RefTo<GoogleBiglakeIcebergNamespaceIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalog => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
