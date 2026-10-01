// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_android_app`.
const Set<String> _googleFirebaseAndroidAppSensitive = <String>{};

/// Factory wrapper for `google_firebase_android_app`.
///
/// A Google Cloud Firebase Android application instance
final class GoogleFirebaseAndroidApp extends Resource {
  static const String tfType = 'google_firebase_android_app';

  GoogleFirebaseAndroidApp(
    super.localName, {
    TfArg<String>? apiKeyId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> packageName,
    TfArg<String>? project,
    TfArg<List<String>>? sha1Hashes,
    TfArg<List<String>>? sha256Hashes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'api_key_id': ?apiKeyId,
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'package_name': packageName,
           'project': ?project,
           'sha1_hashes': ?sha1Hashes,
           'sha256_hashes': ?sha256Hashes,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAndroidAppSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAndroidApp>`.
  RefTo<GoogleFirebaseAndroidApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `api_key_id` attribute.
  TfRef<String> get apiKeyId => TfRef.attribute<String>(this, 'api_key_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `package_name` attribute.
  TfRef<String> get packageName =>
      TfRef.attribute<String>(this, 'package_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `sha1_hashes` attribute.
  TfRef<List<String>> get sha1Hashes =>
      TfRef.attribute<List<String>>(this, 'sha1_hashes');

  /// Reference to `sha256_hashes` attribute.
  TfRef<List<String>> get sha256Hashes =>
      TfRef.attribute<List<String>>(this, 'sha256_hashes');
}
