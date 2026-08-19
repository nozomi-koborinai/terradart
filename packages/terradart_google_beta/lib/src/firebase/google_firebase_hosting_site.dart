// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_site`.
const Set<String> _googleFirebaseHostingSiteSensitive = <String>{};

/// Factory wrapper for `google_firebase_hosting_site`.
final class GoogleFirebaseHostingSite extends Resource {
  static const String tfType = 'google_firebase_hosting_site';

  GoogleFirebaseHostingSite({
    required super.localName,
    TfArg<String>? appId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<String>? siteId,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (appId != null) 'app_id': appId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           if (siteId != null) 'site_id': siteId,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingSiteSensitive;
}
