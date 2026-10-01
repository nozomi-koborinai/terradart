// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_connection.dart'
    show GoogleBigqueryConnection;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_connection_iam_binding`.
const Set<String> _googleBigqueryConnectionIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_connection_iam_binding` (derived from provider schema).
@immutable
final class BigqueryConnectionIamBindingCondition {
  const BigqueryConnectionIamBindingCondition({
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

/// Factory wrapper for `google_bigquery_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a BigQuery connection.
///
/// Replaces the entire member list for that role on the connection. Prefer
/// [GoogleBigqueryConnectionIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleBigqueryConnectionIamBinding extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_binding';

  GoogleBigqueryConnectionIamBinding(
    super.localName, {
    required RefTo<GoogleBigqueryConnection> connection,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    BigqueryConnectionIamBindingCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connection.encodeAs('connection_id'),
           'location': ?(location ?? connection.alsoAs('location')),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? connection.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryConnectionIamBinding>`.
  RefTo<GoogleBigqueryConnectionIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
