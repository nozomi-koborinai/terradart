// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repository_iam_binding`.
const Set<String> _googleArtifactRegistryRepositoryIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_artifact_registry_repository_iam_binding` (derived from provider schema).
@immutable
final class ArtifactRegistryRepositoryIamBindingCondition {
  const ArtifactRegistryRepositoryIamBindingCondition({
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

/// Factory wrapper for `google_artifact_registry_repository_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on an Artifact Registry
/// repository.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleArtifactRegistryRepositoryIamMember] for additive grants.
final class GoogleArtifactRegistryRepositoryIamBinding extends Resource {
  static const String tfType =
      'google_artifact_registry_repository_iam_binding';

  GoogleArtifactRegistryRepositoryIamBinding({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    ArtifactRegistryRepositoryIamBindingCondition? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'repository': repository,
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
           'location': ?location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleArtifactRegistryRepositoryIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleArtifactRegistryRepositoryIamBinding>`.
  RefTo<GoogleArtifactRegistryRepositoryIamBinding> get ref => RefTo.of(this);

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

  /// Reference to `repository` attribute.
  TfRef<String> get repositoryRef =>
      TfRef.attribute<String>(this, 'repository');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
