// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_cluster_credentials`.
const Set<String> _awsRedshiftClusterCredentialsSensitive = <String>{
  'db_password',
};

/// Factory wrapper for `aws_redshift_cluster_credentials`.
final class DataAwsRedshiftClusterCredentials extends Data {
  static const String tfType = 'aws_redshift_cluster_credentials';

  DataAwsRedshiftClusterCredentials({
    required super.localName,
    TfArg<bool>? autoCreate,
    required TfArg<String> clusterIdentifier,
    TfArg<List<String>>? dbGroups,
    TfArg<String>? dbName,
    required TfArg<String> dbUser,
    TfArg<num>? durationSeconds,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_create': ?autoCreate,
           'cluster_identifier': clusterIdentifier,
           'db_groups': ?dbGroups,
           'db_name': ?dbName,
           'db_user': dbUser,
           'duration_seconds': ?durationSeconds,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftClusterCredentialsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `db_password` attribute.
  TfRef<String> get dbPassword => TfRef.attribute<String>(this, 'db_password');

  /// Reference to `expiration` attribute.
  TfRef<String> get expiration => TfRef.attribute<String>(this, 'expiration');

  /// Reference to `auto_create` attribute.
  TfRef<bool> get autoCreate => TfRef.attribute<bool>(this, 'auto_create');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `db_groups` attribute.
  TfRef<List<String>> get dbGroups =>
      TfRef.attribute<List<String>>(this, 'db_groups');

  /// Reference to `db_name` attribute.
  TfRef<String> get dbName => TfRef.attribute<String>(this, 'db_name');

  /// Reference to `db_user` attribute.
  TfRef<String> get dbUser => TfRef.attribute<String>(this, 'db_user');

  /// Reference to `duration_seconds` attribute.
  TfRef<num> get durationSeconds =>
      TfRef.attribute<num>(this, 'duration_seconds');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
