// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_namespace.dart'
    show GoogleBiglakeIcebergNamespace;

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
    TfArg<String>? catalog,
    required RefTo<GoogleBiglakeIcebergNamespace> namespace,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? namespace.alsoAs('catalog')),
           'namespace_id': namespace.encodeAs('namespace_id'),
           'policy_data': policyData,
           'project': ?(project ?? namespace.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergNamespaceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergNamespaceIamPolicy>`.
  RefTo<GoogleBiglakeIcebergNamespaceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalogRef => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');
}
