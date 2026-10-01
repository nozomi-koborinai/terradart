// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshiftserverless_credentials`.
const Set<String> _awsRedshiftserverlessCredentialsSensitive = <String>{
  'db_password',
};

/// Factory wrapper for `aws_redshiftserverless_credentials`.
final class DataAwsRedshiftserverlessCredentials extends Data {
  static const String tfType = 'aws_redshiftserverless_credentials';

  DataAwsRedshiftserverlessCredentials(
    super.localName, {
    TfArg<String>? dbName,
    TfArg<num>? durationSeconds,
    TfArg<String>? region,
    required TfArg<String> workgroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'db_name': ?dbName,
           'duration_seconds': ?durationSeconds,
           'region': ?region,
           'workgroup_name': workgroupName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftserverlessCredentialsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_password` attribute.
  TfRef<String> get dbPassword => TfRef.attribute<String>(this, 'db_password');

  /// Reference to `db_user` attribute.
  TfRef<String> get dbUser => TfRef.attribute<String>(this, 'db_user');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `db_name` attribute.
  TfRef<String> get dbName => TfRef.attribute<String>(this, 'db_name');

  /// Reference to `duration_seconds` attribute.
  TfRef<num> get durationSeconds =>
      TfRef.attribute<num>(this, 'duration_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workgroup_name` attribute.
  TfRef<String> get workgroupName =>
      TfRef.attribute<String>(this, 'workgroup_name');
}
