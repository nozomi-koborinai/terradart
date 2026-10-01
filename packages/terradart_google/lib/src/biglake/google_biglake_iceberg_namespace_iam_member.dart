// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../biglake/google_biglake_iceberg_namespace.dart'
    show GoogleBiglakeIcebergNamespace;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_biglake_iceberg_namespace_iam_member`.
const Set<String> _googleBiglakeIcebergNamespaceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_biglake_iceberg_namespace_iam_member` (derived from provider schema).
@immutable
final class BiglakeIcebergNamespaceIamMemberCondition {
  const BiglakeIcebergNamespaceIamMemberCondition({
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

/// Factory wrapper for `google_biglake_iceberg_namespace_iam_member`.
final class GoogleBiglakeIcebergNamespaceIamMember extends Resource {
  static const String tfType = 'google_biglake_iceberg_namespace_iam_member';

  GoogleBiglakeIcebergNamespaceIamMember({
    required super.localName,
    TfArg<String>? catalog,
    required RefTo<GoogleBiglakeIcebergNamespace> namespace,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    BiglakeIcebergNamespaceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'catalog': ?(catalog ?? namespace.alsoAs('catalog')),
           'namespace_id': namespace.encodeAs('namespace_id'),
           'role': role,
           'member': member,
           'project': ?(project ?? namespace.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBiglakeIcebergNamespaceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBiglakeIcebergNamespaceIamMember>`.
  RefTo<GoogleBiglakeIcebergNamespaceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `catalog` attribute.
  TfRef<String> get catalog => TfRef.attribute<String>(this, 'catalog');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `namespace_id` attribute.
  TfRef<String> get namespaceId =>
      TfRef.attribute<String>(this, 'namespace_id');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
