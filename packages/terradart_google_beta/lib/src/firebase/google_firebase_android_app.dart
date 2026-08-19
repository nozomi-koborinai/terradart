// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_android_app`.
const Set<String> _googleFirebaseAndroidAppSensitive = <String>{};

/// Factory wrapper for `google_firebase_android_app`.
final class GoogleFirebaseAndroidApp extends Resource {
  static const String tfType = 'google_firebase_android_app';

  GoogleFirebaseAndroidApp({
    required super.localName,
    TfArg<String>? apiKeyId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    required TfArg<String> packageName,
    TfArg<String>? project,
    TfArg<List<String>>? sha1Hashes,
    TfArg<List<String>>? sha256Hashes,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (apiKeyId != null) 'api_key_id': apiKeyId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           'package_name': packageName,
           if (project != null) 'project': project,
           if (sha1Hashes != null) 'sha1_hashes': sha1Hashes,
           if (sha256Hashes != null) 'sha256_hashes': sha256Hashes,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseAndroidAppSensitive;
}
