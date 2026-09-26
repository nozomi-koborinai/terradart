// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_cluster_activity_stream`.
const Set<String> _awsRdsClusterActivityStreamSensitive = <String>{};

/// Factory wrapper for `aws_rds_cluster_activity_stream`.
final class AwsRdsClusterActivityStream extends Resource {
  static const String tfType = 'aws_rds_cluster_activity_stream';

  AwsRdsClusterActivityStream({
    required super.localName,
    TfArg<bool>? engineNativeAuditFieldsIncluded,
    required TfArg<String> kmsKeyId,
    required TfArg<String> mode,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (engineNativeAuditFieldsIncluded != null)
             'engine_native_audit_fields_included':
                 engineNativeAuditFieldsIncluded,
           'kms_key_id': kmsKeyId,
           'mode': mode,
           if (region != null) 'region': region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterActivityStreamSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kinesis_stream_name` attribute.
  TfRef<String> get kinesisStreamName =>
      TfRef.attribute<String>(this, 'kinesis_stream_name');
}
