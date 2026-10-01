// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_catalog.dart'
    show GoogleBiglakeIcebergCatalog;

/// Sensitive field paths for `google_biglake_iceberg_catalog_iam_binding`.
const Set<String> _googleBiglakeIcebergCatalogIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_iceberg_catalog_iam_binding` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogIamBindingCondition {
  const BiglakeIcebergCatalogIamBindingCondition({
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

/// Factory wrapper for `google_biglake_iceberg_catalog_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigLake Iceberg
/// REST catalog.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergCatalogIamMember] for
/// additive grants.
final class GoogleBiglakeIcebergCatalogIamBinding extends Resource {
  static const String tfType = 'google_biglake_iceberg_catalog_iam_binding';

  GoogleBiglakeIcebergCatalogIamBinding({
    required super.localName,
    required RefTo<GoogleBiglakeIcebergCatalog> catalog,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    BiglakeIcebergCatalogIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': catalog.encodeAs('name'),
           'role': role,
           'members': members,
           'project': ?(project ?? catalog.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergCatalogIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergCatalogIamBinding>`.
  RefTo<GoogleBiglakeIcebergCatalogIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
