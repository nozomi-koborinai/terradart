// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_redshift_logging`.
const Set<String> _awsRedshiftLoggingSensitive = <String>{};

/// Redshift Logging Log Destination enum for `log_destination_type`.
enum RedshiftLoggingLogDestinationType implements TerraformEnum {
  s3('s3'),
  cloudwatch('cloudwatch'),
  s3table('s3table');

  const RedshiftLoggingLogDestinationType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Redshift Logging Log enum for `log_exports`.
enum RedshiftLoggingLogExports implements TerraformEnum {
  connectionlog('connectionlog'),
  useractivitylog('useractivitylog'),
  userlog('userlog');

  const RedshiftLoggingLogExports(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_redshift_logging`.
final class AwsRedshiftLogging extends Resource {
  static const String tfType = 'aws_redshift_logging';

  AwsRedshiftLogging({
    required super.localName,
    RefTo<AwsS3Bucket>? bucketName,
    required TfArg<String> clusterIdentifier,
    TfArg<RedshiftLoggingLogDestinationType>? logDestinationType,
    List<TfArg<RedshiftLoggingLogExports>>? logExports,
    TfArg<String>? region,
    TfArg<String>? s3KeyPrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_name': ?bucketName?.encodeAs('id'),
           'cluster_identifier': clusterIdentifier,
           'log_destination_type': ?logDestinationType,
           if (logExports != null)
             'log_exports': TfArg.literal([
               for (final e in logExports) e.toTfJson(),
             ]),
           'region': ?region,
           's3_key_prefix': ?s3KeyPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftLoggingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftLogging>`.
  RefTo<AwsRedshiftLogging> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketNameRef =>
      TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifierRef =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `log_destination_type` attribute.
  TfRef<String> get logDestinationTypeRef =>
      TfRef.attribute<String>(this, 'log_destination_type');

  /// Reference to `log_exports` attribute.
  TfRef<List<String>> get logExportsRef =>
      TfRef.attribute<List<String>>(this, 'log_exports');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_key_prefix` attribute.
  TfRef<String> get s3KeyPrefixRef =>
      TfRef.attribute<String>(this, 's3_key_prefix');
}
