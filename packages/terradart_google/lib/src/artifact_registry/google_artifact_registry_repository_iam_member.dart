// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_artifact_registry_repository_iam_member`.
const Set<String> _googleArtifactRegistryRepositoryIamMemberSensitive =
    <String>{};

/// Factory wrapper for `google_artifact_registry_repository_iam_member`.
///
/// Grants a single (`role`, `member`) IAM binding **on a single
/// Artifact Registry repository** -- i.e. who can pull from, push to,
/// or administer this specific repo. Repo-scoped IAM is the standard
/// granularity for CI/CD setups: build-runner SAs get
/// `roles/artifactregistry.writer` on the repos they publish to;
/// deployment SAs get `roles/artifactregistry.reader` on the repos
/// their workloads pull from. Reach for project-level Artifact Registry
/// IAM only when a principal needs identical access across every repo
/// in the project.
///
/// Picking the right `*_iam_*` variant:
///
/// - `*_iam_member` (this resource) -- **additive**: grants ONE
///   (role, member) tuple. Does not touch other principals' bindings.
///   Safe in 95% of cases; prefer this unless you have a concrete reason
///   to use one of the authoritative variants below.
/// - `*_iam_binding` -- **authoritative per role**: takes a list of
///   members and *replaces* the entire member list for that role. Will
///   silently erase any other principal previously bound to that role
///   on this repository.
/// - `*_iam_policy` -- **authoritative for the entire resource**: replaces
///   the repository's whole IAM policy. Will erase **all** existing
///   bindings.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - `repository`: the target repo's `name` / `repository_id` attribute
///   (the short repo id, *not* a fully-qualified
///   `projects/.../repositories/...` path). Pass
///   `TfArg.ref(repo.repositoryIdRef)`.
/// - `role`: role name, typically `'roles/artifactregistry.reader'` /
///   `roles/artifactregistry.writer'` / `'roles/artifactregistry.admin'`.
/// - `member`: principal in IAM v1 string form (`user:...`,
///   `serviceAccount:...`, `group:...`, or `allUsers` / `allAuthenticatedUsers`
///   for public repos).
///
/// `location` is optional and defaults to the provider region; `project`
/// is optional and defaults to the provider project.
///
/// Optional `condition` is a single IAM Condition block (CEL
/// `expression`, `title`, optional `description`).
final class GoogleArtifactRegistryRepositoryIamMember extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType =
      'google_artifact_registry_repository_iam_member';

  GoogleArtifactRegistryRepositoryIamMember({
    required super.localName,
    required TfArg<String> repository,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'repository': repository,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleArtifactRegistryRepositoryIamMemberSensitive;

  /// Reference to `etag` attribute (concurrency token written by the API).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
