// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_version`.
const Set<String> _googleFirebaseHostingVersionSensitive = <String>{};

/// Typed helper for the `config` block of
/// `google_firebase_hosting_version` (derived from provider schema).
@immutable
final class FirebaseHostingVersionConfig {
  const FirebaseHostingVersionConfig({
    this.headers,
    this.redirects,
    this.rewrites,
  });

  final List<FirebaseHostingVersionHeaders>? headers;

  final List<FirebaseHostingVersionRedirects>? redirects;

  final List<FirebaseHostingVersionRewrites>? rewrites;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': [for (final e in headers!) e.encode()],
    if (redirects != null)
      'redirects': [for (final e in redirects!) e.encode()],
    if (rewrites != null) 'rewrites': [for (final e in rewrites!) e.encode()],
  };
}

/// Typed helper for the `config.headers` block of
/// `google_firebase_hosting_version` (derived from provider schema).
@immutable
final class FirebaseHostingVersionHeaders {
  const FirebaseHostingVersionHeaders({
    this.glob,
    required this.headers,
    this.regex,
  });

  final TfArg<String>? glob;

  final TfArg<Map<String, String>> headers;

  final TfArg<String>? regex;

  Map<String, Object?> encode() => {
    'glob': ?glob?.toTfJson(),
    'headers': headers.toTfJson(),
    'regex': ?regex?.toTfJson(),
  };
}

/// Typed helper for the `config.redirects` block of
/// `google_firebase_hosting_version` (derived from provider schema).
@immutable
final class FirebaseHostingVersionRedirects {
  const FirebaseHostingVersionRedirects({
    this.glob,
    required this.location,
    this.regex,
    required this.statusCode,
  });

  final TfArg<String>? glob;

  final TfArg<String> location;

  final TfArg<String>? regex;

  final TfArg<num> statusCode;

  Map<String, Object?> encode() => {
    'glob': ?glob?.toTfJson(),
    'location': location.toTfJson(),
    'regex': ?regex?.toTfJson(),
    'status_code': statusCode.toTfJson(),
  };
}

/// Typed helper for the `config.rewrites` block of
/// `google_firebase_hosting_version` (derived from provider schema).
@immutable
final class FirebaseHostingVersionRewrites {
  const FirebaseHostingVersionRewrites({
    this.function,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  final TfArg<String>? function;

  final TfArg<String>? glob;

  final TfArg<String>? path;

  final TfArg<String>? regex;

  final FirebaseHostingVersionRun? run;

  Map<String, Object?> encode() => {
    'function': ?function?.toTfJson(),
    'glob': ?glob?.toTfJson(),
    'path': ?path?.toTfJson(),
    'regex': ?regex?.toTfJson(),
    'run': ?run?.encode(),
  };
}

/// Typed helper for the `config.rewrites.run` block of
/// `google_firebase_hosting_version` (derived from provider schema).
@immutable
final class FirebaseHostingVersionRun {
  const FirebaseHostingVersionRun({this.region, required this.serviceId});

  final TfArg<String>? region;

  final TfArg<String> serviceId;

  Map<String, Object?> encode() => {
    'region': ?region?.toTfJson(),
    'service_id': serviceId.toTfJson(),
  };
}

/// Factory wrapper for `google_firebase_hosting_version`.
///
/// A `Version` is a configuration which determine how a site is displayed.
/// Static files are not supported at the moment.
final class GoogleFirebaseHostingVersion extends Resource {
  static const String tfType = 'google_firebase_hosting_version';

  GoogleFirebaseHostingVersion(
    super.localName, {
    required TfArg<String> siteId,
    FirebaseHostingVersionConfig? config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'site_id': siteId,
           if (config != null) 'config': TfArg.literal(config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingVersionSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseHostingVersion>`.
  RefTo<GoogleFirebaseHostingVersion> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `version_id` attribute.
  TfRef<String> get versionId => TfRef.attribute<String>(this, 'version_id');

  /// Reference to `site_id` attribute.
  TfRef<String> get siteId => TfRef.attribute<String>(this, 'site_id');
}
