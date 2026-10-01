// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../firebase_app_hosting/google_firebase_app_hosting_backend.dart'
    show GoogleFirebaseAppHostingBackend;

/// Sensitive field paths for `google_firebase_app_hosting_build`.
const Set<String> _googleFirebaseAppHostingBuildSensitive = <String>{};

/// Exactly one of `container`, `codebase` on the `source` block of `google_firebase_app_hosting_build`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.container(...)`.
sealed class FirebaseAppHostingBuildSource {
  const FirebaseAppHostingBuildSource();

  /// Sets `container`.
  const factory FirebaseAppHostingBuildSource.container(
    FirebaseAppHostingBuildContainer container,
  ) = FirebaseAppHostingBuildSourceContainer;

  /// Sets `codebase`.
  const factory FirebaseAppHostingBuildSource.codebase(
    FirebaseAppHostingBuildCodebase codebase,
  ) = FirebaseAppHostingBuildSourceCodebase;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();
}

/// The [FirebaseAppHostingBuildSource.container] choice: sets `container`.
final class FirebaseAppHostingBuildSourceContainer
    extends FirebaseAppHostingBuildSource {
  const FirebaseAppHostingBuildSourceContainer(this.container);

  final FirebaseAppHostingBuildContainer container;

  @override
  String get blockKey => 'container';

  @override
  Map<String, Object?> encode() => {'container': container.encode()};
}

/// The [FirebaseAppHostingBuildSource.codebase] choice: sets `codebase`.
final class FirebaseAppHostingBuildSourceCodebase
    extends FirebaseAppHostingBuildSource {
  const FirebaseAppHostingBuildSourceCodebase(this.codebase);

  final FirebaseAppHostingBuildCodebase codebase;

  @override
  String get blockKey => 'codebase';

  @override
  Map<String, Object?> encode() => {'codebase': codebase.encode()};
}

/// Typed helper for the `source.codebase` block of
/// `google_firebase_app_hosting_build` (derived from provider schema).
@immutable
final class FirebaseAppHostingBuildCodebase {
  const FirebaseAppHostingBuildCodebase({this.branch, this.commit});

  final TfArg<String>? branch;

  final TfArg<String>? commit;

  Map<String, Object?> encode() => {
    'branch': ?branch?.toTfJson(),
    'commit': ?commit?.toTfJson(),
  };
}

/// Typed helper for the `source.container` block of
/// `google_firebase_app_hosting_build` (derived from provider schema).
@immutable
final class FirebaseAppHostingBuildContainer {
  const FirebaseAppHostingBuildContainer({required this.image});

  final TfArg<String> image;

  Map<String, Object?> encode() => {'image': image.toTfJson()};
}

/// Factory wrapper for `google_firebase_app_hosting_build`.
///
/// A single build for a backend, at a specific point codebase reference tag and
/// point in time. Encapsulates several resources, including an Artifact
/// Registry container image, a Cloud Build invocation that built the image, and
/// the Cloud Run revision that uses that image.
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_hosting_build.`).
/// - `backend`: ID of the backend this build belongs to. Typically
///   `TfArg.ref(backend.backendIdRef)` where `backend` is a
///   [GoogleFirebaseAppHostingBackend].
/// - `location`: GCP region of the backend.
/// - `build_id`: Stable user-chosen identifier of this build.
/// - `source`: exactly one of `.codebase(...)` (commit ref into the
///   configured Developer Connect repository) or `.container(...)` (point
///   at a prebuilt Artifact Registry image, skipping the Cloud Build step).
///
/// Example (build from a git branch HEAD):
/// ```dart
/// final build = GoogleFirebaseAppHostingBuild(
///   localName: 'v1',
///   backend: backend.ref,
///   location: TfArg.literal('us-central1'),
///   buildId: TfArg.literal('v1'),
///   source: .codebase(
///     .new(branch: .literal('main')),
///   ),
///   displayName: TfArg.literal('First release'),
/// );
/// ```
///
/// Example (build from a prebuilt image):
/// ```dart
/// final build = GoogleFirebaseAppHostingBuild(
///   localName: 'v1',
///   backend: backend.ref,
///   location: TfArg.literal('us-central1'),
///   buildId: TfArg.literal('v1'),
///   source: .container(
///     .new(
///       image: .literal('us-central1-docker.pkg.dev/p/r/web:1.2.3'),
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
  static const String tfType = 'google_firebase_app_hosting_build';

  GoogleFirebaseAppHostingBuild({
    required super.localName,
    required RefTo<GoogleFirebaseAppHostingBackend> backend,
    required TfArg<String> location,
    required TfArg<String> buildId,
    required FirebaseAppHostingBuildSource source,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'backend': backend.encodeAs('backend_id'),
           'location': location,
           'build_id': buildId,
           'source': TfArg.literal(source.encode()),
           'display_name': ?displayName,
           'annotations': ?annotations,
           'labels': ?labels,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAppHostingBuildSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAppHostingBuild>`.
  RefTo<GoogleFirebaseAppHostingBuild> get ref => RefTo.of(this);

  /// Reference to `name` attribute (full resource path
  /// `projects/{project}/locations/{location}/backends/{backend}/builds/{build_id}`).
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `build_id` -- the segment downstream Traffic resources
  /// pass to [AppHostingTrafficSplit.build].
  TfRef<String> get buildId => TfRef.attribute<String>(this, 'build_id');

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
