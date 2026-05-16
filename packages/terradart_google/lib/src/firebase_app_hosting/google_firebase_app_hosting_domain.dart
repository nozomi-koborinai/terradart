// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import 'package:terradart_google/src/generated/google_firebase_app_hosting_domain.schema.dart'
    show
        $GoogleFirebaseAppHostingDomain,
        googleFirebaseAppHostingDomainSensitive;

// Tiny const carrier for `Resource<S>.schema`. Inert in v0.0.x synth — only
// consumed by `ResourceRef<S>.placeholder` (a future surface). We
// keep this stub inline instead of constructing schemantic's generated
// concrete class (which requires JSON-backed field args). `noSuchMethod`
// satisfies the abstract field getters; they are never invoked in v0.0.x.
class _GoogleFirebaseAppHostingDomainSchemaInstance
    implements $GoogleFirebaseAppHostingDomain {
  const _GoogleFirebaseAppHostingDomainSchemaInstance();

  @override
  // ignore: non_constant_identifier_names
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// ===========================================================================
// serve block (max_items=1) + nested redirect (max_items=1)
// ===========================================================================

/// `serve` block. When omitted (the default), the domain serves the
/// backend's live content. When set, the [redirect] sub-block takes
/// over -- requests are answered with an HTTP 3xx response pointing at
/// the configured URI.
///
/// Today the schema exposes a single sub-block ([redirect]); the helper
/// is laid out as a struct rather than a sealed class so future serve
/// modes can be added as additional optional fields without breaking
/// the call site.
@immutable
class AppHostingDomainServe {
  const AppHostingDomainServe({this.redirect});

  /// Redirect behaviour for requests to this domain. Mutually exclusive
  /// with the default "serve live backend content" mode -- if you set
  /// this, requests are NOT forwarded to the backend.
  final AppHostingDomainRedirect? redirect;

  Map<String, Object?> toArgMap() => {
    if (redirect != null) 'redirect': [redirect!.toArgMap()],
  };
}

/// `serve.redirect` sub-block. Returns an HTTP 3xx redirect for every
/// request hitting this domain.
@immutable
class AppHostingDomainRedirect {
  const AppHostingDomainRedirect({required this.uri, this.status});

  /// Redirect target. URIs without a scheme are treated as HTTPS. The
  /// original request path is appended to this prefix.
  final TfArg<String> uri;

  /// HTTP 3xx status code (e.g. `'301'`, `'302'`, `'307'`). Defaults to
  /// `'302'` server-side.
  final TfArg<String>? status;

  Map<String, Object?> toArgMap() => {
    'uri': uri.toTfJson(),
    if (status != null) 'status': status!.toTfJson(),
  };
}

/// Factory wrapper for `google_firebase_app_hosting_domain` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_hosting_domain.`).
/// - `backend`: ID of the backend this domain is attached to. Typically
///   `TfArg.ref(backend.backendIdRef)` where `backend` is a
///   [GoogleFirebaseAppHostingBackend].
/// - `location`: GCP region of the backend.
/// - `domain_id`: Fully qualified custom domain name, e.g. `'www.example.com'`.
///
/// Example (custom domain serving the backend's live content):
/// ```dart
/// final www = GoogleFirebaseAppHostingDomain(
///   localName: 'www',
///   backend: TfArg.ref(backend.backendIdRef),
///   location: TfArg.literal('us-central1'),
///   domainId: TfArg.literal('www.example.com'),
/// );
/// ```
///
/// Example (apex domain redirecting to `www`):
/// ```dart
/// final apex = GoogleFirebaseAppHostingDomain(
///   localName: 'apex',
///   backend: TfArg.ref(backend.backendIdRef),
///   location: TfArg.literal('us-central1'),
///   domainId: TfArg.literal('example.com'),
///   serve: AppHostingDomainServe(
///     redirect: AppHostingDomainRedirect(
///       uri: TfArg.literal('https://www.example.com'),
///       status: TfArg.literal('301'),
///     ),
///   ),
/// );
/// ```
///
/// Manages a custom domain attached to an App Hosting backend. The
/// optional `serve` block overrides the default behaviour (serve the
/// backend's live content) with a redirect; future provider releases may
/// add additional serve modes -- the helper is shaped to absorb them
/// without breaking callers.
final class GoogleFirebaseAppHostingDomain
    extends Resource<$GoogleFirebaseAppHostingDomain> {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_hosting_domain';

  GoogleFirebaseAppHostingDomain({
    required super.localName,
    required TfArg<String> backend,
    required TfArg<String> location,
    required TfArg<String> domainId,
    AppHostingDomainServe? serve,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: $tfType,
         schema: const _GoogleFirebaseAppHostingDomainSchemaInstance(),
         argMap: {
           'backend': backend,
           'location': location,
           'domain_id': domainId,
           if (serve != null) 'serve': TfArg.literal([serve.toArgMap()]),
           if (project != null) 'project': project,
         },
       );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields => googleFirebaseAppHostingDomainSensitive;

  /// Reference to `name` attribute (full resource path
  /// `projects/{project}/locations/{location}/backends/{backend}/domains/{domain_id}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_id` -- the fully qualified host name.
  TfRef<String> get domainIdRef => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
