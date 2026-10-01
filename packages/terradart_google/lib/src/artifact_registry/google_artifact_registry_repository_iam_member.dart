// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../artifact_registry/google_artifact_registry_repository.dart'
    show GoogleArtifactRegistryRepository;
import '../iam/iam_principal.dart' show IamPrincipal;

/// Sensitive field paths for `google_artifact_registry_repository_iam_member`.
const Set<String> _googleArtifactRegistryRepositoryIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_artifact_registry_repository_iam_member` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryIamMemberCondition {
  const ArtifactRegistryRepositoryIamMemberCondition({
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

/// Factory wrapper for `google_artifact_registry_repository_iam_member`.
final class GoogleArtifactRegistryRepositoryIamMember extends Resource {
  static const String tfType = 'google_artifact_registry_repository_iam_member';

  GoogleArtifactRegistryRepositoryIamMember(
    super.localName, {
    required RefTo<GoogleArtifactRegistryRepository> repository,
    required TfArg<String> role,
    required IamPrincipal member,
    ArtifactRegistryRepositoryIamMemberCondition? condition,
    TfArg<String>? location,
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
           'location': ?(location ?? repository.alsoAs('location')),
           'project': ?(project ?? repository.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryRepositoryIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryRepositoryIamMember>`.
  RefTo<GoogleArtifactRegistryRepositoryIamMember> get ref => RefTo.of(this);

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

  /// Reference to `repository` attribute.
  TfRef<String> get repository => TfRef.attribute<String>(this, 'repository');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
