// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_app_hosting_default_domain`.
const Set<String> _googleFirebaseAppHostingDefaultDomainSensitive = <String>{};

/// Factory wrapper for `google_firebase_app_hosting_default_domain` (provider
/// `hashicorp/google ~> 7.0`).
///
/// Required identity:
/// - [localName]: Terraform local name (the address segment after
///   `google_firebase_app_hosting_default_domain.`).
/// - `backend`: ID of the backend that this default domain is attached to.
///   Typically `TfArg.ref(backend.backendIdRef)` where `backend` is a
///   [GoogleFirebaseAppHostingBackend].
/// - `location`: GCP region of the backend (e.g. `'us-central1'`).
/// - `domain_id`: Default domain name, which for App Hosting follows the
///   shape `{{backend}}--{{project_id}}.{{location}}.hosted.app`.
///
/// Example:
/// ```dart
/// final defaultDomain = GoogleFirebaseAppHostingDefaultDomain(
///   localName: 'default',
///   backend: TfArg.ref(backend.backendIdRef),
///   location: TfArg.literal('us-central1'),
///   domainId: TfArg.literal('my-backend--my-project.us-central1.hosted.app'),
/// );
/// ```
///
/// Manages the auto-provisioned default `.hosted.app` domain for an App
/// Hosting backend. Unlike [GoogleFirebaseAppHostingDomain] (custom domains),
/// this resource just exposes the auto-created default endpoint so it can be
/// disabled or referenced from other resources. There are no nested blocks.
final class GoogleFirebaseAppHostingDefaultDomain extends Resource {
  // ignore: constant_identifier_names
  static const String $tfType = 'google_firebase_app_hosting_default_domain';

  GoogleFirebaseAppHostingDefaultDomain({
    required super.localName,
    required TfArg<String> backend,
    required TfArg<String> location,
    required TfArg<String> domainId,
    TfArg<bool>? disabled,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: $tfType,
          argMap: {
            'backend': backend,
            'location': location,
            'domain_id': domainId,
            if (disabled != null) 'disabled': disabled,
            if (project != null) 'project': project,
          },
        );

  @override
  // ignore: non_constant_identifier_names
  Set<String> get $sensitiveFields =>
      _googleFirebaseAppHostingDefaultDomainSensitive;

  /// Reference to `name` attribute (full resource path
  /// `projects/{project}/locations/{location}/backends/{backend}/domains/{domain_id}`).
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute. Same as `nameRef` for this resource.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `domain_id` attribute -- the default host name.
  TfRef<String> get domainIdRef => TfRef.attribute<String>(this, 'domain_id');

  /// Reference to `uid` (server-assigned unique identifier).
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  /// Reference to `etag` (used for optimistic concurrency).
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
