// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_apple_app`.
const Set<String> _googleFirebaseAppleAppSensitive = <String>{};

/// Factory wrapper for `google_firebase_apple_app`.
///
/// A Google Cloud Firebase Apple application instance
final class GoogleFirebaseAppleApp extends Resource {
  static const String tfType = 'google_firebase_apple_app';

  GoogleFirebaseAppleApp({
    required super.localName,
    TfArg<String>? apiKeyId,
    TfArg<String>? appStoreId,
    required TfArg<String> bundleId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<String>? project,
    TfArg<String>? teamId,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'api_key_id': ?apiKeyId,
           'app_store_id': ?appStoreId,
           'bundle_id': bundleId,
           'deletion_policy': ?deletionPolicy,
           'display_name': displayName,
           'project': ?project,
           'team_id': ?teamId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAppleAppSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseAppleApp>`.
  RefTo<GoogleFirebaseAppleApp> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');
}
