// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_project`.
const Set<String> _googleFirebaseProjectSensitive = <String>{};

/// Factory wrapper for `google_firebase_project`.
final class GoogleFirebaseProject extends Resource {
  static const String tfType = 'google_firebase_project';

  GoogleFirebaseProject({
    required super.localName,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {if (project != null) 'project': project},
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseProjectSensitive;
}
