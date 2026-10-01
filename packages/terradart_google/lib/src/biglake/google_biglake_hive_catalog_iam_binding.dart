// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_catalog.dart'
    show GoogleBiglakeHiveCatalog;

/// Sensitive field paths for `google_biglake_hive_catalog_iam_binding`.
const Set<String> _googleBiglakeHiveCatalogIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_hive_catalog_iam_binding` (derived from provider schema).
@immutable
final class BiglakeHiveCatalogIamBindingCondition {
  const BiglakeHiveCatalogIamBindingCondition({
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

/// Factory wrapper for `google_biglake_hive_catalog_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Biglake Hive Catalog.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleBiglakeHiveCatalogIamMember] for additive grants.
final class GoogleBiglakeHiveCatalogIamBinding extends Resource {
  static const String tfType = 'google_biglake_hive_catalog_iam_binding';

  GoogleBiglakeHiveCatalogIamBinding({
    required super.localName,
    required TfArg<List<String>> members,
    required RefTo<GoogleBiglakeHiveCatalog> catalog,
    TfArg<String>? project,
    required TfArg<String> role,
    BiglakeHiveCatalogIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'members': members,
           'name': catalog.encodeAs('name'),
           'project': ?(project ?? catalog.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveCatalogIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveCatalogIamBinding>`.
  RefTo<GoogleBiglakeHiveCatalogIamBinding> get ref => RefTo.of(this);
}
