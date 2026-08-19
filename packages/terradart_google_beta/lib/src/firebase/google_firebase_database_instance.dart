// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_database_instance`.
const Set<String> _googleFirebaseDatabaseInstanceSensitive = <String>{};

/// Factory wrapper for `google_firebase_database_instance`.
final class GoogleFirebaseDatabaseInstance extends Resource {
  static const String tfType = 'google_firebase_database_instance';

  GoogleFirebaseDatabaseInstance({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<String>? desiredState,
    required TfArg<String> instanceId,
    TfArg<String>? project,
    required TfArg<String> region,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (desiredState != null) 'desired_state': desiredState,
           'instance_id': instanceId,
           if (project != null) 'project': project,
           'region': region,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseDatabaseInstanceSensitive;
}
