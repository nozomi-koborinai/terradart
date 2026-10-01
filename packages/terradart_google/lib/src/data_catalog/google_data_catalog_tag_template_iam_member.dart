// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_tag_template.dart'
    show GoogleDataCatalogTagTemplate;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_data_catalog_tag_template_iam_member`.
const Set<String> _googleDataCatalogTagTemplateIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_tag_template_iam_member` (derived from provider schema).
@immutable
final class DataCatalogTagTemplateIamMemberCondition {
  const DataCatalogTagTemplateIamMemberCondition({
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

/// Factory wrapper for `google_data_catalog_tag_template_iam_member`.
final class GoogleDataCatalogTagTemplateIamMember extends Resource {
  static const String tfType = 'google_data_catalog_tag_template_iam_member';

  GoogleDataCatalogTagTemplateIamMember({
    required super.localName,
    required RefTo<GoogleDataCatalogTagTemplate> tagTemplate,
    TfArg<String>? region,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    DataCatalogTagTemplateIamMemberCondition? condition,
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
           'member': member,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTagTemplateIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTagTemplateIamMember>`.
  RefTo<GoogleDataCatalogTagTemplateIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `tag_template` attribute.
  TfRef<String> get tagTemplate =>
      TfRef.attribute<String>(this, 'tag_template');
}
