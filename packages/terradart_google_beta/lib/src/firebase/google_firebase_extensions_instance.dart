// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_extensions_instance`.
const Set<String> _googleFirebaseExtensionsInstanceSensitive = <String>{};

/// Factory wrapper for `google_firebase_extensions_instance`.
final class GoogleFirebaseExtensionsInstance extends Resource {
  static const String tfType = 'google_firebase_extensions_instance';

  GoogleFirebaseExtensionsInstance({
    required super.localName,
    TfArg<String>? deletionPolicy,
    required TfArg<String> instanceId,
    TfArg<String>? project,
    required TfArg<Map<String, dynamic>> config,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           'instance_id': instanceId,
           if (project != null) 'project': project,
           'config': config,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseExtensionsInstanceSensitive;
}
