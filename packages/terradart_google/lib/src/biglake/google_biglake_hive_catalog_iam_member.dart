// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_hive_catalog.dart'
    show GoogleBiglakeHiveCatalog;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_hive_catalog_iam_member`.
const Set<String> _googleBiglakeHiveCatalogIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_hive_catalog_iam_member` (derived from provider schema).
@immutable
final class BiglakeHiveCatalogIamMemberCondition {
  const BiglakeHiveCatalogIamMemberCondition({
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

/// Factory wrapper for `google_biglake_hive_catalog_iam_member`.
final class GoogleBiglakeHiveCatalogIamMember extends Resource {
  static const String tfType = 'google_biglake_hive_catalog_iam_member';

  GoogleBiglakeHiveCatalogIamMember(
    super.localName, {
    required IamPrincipal member,
    required RefTo<GoogleBiglakeHiveCatalog> catalog,
    TfArg<String>? project,
    required TfArg<String> role,
    BiglakeHiveCatalogIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'member': member,
           'name': catalog.encodeAs('name'),
           'project': ?(project ?? catalog.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeHiveCatalogIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeHiveCatalogIamMember>`.
  RefTo<GoogleBiglakeHiveCatalogIamMember> get ref => RefTo.of(this);
}
