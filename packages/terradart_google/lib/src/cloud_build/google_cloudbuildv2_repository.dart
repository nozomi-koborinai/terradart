// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_cloudbuildv2_repository`.
const Set<String> _googleCloudbuildv2RepositorySensitive = <String>{};

/// Factory wrapper for `google_cloudbuildv2_repository`.
///
/// A repository associated to a parent connection.
///
/// A Cloud Build v2 (2nd-gen) **repository** registers a single remote
/// Git repository (GitHub repo, GitLab project, Bitbucket repo, …)
/// under a parent [GoogleCloudbuildv2Connection]. Triggers created by
/// `google_cloudbuildv2_repository` consumers reference the repository
/// via its `id` self-link to launch builds on push / PR / tag events.
///
/// `location` is optional in the provider schema: when omitted the
/// provider extracts the region from the parent connection. Override it
/// only when you have a deliberate reason to deviate (it is otherwise
/// computed server-side and changes force replacement).
///
/// Example:
/// ```dart
/// final repo = GoogleCloudbuildv2Repository(
///   localName: 'repo',
///   name: TfArg.literal('my-repo'),
///   parentConnection: TfArg.ref(githubConn.nameRef),
///   remoteUri: TfArg.literal('https://github.com/org/my-repo.git'),
/// );
/// ```
///
/// The Cloud Build v2 repository resource is fully **immutable** —
/// changing `name`, `parentConnection`, `remoteUri`, or `annotations`
/// (the only writable field besides identity) forces replacement.
final class GoogleCloudbuildv2Repository extends Resource {
  static const String tfType = 'google_cloudbuildv2_repository';

  GoogleCloudbuildv2Repository({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> parentConnection,
    required TfArg<String> remoteUri,
    TfArg<String>? location,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent_connection': parentConnection,
           'remote_uri': remoteUri,
           if (location != null) 'location': location,
           if (annotations != null) 'annotations': annotations,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudbuildv2RepositorySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_annotations` attribute.
  TfRef<Map<String, String>> get effectiveAnnotations =>
      TfRef.attribute<Map<String, String>>(this, 'effective_annotations');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
