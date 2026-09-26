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

  DataAwsRedshiftserverlessCredentials({
    required super.localName,
    TfArg<String>? dbName,
    TfArg<num>? durationSeconds,
    TfArg<String>? region,
    required TfArg<String> workgroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dbName != null) 'db_name': dbName,
           if (durationSeconds != null) 'duration_seconds': durationSeconds,
           if (region != null) 'region': region,
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
}
