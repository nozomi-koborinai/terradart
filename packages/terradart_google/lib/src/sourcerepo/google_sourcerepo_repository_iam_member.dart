// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../sourcerepo/google_sourcerepo_repository.dart'
    show GoogleSourcerepoRepository;

/// Sensitive field paths for `google_sourcerepo_repository_iam_member`.
const Set<String> _googleSourcerepoRepositoryIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_sourcerepo_repository_iam_member` (derived from provider schema).
@immutable
final class SourcerepoRepositoryIamMemberCondition {
  const SourcerepoRepositoryIamMemberCondition({
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

/// Factory wrapper for `google_sourcerepo_repository_iam_member`.
///
/// Adds a single IAM `role` → `member` binding on a
/// [GoogleSourcerepoRepository]. Prefer an in-stack service account for
/// apply-smoke (placeholder identities fail at apply).
final class GoogleSourcerepoRepositoryIamMember extends Resource {
  static const String tfType = 'google_sourcerepo_repository_iam_member';

  GoogleSourcerepoRepositoryIamMember(
    super.localName, {
    required RefTo<GoogleSourcerepoRepository> repository,
    required TfArg<String> role,
    required IamPrincipal member,
    SourcerepoRepositoryIamMemberCondition? condition,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'project': ?(project ?? repository.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSourcerepoRepositoryIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSourcerepoRepositoryIamMember>`.
  RefTo<GoogleSourcerepoRepositoryIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
