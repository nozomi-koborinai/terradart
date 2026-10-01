// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_catalog.dart'
    show GoogleBiglakeIcebergCatalog;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_iceberg_catalog_iam_member`.
const Set<String> _googleBiglakeIcebergCatalogIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_iceberg_catalog_iam_member` (derived from provider schema).
@immutable
final class BiglakeIcebergCatalogIamMemberCondition {
  const BiglakeIcebergCatalogIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_biglake_iceberg_catalog_iam_member`.
final class GoogleBiglakeIcebergCatalogIamMember extends Resource {
  static const String tfType = 'google_biglake_iceberg_catalog_iam_member';

  GoogleBiglakeIcebergCatalogIamMember(
    super.localName, {
    required RefTo<GoogleBiglakeIcebergCatalog> catalog,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    BiglakeIcebergCatalogIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': catalog.encodeAs('name'),
           'role': role,
           'member': member,
           'project': ?(project ?? catalog.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergCatalogIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergCatalogIamMember>`.
  RefTo<GoogleBiglakeIcebergCatalogIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
