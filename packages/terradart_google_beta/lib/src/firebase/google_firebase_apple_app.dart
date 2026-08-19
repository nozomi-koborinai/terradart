// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_apple_app`.
const Set<String> _googleFirebaseAppleAppSensitive = <String>{};

/// Factory wrapper for `google_firebase_apple_app`.
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
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (apiKeyId != null) 'api_key_id': apiKeyId,
           if (appStoreId != null) 'app_store_id': appStoreId,
           'bundle_id': bundleId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (project != null) 'project': project,
           if (teamId != null) 'team_id': teamId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAppleAppSensitive;
}
