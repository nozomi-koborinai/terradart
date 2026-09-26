// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dms_endpoint`.
const Set<String> _awsDmsEndpointSensitive = <String>{};

/// Factory wrapper for `aws_dms_endpoint`.
final class DataAwsDmsEndpoint extends Data {
  static const String tfType = 'aws_dms_endpoint';

  DataAwsDmsEndpoint({
    required super.localName,
    required TfArg<String> endpointId,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'endpoint_id': endpointId,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDmsEndpointSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `elasticsearch_settings` attribute.
  TfRef<List<Map<String, Object?>>> get elasticsearchSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'elasticsearch_settings',
      );

  /// Reference to `endpoint_arn` attribute.
  TfRef<String> get endpointArn =>
      TfRef.attribute<String>(this, 'endpoint_arn');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `engine_name` attribute.
  TfRef<String> get engineName => TfRef.attribute<String>(this, 'engine_name');

  /// Reference to `extra_connection_attributes` attribute.
  TfRef<String> get extraConnectionAttributes =>
      TfRef.attribute<String>(this, 'extra_connection_attributes');

  /// Reference to `kafka_settings` attribute.
  TfRef<List<Map<String, Object?>>> get kafkaSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kafka_settings');

  /// Reference to `kinesis_settings` attribute.
  TfRef<List<Map<String, Object?>>> get kinesisSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'kinesis_settings');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `mongodb_settings` attribute.
  TfRef<List<Map<String, Object?>>> get mongodbSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mongodb_settings');

  /// Reference to `mysql_settings` attribute.
  TfRef<List<Map<String, Object?>>> get mysqlSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mysql_settings');

  /// Reference to `password` attribute.
  TfRef<String> get password => TfRef.attribute<String>(this, 'password');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `postgres_settings` attribute.
  TfRef<List<Map<String, Object?>>> get postgresSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'postgres_settings');

  /// Reference to `redis_settings` attribute.
  TfRef<List<Map<String, Object?>>> get redisSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'redis_settings');

  /// Reference to `redshift_settings` attribute.
  TfRef<List<Map<String, Object?>>> get redshiftSettings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'redshift_settings');

  /// Reference to `s3_settings` attribute.
  TfRef<List<Map<String, Object?>>> get s3Settings =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 's3_settings');

  /// Reference to `secrets_manager_access_role_arn` attribute.
  TfRef<String> get secretsManagerAccessRoleArn =>
      TfRef.attribute<String>(this, 'secrets_manager_access_role_arn');

  /// Reference to `secrets_manager_arn` attribute.
  TfRef<String> get secretsManagerArn =>
      TfRef.attribute<String>(this, 'secrets_manager_arn');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `service_access_role` attribute.
  TfRef<String> get serviceAccessRole =>
      TfRef.attribute<String>(this, 'service_access_role');

  /// Reference to `ssl_mode` attribute.
  TfRef<String> get sslMode => TfRef.attribute<String>(this, 'ssl_mode');

  /// Reference to `username` attribute.
  TfRef<String> get username => TfRef.attribute<String>(this, 'username');
}
