// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_tag_template_iam_binding`.
const Set<String> _googleDataCatalogTagTemplateIamBindingSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_tag_template_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Data Catalog tag template.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleDataCatalogTagTemplateIamMember] for additive grants.
final class GoogleDataCatalogTagTemplateIamBinding extends Resource {
  static const String tfType = 'google_data_catalog_tag_template_iam_binding';

  GoogleDataCatalogTagTemplateIamBinding({
    required super.localName,
    required TfArg<String> tagTemplate,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_template': tagTemplate,
           if (region != null) 'region': region,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
