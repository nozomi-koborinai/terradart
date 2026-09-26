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
           if (autoCreate != null) 'auto_create': autoCreate,
           'cluster_identifier': clusterIdentifier,
           if (dbGroups != null) 'db_groups': dbGroups,
           if (dbName != null) 'db_name': dbName,
           'db_user': dbUser,
           if (durationSeconds != null) 'duration_seconds': durationSeconds,
           if (region != null) 'region': region,
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
}
