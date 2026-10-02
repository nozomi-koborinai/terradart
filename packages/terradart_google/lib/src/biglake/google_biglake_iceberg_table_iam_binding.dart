// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_table.dart'
    show GoogleBiglakeIcebergTable;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_iceberg_table_iam_binding`.
const Set<String> _googleBiglakeIcebergTableIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_iceberg_table_iam_binding` (derived from provider schema).
@immutable
final class BiglakeIcebergTableIamBindingCondition {
  const BiglakeIcebergTableIamBindingCondition({
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

/// Factory wrapper for `google_biglake_iceberg_table_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigLake Iceberg
/// table.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergTableIamMember] for
/// additive grants.
final class GoogleBiglakeIcebergTableIamBinding extends Resource {
  static const String tfType = 'google_biglake_iceberg_table_iam_binding';

  GoogleBiglakeIcebergTableIamBinding(
    super.localName, {
    TfArg<String>? catalog,
    TfArg<String>? namespace,
    required RefTo<GoogleBiglakeIcebergTable> table,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    BiglakeIcebergTableIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? table.alsoAs('catalog')),
           'namespace': ?(namespace ?? table.alsoAs('namespace')),
           'name': table.encodeAs('name'),
           'role': role,
           'members': members,
           'project': ?(project ?? table.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergTableIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergTableIamBinding>`.
  RefTo<GoogleBiglakeIcebergTableIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalog => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `namespace` attribute.
  TfRef<String> get namespace => TfRef.attribute<String>(this, 'namespace');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
