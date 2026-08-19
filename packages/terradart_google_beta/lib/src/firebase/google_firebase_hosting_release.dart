// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_release`.
const Set<String> _googleFirebaseHostingReleaseSensitive = <String>{};

/// Factory wrapper for `google_firebase_hosting_release`.
final class GoogleFirebaseHostingRelease extends Resource {
  static const String tfType = 'google_firebase_hosting_release';

  GoogleFirebaseHostingRelease({
    required super.localName,
    TfArg<String>? channelId,
    TfArg<String>? message,
    required TfArg<String> siteId,
    TfArg<String>? type,
    TfArg<String>? versionName,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (channelId != null) 'channel_id': channelId,
           if (message != null) 'message': message,
           'site_id': siteId,
           if (type != null) 'type': type,
           if (versionName != null) 'version_name': versionName,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingReleaseSensitive;
}
