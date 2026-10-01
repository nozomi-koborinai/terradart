// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../sql/google_sql_database_instance.dart'
    show GoogleSqlDatabaseInstance;

/// Sensitive field paths for `google_sql_provision_script`.
const Set<String> _googleSqlProvisionScriptSensitive = <String>{};

/// Factory wrapper for `google_sql_provision_script`.
///
/// Leftover factory on the apply-excluded path
/// (synth + `terraform validate` only).
///
/// Needs an organization / folder / billing account /
/// external artifact that standalone terradart-validate
/// cannot supply. Do not apply.
final class GoogleSqlProvisionScript extends Resource {
  static const String tfType = 'google_sql_provision_script';

  GoogleSqlProvisionScript({
    required super.localName,
    TfArg<String>? database,
    TfArg<String>? deletionPolicy,
    TfArg<String>? description,
    required RefTo<GoogleSqlDatabaseInstance> instance,
    TfArg<String>? project,
    required TfArg<String> script,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'database': ?database,
           'deletion_policy': ?deletionPolicy,
           'description': ?description,
           'instance': instance.encodeAs('name'),
           'project': ?project,
           'script': script,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSqlProvisionScriptSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSqlProvisionScript>`.
  RefTo<GoogleSqlProvisionScript> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `database` attribute.
  TfRef<String> get database => TfRef.attribute<String>(this, 'database');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `password_secret_version` attribute.
  TfRef<String> get passwordSecretVersion =>
      TfRef.attribute<String>(this, 'password_secret_version');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `script` attribute.
  TfRef<String> get script => TfRef.attribute<String>(this, 'script');

  /// Reference to `user` attribute.
  TfRef<String> get user => TfRef.attribute<String>(this, 'user');
}
