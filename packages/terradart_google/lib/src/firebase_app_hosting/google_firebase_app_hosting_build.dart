// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_hosting_build`.
const Set<String> _googleFirebaseAppHostingBuildSensitive = <String>{};

// ===========================================================================
// source block + sealed AppHostingBuildSource dispatch
// ===========================================================================

/// `source` block (required, max_items=1). Sealed dispatch over the
/// schema's two mutually exclusive sub-blocks: pick a commit from the
/// backend's Developer Connect repository ([AppHostingBuildSourceCodebase])
/// OR point at a prebuilt Artifact Registry image
/// ([AppHostingBuildSourceContainer]).
sealed class AppHostingBuildSource {
  const AppHostingBuildSource();

  /// Returns the JSON fragment to merge into the `source` block.
  Map<String, Object?> encode();
}

/// `source.codebase` sub-block. Specify the commit by [branch] (build at
/// branch HEAD) and/or [commit] (pin to a specific SHA). The schema does
/// not enforce a one-of, but the API ignores both being null.
@immutable
final class AppHostingBuildSourceCodebase extends AppHostingBuildSource {
  const AppHostingBuildSourceCodebase({this.branch, this.commit});

  /// Branch in the backend's linked repository to build from. Builds at
  /// the latest commit of the branch when [commit] is null.
  final TfArg<String>? branch;

  /// Commit SHA to build from. When set, overrides [branch] HEAD.
  final TfArg<String>? commit;

  @override
  Map<String, Object?> encode() => {
    'codebase': [
      {
        if (branch != null) 'branch': branch!.toTfJson(),
        if (commit != null) 'commit': commit!.toTfJson(),
      },
    ],
  };
}

/// `source.container` sub-block. Skips the Cloud Build step and uses the
/// supplied Artifact Registry image directly for the Cloud Run revision.
@immutable
final class AppHostingBuildSourceContainer extends AppHostingBuildSource {
  const AppHostingBuildSourceContainer({required this.image});

  /// Artifact Registry image URI (e.g.
  /// `us-central1-docker.pkg.dev/p/r/web:1.2.3`).
  final TfArg<String> image;

  @override
  Map<String, Object?> encode() => {
    'container': [
      {'image': image.toTfJson()},
    ],
  };
}

/// Factory wrapper for `google_firebase_app_hosting_build` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_hosting_build.`).
/// - `backend`: ID of the backend this build belongs to. Typically
///   `TfArg.ref(backend.backendIdRef)` where `backend` is a
///   [GoogleFirebaseAppHostingBackend].
/// - `location`: GCP region of the backend.
/// - `build_id`: Stable user-chosen identifier of this build.
/// - `source`: required [AppHostingBuildSource]. Pick exactly one of
///   [AppHostingBuildSourceCodebase] (commit ref into the configured
///   Developer Connect repository) or [AppHostingBuildSourceContainer]
///   (point at a prebuilt Artifact Registry image, skipping the Cloud
///   Build step).
///
/// Example (build from a git branch HEAD):
/// ```dart
/// final build = GoogleFirebaseAppHostingBuild(
///   localName: 'v1',
///   backend: TfArg.ref(backend.backendIdRef),
///   location: TfArg.literal('us-central1'),
///   buildId: TfArg.literal('v1'),
///   source: AppHostingBuildSourceCodebase(
///     branch: TfArg.literal('main'),
///   ),
///   displayName: TfArg.literal('First release'),
/// );
/// ```
///
/// Example (build from a prebuilt image):
/// ```dart
/// final build = GoogleFirebaseAppHostingBuild(
///   localName: 'v1',
///   backend: TfArg.ref(backend.backendIdRef),
///   location: TfArg.literal('us-central1'),
///   buildId: TfArg.literal('v1'),
///   source: AppHostingBuildSourceContainer(
///     image: TfArg.literal(
///       'us-central1-docker.pkg.dev/p/r/web:1.2.3',
///     ),
///   ),
/// );
/// ```
///
/// Manages a single immutable App Hosting build. Builds are the artifact
/// referenced by [GoogleFirebaseAppHostingTraffic.target] when shaping
/// traffic across revisions. Schema-side `state` and `error_source`
/// (computed) carry enum-like wire values; they are exposed as raw
/// `TfRef<String>` getters rather than typed enums because they are read-
/// only and the wire values are best consumed as-is.
final class GoogleFirebaseAppHostingBuild extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_hosting_build';

  GoogleFirebaseAppHostingBuild({
    required super.localName,
    required TfArg<String> backend,
    required TfArg<String> location,
    required TfArg<String> buildId,
    required AppHostingBuildSource source,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         argMap: {
           'backend': backend,
           'location': location,
           'build_id': buildId,
           'source': TfArg.literal([source.encode()]),
           if (displayName != null) 'display_name': displayName,
           if (annotations != null) 'annotations': annotations,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => _googleFirebaseAppHostingBuildSensitive;

  /// Reference to `name` attribute (full resource path
  /// `projects/{project}/locations/{location}/backends/{backend}/builds/{build_id}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_id` -- the segment downstream Traffic resources
  /// pass to [AppHostingTrafficSplit.build].
  TfRef<String> get buildIdRef => TfRef.attribute<String>(this, 'build_id');

  /// Reference to `state` -- one of `BUILDING`, `BUILT`, `DEPLOYING`,
  /// `READY`, `FAILED`. Server-set; surfaced as a string for parity with
  /// other Cloud Build-backed resources.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `error_source` -- one of `CLOUD_BUILD`, `CLOUD_RUN`.
  /// Populated only when [state] is `FAILED`.
  TfRef<String> get errorSource =>
      TfRef.attribute<String>(this, 'error_source');

  /// Reference to `image` -- the Artifact Registry image URI Cloud Run
  /// will pull when serving traffic to this build.
  TfRef<String> get image => TfRef.attribute<String>(this, 'image');

  /// Reference to `build_logs_uri` -- link to the Cloud Build logs page.
  TfRef<String> get buildLogsUri =>
      TfRef.attribute<String>(this, 'build_logs_uri');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
