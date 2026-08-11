// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_catalog_tag_template_iam_member`.
const Set<String> _googleDataCatalogTagTemplateIamMemberSensitive = <String>{};

/// Factory wrapper for `google_data_catalog_tag_template_iam_member`.
final class GoogleDataCatalogTagTemplateIamMember extends Resource {
  static const String tfType = 'google_data_catalog_tag_template_iam_member';

  GoogleDataCatalogTagTemplateIamMember({
    required super.localName,
    required TfArg<String> tagTemplate,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<String> member,
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
           'member': member,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
