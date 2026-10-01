// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../secure/google_secure_source_manager_repository.dart'
    show GoogleSecureSourceManagerRepository;

/// Sensitive field paths for `google_secure_source_manager_repository_iam_binding`.
const Set<String> _googleSecureSourceManagerRepositoryIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_secure_source_manager_repository_iam_binding` (derived from provider schema).
@immutable
final class SecureSourceManagerRepositoryIamBindingCondition {
  const SecureSourceManagerRepositoryIamBindingCondition({
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

/// Factory wrapper for `google_secure_source_manager_repository_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Secure Source Manager
/// repository.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleSecureSourceManagerRepositoryIamMember] for additive grants.
/// Deferred with the never_apply SSM instance (no apply-smoke quickstart).
final class GoogleSecureSourceManagerRepositoryIamBinding extends Resource {
  static const String tfType =
      'google_secure_source_manager_repository_iam_binding';

  GoogleSecureSourceManagerRepositoryIamBinding({
    required super.localName,
    required RefTo<GoogleSecureSourceManagerRepository> repository,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    SecureSourceManagerRepositoryIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository_id': repository.encodeAs('repository_id'),
           'role': role,
           'members': members,
           'location': ?(location ?? repository.alsoAs('location')),
           'project': ?(project ?? repository.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSecureSourceManagerRepositoryIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSecureSourceManagerRepositoryIamBinding>`.
  RefTo<GoogleSecureSourceManagerRepositoryIamBinding> get ref =>
      RefTo.of(this);

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

  /// Reference to `repository_id` attribute.
  TfRef<String> get repositoryIdRef =>
      TfRef.attribute<String>(this, 'repository_id');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
