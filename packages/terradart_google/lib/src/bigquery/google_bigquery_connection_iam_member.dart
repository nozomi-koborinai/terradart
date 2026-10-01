// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../bigquery/google_bigquery_connection.dart'
    show GoogleBigqueryConnection;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_bigquery_connection_iam_member`.
const Set<String> _googleBigqueryConnectionIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_bigquery_connection_iam_member` (derived from provider schema).
@immutable
final class BigqueryConnectionIamMemberCondition {
  const BigqueryConnectionIamMemberCondition({
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

/// Factory wrapper for `google_bigquery_connection_iam_member`.
final class GoogleBigqueryConnectionIamMember extends Resource {
  static const String tfType = 'google_bigquery_connection_iam_member';

  GoogleBigqueryConnectionIamMember(
    super.localName, {
    required RefTo<GoogleBigqueryConnection> connection,
    TfArg<String>? location,
    required IamPrincipal member,
    TfArg<String>? project,
    required TfArg<String> role,
    BigqueryConnectionIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': connection.encodeAs('connection_id'),
           'location': ?(location ?? connection.alsoAs('location')),
           'member': member,
           'project': ?(project ?? connection.alsoAs('project')),
           'role': role,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleBigqueryConnectionIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleBigqueryConnectionIamMember>`.
  RefTo<GoogleBigqueryConnectionIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
