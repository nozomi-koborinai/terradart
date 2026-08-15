// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_tag_template_iam_policy`.
const Set<String> _googleDataCatalogTagTemplateIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_catalog_tag_template_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataCatalogTagTemplateIamPolicy extends Data {
  static const String tfType = 'google_data_catalog_tag_template_iam_policy';

  DataGoogleDataCatalogTagTemplateIamPolicy({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
    required TfArg<String> tagTemplate,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           'tag_template': tagTemplate,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
