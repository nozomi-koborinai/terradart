// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_database_instance`.
const Set<String> _googleFirebaseDatabaseInstanceSensitive = <String>{};

/// Firebase Database Instance Desired enum for `desired_state`.
enum FirebaseDatabaseInstanceDesiredState implements TerraformEnum {
  active('ACTIVE'),
  disabled('DISABLED');

  const FirebaseDatabaseInstanceDesiredState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Firebase Database Instance enum for `state`.
enum FirebaseDatabaseInstanceState implements TerraformEnum {
  active('ACTIVE'),
  disabled('DISABLED');

  const FirebaseDatabaseInstanceState(this.terraformValue);
  @override
  final String terraformValue;
}

/// Firebase Database Instance enum for `type`.
enum FirebaseDatabaseInstanceType implements TerraformEnum {
  defaultDatabase('DEFAULT_DATABASE'),
  userDatabase('USER_DATABASE');

  const FirebaseDatabaseInstanceType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `google_firebase_database_instance`.
///
/// A Firebase Realtime Database instance.
final class GoogleFirebaseDatabaseInstance extends Resource {
  static const String tfType = 'google_firebase_database_instance';

  GoogleFirebaseDatabaseInstance({
    required super.localName,
    TfArg<String>? deletionPolicy,
    TfArg<FirebaseDatabaseInstanceDesiredState>? desiredState,
    required TfArg<String> instanceId,
    TfArg<String>? project,
    required TfArg<String> region,
    TfArg<FirebaseDatabaseInstanceType>? type,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseDatabaseInstance>`.
  RefTo<GoogleFirebaseDatabaseInstance> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database_url` attribute.
  TfRef<String> get databaseUrl =>
      TfRef.attribute<String>(this, 'database_url');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
