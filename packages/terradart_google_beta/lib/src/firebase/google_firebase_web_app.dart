// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_web_app`.
const Set<String> _googleFirebaseWebAppSensitive = <String>{};

/// Factory wrapper for `google_firebase_web_app`.
final class GoogleFirebaseWebApp extends Resource {
  static const String tfType = 'google_firebase_web_app';

  GoogleFirebaseWebApp({
    required super.localName,
    TfArg<String>? apiKeyId,
    TfArg<String>? deletionPolicy,
    required TfArg<String> displayName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (apiKeyId != null) 'api_key_id': apiKeyId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'display_name': displayName,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseWebAppSensitive;
}
