// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_hosting_version`.
const Set<String> _googleFirebaseHostingVersionSensitive = <String>{};

/// Factory wrapper for `google_firebase_hosting_version`.
final class GoogleFirebaseHostingVersion extends Resource {
  static const String tfType = 'google_firebase_hosting_version';

  GoogleFirebaseHostingVersion({
    required super.localName,
    required TfArg<String> siteId,
    TfArg<Map<String, dynamic>>? config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {'site_id': siteId, if (config != null) 'config': config},
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseHostingVersionSensitive;
}
