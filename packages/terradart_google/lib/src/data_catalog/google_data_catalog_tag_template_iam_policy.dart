// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_tag_template.dart'
    show GoogleDataCatalogTagTemplate;

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
    required RefTo<GoogleDataCatalogTagTemplate> tagTemplate,
    TfArg<String>? region,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_template': tagTemplate.encodeAs('id'),
           'region': ?region,
           'policy_data': policyData,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTagTemplateIamPolicy>`.
  RefTo<GoogleDataCatalogTagTemplateIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyDataRef =>
      TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `tag_template` attribute.
  TfRef<String> get tagTemplateRef =>
      TfRef.attribute<String>(this, 'tag_template');
}
