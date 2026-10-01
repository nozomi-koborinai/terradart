// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../cloud_build/google_cloudbuildv2_connection.dart'
    show GoogleCloudbuildv2Connection;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_cloudbuildv2_connection_iam_binding`.
const Set<String> _googleCloudbuildv2ConnectionIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_cloudbuildv2_connection_iam_binding` (derived from provider schema).
@immutable
final class Cloudbuildv2ConnectionIamBindingCondition {
  const Cloudbuildv2ConnectionIamBindingCondition({
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

/// Factory wrapper for `google_cloudbuildv2_connection_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Build v2 SCM connection.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleCloudbuildv2ConnectionIamMember] for additive grants.
final class GoogleCloudbuildv2ConnectionIamBinding extends Resource {
  static const String tfType = 'google_cloudbuildv2_connection_iam_binding';

  GoogleCloudbuildv2ConnectionIamBinding({
    required super.localName,
    required RefTo<GoogleCloudbuildv2Connection> connection,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    Cloudbuildv2ConnectionIamBindingCondition? condition,
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
           'members': members,
           'project': ?(project ?? connection.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudbuildv2ConnectionIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudbuildv2ConnectionIamBinding>`.
  RefTo<GoogleCloudbuildv2ConnectionIamBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
