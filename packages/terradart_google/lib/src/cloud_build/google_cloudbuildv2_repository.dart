// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_build/google_cloudbuildv2_connection.dart'
    show GoogleCloudbuildv2Connection;

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
///   'repo',
///   name: TfArg.literal('my-repo'),
///   parentConnection: githubConn.ref,
///   remoteUri: TfArg.literal('https://github.com/org/my-repo.git'),
/// );
/// ```
///
/// The Cloud Build v2 repository resource is fully **immutable** —
/// changing `name`, `parentConnection`, `remoteUri`, or `annotations`
/// (the only writable field besides identity) forces replacement.
final class GoogleCloudbuildv2Repository extends Resource {
  static const String tfType = 'google_cloudbuildv2_repository';

  GoogleCloudbuildv2Repository(
    super.localName, {
    required TfArg<String> name,
    required RefTo<GoogleCloudbuildv2Connection> parentConnection,
    required TfArg<String> remoteUri,
    TfArg<String>? location,
    TfArg<Map<String, String>>? annotations,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'parent_connection': parentConnection.encodeAs('name'),
           'remote_uri': remoteUri,
           'location': ?location,
           'annotations': ?annotations,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleCloudbuildv2RepositorySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudbuildv2Repository>`.
  RefTo<GoogleCloudbuildv2Repository> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `annotations` attribute.
  TfRef<Map<String, String>> get annotations =>
      TfRef.attribute<Map<String, String>>(this, 'annotations');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `parent_connection` attribute.
  TfRef<String> get parentConnection =>
      TfRef.attribute<String>(this, 'parent_connection');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `remote_uri` attribute.
  TfRef<String> get remoteUri => TfRef.attribute<String>(this, 'remote_uri');
}
