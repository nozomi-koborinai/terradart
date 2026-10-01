// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../data_catalog/google_data_catalog_taxonomy.dart'
    show GoogleDataCatalogTaxonomy;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_data_catalog_taxonomy_iam_binding`.
const Set<String> _googleDataCatalogTaxonomyIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_data_catalog_taxonomy_iam_binding` (derived from provider schema).
@immutable
final class DataCatalogTaxonomyIamBindingCondition {
  const DataCatalogTaxonomyIamBindingCondition({
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

/// Factory wrapper for `google_data_catalog_taxonomy_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Data Catalog taxonomy.
///
/// Replaces the entire member list for that role on the taxonomy. Prefer
/// [GoogleDataCatalogTaxonomyIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleDataCatalogTaxonomyIamBinding extends Resource {
  static const String tfType = 'google_data_catalog_taxonomy_iam_binding';

  GoogleDataCatalogTaxonomyIamBinding(
    super.localName, {
    required RefTo<GoogleDataCatalogTaxonomy> taxonomy,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    DataCatalogTaxonomyIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'region': ?region,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataCatalogTaxonomyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataCatalogTaxonomyIamBinding>`.
  RefTo<GoogleDataCatalogTaxonomyIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `taxonomy` attribute.
  TfRef<String> get taxonomy => TfRef.attribute<String>(this, 'taxonomy');
}
