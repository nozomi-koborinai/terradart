// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../secure/google_secure_source_manager_repository.dart'
    show GoogleSecureSourceManagerRepository;

/// Sensitive field paths for `google_secure_source_manager_repository_iam_member`.
const Set<String> _googleSecureSourceManagerRepositoryIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_secure_source_manager_repository_iam_member` (derived from provider schema).
@immutable
final class SecureSourceManagerRepositoryIamMemberCondition {
  const SecureSourceManagerRepositoryIamMemberCondition({
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

/// Factory wrapper for `google_secure_source_manager_repository_iam_member`.
///
/// Non-authoritative IAM member on a Secure Source Manager repository.
///
/// [repositoryId] is the short repository id (path segment). Location and
/// project identify the parent when not taken from the provider default.
final class GoogleSecureSourceManagerRepositoryIamMember extends Resource {
  static const String tfType =
      'google_secure_source_manager_repository_iam_member';

  GoogleSecureSourceManagerRepositoryIamMember({
    required super.localName,
    required RefTo<GoogleSecureSourceManagerRepository> repository,
    required TfArg<String> role,
    required IamPrincipal member,
    TfArg<String>? location,
    TfArg<String>? project,
    SecureSourceManagerRepositoryIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repository.encodeAs('repository_id'),
           'role': role,
           'member': member,
           'location': ?(location ?? repository.alsoAs('location')),
           'project': ?(project ?? repository.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerRepositoryIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerRepositoryIamMember>`.
  RefTo<GoogleSecureSourceManagerRepositoryIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryIdRef =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
