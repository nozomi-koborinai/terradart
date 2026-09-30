// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_rds_cluster_activity_stream`.
const Set<String> _awsRdsClusterActivityStreamSensitive = <String>{};

/// Rds Cluster Activity Stream enum for `mode`.
enum RdsClusterActivityStreamMode implements TerraformEnum {
  sync('sync'),
  async('async');

  const RdsClusterActivityStreamMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_rds_cluster_activity_stream`.
final class AwsRdsClusterActivityStream extends Resource {
  static const String tfType = 'aws_rds_cluster_activity_stream';

  AwsRdsClusterActivityStream({
    required super.localName,
    TfArg<bool>? engineNativeAuditFieldsIncluded,
    required RefTo<AwsKmsKey> kmsKeyId,
    required TfArg<RdsClusterActivityStreamMode> mode,
    TfArg<String>? region,
    required TfArg<String> resourceArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'engine_native_audit_fields_included':
               ?engineNativeAuditFieldsIncluded,
           'kms_key_id': kmsKeyId.encodeAs('arn'),
           'mode': mode,
           'region': ?region,
           'resource_arn': resourceArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsClusterActivityStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRdsClusterActivityStream>`.
  RefTo<AwsRdsClusterActivityStream> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `kinesis_stream_name` attribute.
  TfRef<String> get kinesisStreamName =>
      TfRef.attribute<String>(this, 'kinesis_stream_name');

  /// Reference to `engine_native_audit_fields_included` attribute.
  TfRef<bool> get engineNativeAuditFieldsIncludedRef =>
      TfRef.attribute<bool>(this, 'engine_native_audit_fields_included');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyIdRef => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `mode` attribute.
  TfRef<String> get modeRef => TfRef.attribute<String>(this, 'mode');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArnRef =>
      TfRef.attribute<String>(this, 'resource_arn');
}
