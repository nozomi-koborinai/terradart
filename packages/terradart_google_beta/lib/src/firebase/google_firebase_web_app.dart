// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_web_app`.
const Set<String> _googleFirebaseWebAppSensitive = <String>{};

/// Factory wrapper for `google_firebase_web_app`.
///
/// A Google Cloud Firebase web application instance
final class GoogleFirebaseWebApp extends Resource {
  static const String tfType = 'google_firebase_web_app';

  GoogleFirebaseWebApp(
    super.localName, {
    TfArg<String>? apiKeyId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<String>? project,
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
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseWebAppSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseWebApp>`.
  RefTo<GoogleFirebaseWebApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `app_urls` attribute.
  TfRef<List<String>> get appUrls =>
      TfRef.attribute<List<String>>(this, 'app_urls');

  /// Reference to `api_key_id` attribute.
  TfRef<String> get apiKeyId => TfRef.attribute<String>(this, 'api_key_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
