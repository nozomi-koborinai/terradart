// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_firebase_app_hosting_backend.schema.dart'
    show
        $GoogleFirebaseAppHostingBackend,
        googleFirebaseAppHostingBackendSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleFirebaseAppHostingBackendSchemaInstance
    implements $GoogleFirebaseAppHostingBackend {
  const _GoogleFirebaseAppHostingBackendSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// Enums
// ===========================================================================

/// `serving_locality` -- where App Hosting will serve content from. Set on
/// create; immutable thereafter (changing forces replacement).
/// `regionalStrict` pins serving to the backend's [location]; `globalAccess`
/// lets App Hosting replicate across its global edge fleet.
enum AppHostingServingLocality {
  regionalStrict('REGIONAL_STRICT'),
  globalAccess('GLOBAL_ACCESS');

  const AppHostingServingLocality(this.terraformValue);
  final String terraformValue;
}

// ===========================================================================
// codebase block (max_items=1)
// ===========================================================================

/// `codebase` block. Links the backend to a Developer Connect-managed git
/// repository, so commits flowing into the configured branch trigger
/// builds (see [GoogleFirebaseAppHostingTraffic.rolloutPolicy]).
@immutable
class AppHostingBackendCodebase {
  const AppHostingBackendCodebase({
    required this.repository,
    this.rootDirectory,
  });

  /// Developer Connect `gitRepositoryLink` resource name, in the shape
  /// `projects/{project}/locations/{location}/connections/{connection}/gitRepositoryLinks/{repositoryLink}`.
  /// See
  /// https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks.
  final TfArg<String> repository;

  /// Sub-directory inside the repository to use as the deployed app root.
  /// Defaults to the repo root.
  final TfArg<String>? rootDirectory;

  Map<String, Object?> toArgMap() => {
    'repository': repository.toTfJson(),
    if (rootDirectory != null) 'root_directory': rootDirectory!.toTfJson(),
  };
}

/// Factory wrapper for `google_firebase_app_hosting_backend` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_hosting_backend.`).
/// - `backend_id`: Stable identifier of the backend. Used both as the
///   Cloud Run service ID and as a segment of the default `.hosted.app`
///   domain. Lower-case alphanumerics + hyphens.
/// - `location`: GCP region (e.g. `'us-central1'`).
/// - `app_id`: Firebase Web App ID this backend is bound to. See the
///   `app_id` field on
///   https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps.
/// - `service_account`: Service account email Cloud Build and Cloud Run
///   run as. Must have `roles/firebaseapphosting.computeRunner` or
///   equivalent.
/// - `serving_locality`: Either [AppHostingServingLocality.regionalStrict]
///   (single-region) or [AppHostingServingLocality.globalAccess] (global
///   App Hosting fleet). Immutable -- changing forces replacement.
///
/// Example (regional backend bound to a Developer Connect repo):
/// ```dart
/// final backend = GoogleFirebaseAppHostingBackend(
///   localName: 'web',
///   backendId: TfArg.literal('web-backend'),
///   location: TfArg.literal('us-central1'),
///   appId: TfArg.literal('1:1234567890:web:abcdef'),
///   serviceAccount: TfArg.ref(sa.email),
///   servingLocality: TfArg.literal(AppHostingServingLocality.regionalStrict),
///   codebase: AppHostingBackendCodebase(
///     repository: TfArg.literal(
///       'projects/p/locations/us-central1/connections/c/gitRepositoryLinks/r',
///     ),
///     rootDirectory: TfArg.literal('/'),
///   ),
///   displayName: TfArg.literal('Production web backend'),
/// );
/// ```
///
/// Manages a Firebase App Hosting backend. App Hosting is Cloud Run-backed:
/// the backend orchestrates a Cloud Build step (per [GoogleFirebaseAppHostingBuild])
/// followed by a Cloud Run service deployment, with Firebase-side identity
/// integration via [appId]. The single `codebase` block links the backend to
/// a Developer Connect-managed git repository.
final class GoogleFirebaseAppHostingBackend
    extends Resource<$GoogleFirebaseAppHostingBackend> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_hosting_backend';

  GoogleFirebaseAppHostingBackend({
    required super.localName,
    required TfArg<String> backendId,
    required TfArg<String> location,
    required TfArg<String> appId,
    required TfArg<String> serviceAccount,
    required TfArg<AppHostingServingLocality> servingLocality,
    AppHostingBackendCodebase? codebase,
    TfArg<String>? environment,
    TfArg<String>? displayName,
    TfArg<Map<String, String>>? annotations,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleFirebaseAppHostingBackendSchemaInstance(),
         argMap: {
           'backend_id': backendId,
           'location': location,
           'app_id': appId,
           'service_account': serviceAccount,
           'serving_locality': servingLocality,
           if (codebase != null)
             'codebase': TfArg.literal([codebase.toArgMap()]),
           if (environment != null) 'environment': environment,
           if (displayName != null) 'display_name': displayName,
           if (annotations != null) 'annotations': annotations,
           if (labels != null) 'labels': labels,
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleFirebaseAppHostingBackendSensitive;

  /// Reference to `name` attribute (full resource path
  /// `projects/{project}/locations/{location}/backends/{backend_id}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `backend_id` -- the segment downstream Traffic / Domain
  /// resources expect as their `backend` argument.
  TfRef<String> get backendIdRef => TfRef.attribute<String>(this, 'backend_id');

  /// Reference to `uri` -- the primary HTTPS URL of the backend (resolves
  /// to the underlying Cloud Run service URL or to the active custom
  /// domain once one is attached).
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
