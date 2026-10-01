// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_taxonomy.dart'
    show GoogleDataCatalogTaxonomy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_data_catalog_taxonomy_iam_member`.
const Set<String> _googleDataCatalogTaxonomyIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_taxonomy_iam_member` (derived from provider schema).
@immutable
final class DataCatalogTaxonomyIamMemberCondition {
  const DataCatalogTaxonomyIamMemberCondition({
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

/// Factory wrapper for `google_data_catalog_taxonomy_iam_member`.
///
/// Additive IAM grant on a [GoogleDataCatalogTaxonomy]. Prefer this over
/// binding/policy when adding one (`role`, `member`) tuple.
final class GoogleDataCatalogTaxonomyIamMember extends Resource {
  static const String tfType = 'google_data_catalog_taxonomy_iam_member';

  GoogleDataCatalogTaxonomyIamMember({
    required super.localName,
    required RefTo<GoogleDataCatalogTaxonomy> taxonomy,
    required TfArg<String> role,
    required IamPrincipal member,
    DataCatalogTaxonomyIamMemberCondition? condition,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'taxonomy': taxonomy.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTaxonomyIamMember>`.
  RefTo<GoogleDataCatalogTaxonomyIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `taxonomy` attribute.
  TfRef<String> get taxonomyRef => TfRef.attribute<String>(this, 'taxonomy');
}
