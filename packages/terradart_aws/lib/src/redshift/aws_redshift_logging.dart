// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_logging`.
const Set<String> _awsRedshiftLoggingSensitive = <String>{};

/// Factory wrapper for `aws_redshift_logging`.
final class AwsRedshiftLogging extends Resource {
  static const String tfType = 'aws_redshift_logging';

  AwsRedshiftLogging({
    required super.localName,
    TfArg<String>? bucketName,
    required TfArg<String> clusterIdentifier,
    TfArg<String>? logDestinationType,
    TfArg<List<String>>? logExports,
    TfArg<String>? region,
    TfArg<String>? s3KeyPrefix,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bucketName != null) 'bucket_name': bucketName,
           'cluster_identifier': clusterIdentifier,
           if (logDestinationType != null)
             'log_destination_type': logDestinationType,
           if (logExports != null) 'log_exports': logExports,
           if (region != null) 'region': region,
           if (s3KeyPrefix != null) 's3_key_prefix': s3KeyPrefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftLoggingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
