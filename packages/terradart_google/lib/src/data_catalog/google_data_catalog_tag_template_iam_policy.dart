// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_tag_template_iam_policy`.
const Set<String> _googleDataCatalogTagTemplateIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_tag_template_iam_policy`.
///
/// Authoritative IAM policy for a Data Catalog tag template.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataCatalogTagTemplateIamMember] for single-principal grants.
final class GoogleDataCatalogTagTemplateIamPolicy extends Resource {
  static const String tfType = 'google_data_catalog_tag_template_iam_policy';

  GoogleDataCatalogTagTemplateIamPolicy({
    required super.localName,
    required TfArg<String> tagTemplate,
    TfArg<String>? region,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_template': tagTemplate,
           if (region != null) 'region': region,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
