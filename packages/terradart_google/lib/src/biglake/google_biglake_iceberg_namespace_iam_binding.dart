// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_biglake_iceberg_namespace_iam_binding`.
const Set<String> _googleBiglakeIcebergNamespaceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_iceberg_namespace_iam_binding` (derived from provider schema).
@immutable
final class BiglakeIcebergNamespaceIamBindingCondition {
  const BiglakeIcebergNamespaceIamBindingCondition({
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

/// Factory wrapper for `google_biglake_iceberg_namespace_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigLake Iceberg
/// namespace.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleBiglakeIcebergNamespaceIamMember] for
/// additive grants.
final class GoogleBiglakeIcebergNamespaceIamBinding extends Resource {
  static const String tfType = 'google_biglake_iceberg_namespace_iam_binding';

  GoogleBiglakeIcebergNamespaceIamBinding({
    required super.localName,
    required TfArg<String> catalog,
    required TfArg<String> namespaceId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    BiglakeIcebergNamespaceIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': catalog,
           'namespace_id': namespaceId,
           'role': role,
           'members': members,
           'project': ?project,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergNamespaceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergNamespaceIamBinding>`.
  RefTo<GoogleBiglakeIcebergNamespaceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalogRef => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceIdRef =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
