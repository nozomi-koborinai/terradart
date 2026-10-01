// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_build/google_cloudbuildv2_connection.dart'
    show GoogleCloudbuildv2Connection;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloudbuildv2_connection_iam_member`.
const Set<String> _googleCloudbuildv2ConnectionIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloudbuildv2_connection_iam_member` (derived from provider schema).
@immutable
final class Cloudbuildv2ConnectionIamMemberCondition {
  const Cloudbuildv2ConnectionIamMemberCondition({
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

/// Factory wrapper for `google_cloudbuildv2_connection_iam_member`.
final class GoogleCloudbuildv2ConnectionIamMember extends Resource {
  static const String tfType = 'google_cloudbuildv2_connection_iam_member';

  GoogleCloudbuildv2ConnectionIamMember({
    required super.localName,
    required RefTo<GoogleCloudbuildv2Connection> connection,
    TfArg<String>? location,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? project,
    Cloudbuildv2ConnectionIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': connection.encodeAs('name'),
           'location': ?(location ?? connection.alsoAs('location')),
           'role': role,
           'member': member,
           'project': ?(project ?? connection.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudbuildv2ConnectionIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudbuildv2ConnectionIamMember>`.
  RefTo<GoogleCloudbuildv2ConnectionIamMember> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
