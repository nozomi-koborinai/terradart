// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_tag_template.dart'
    show GoogleDataCatalogTagTemplate;

/// Sensitive field paths for `google_data_catalog_tag_template_iam_binding`.
const Set<String> _googleDataCatalogTagTemplateIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_tag_template_iam_binding` (derived from provider schema).
@immutable
final class DataCatalogTagTemplateIamBindingCondition {
  const DataCatalogTagTemplateIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

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
    required RefTo<GoogleDataCatalogTagTemplate> tagTemplate,
    TfArg<String>? region,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    DataCatalogTagTemplateIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_template': tagTemplate.encodeAs('id'),
           'region': ?region,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTagTemplateIamBinding>`.
  RefTo<GoogleDataCatalogTagTemplateIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `tag_template` attribute.
  TfRef<String> get tagTemplateRef =>
      TfRef.attribute<String>(this, 'tag_template');
}
