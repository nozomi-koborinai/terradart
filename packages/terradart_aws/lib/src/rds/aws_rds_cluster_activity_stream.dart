// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_rds_cluster_activity_stream`.
const Set<String> _awsRdsClusterActivityStreamSensitive = <String>{};

/// Rds Cluster Activity Stream enum for `mode`.
extension type const RdsClusterActivityStreamMode._(TfArg<String> _)
    implements TfArg<String> {
  RdsClusterActivityStreamMode.variable(String name)
    : this._(TfArg.variable(name));
  RdsClusterActivityStreamMode.expression(String template)
    : this._(TfArg.expression(template));
  const RdsClusterActivityStreamMode.arg(TfArg<String> arg) : this._(arg);

  static const sync = RdsClusterActivityStreamMode._(TfArgLiteral('sync'));
  static const async = RdsClusterActivityStreamMode._(TfArgLiteral('async'));

  static const List<RdsClusterActivityStreamMode> values = [sync, async];
}

/// Factory wrapper for `aws_rds_cluster_activity_stream`.
final class AwsRdsClusterActivityStream extends Resource {
  static const String tfType = 'aws_rds_cluster_activity_stream';

  AwsRdsClusterActivityStream(
    super.localName, {
    TfArg<bool>? engineNativeAuditFieldsIncluded,
    required RefTo<AwsKmsKey> kmsKeyId,
    required RdsClusterActivityStreamMode mode,
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
  TfRef<bool> get engineNativeAuditFieldsIncluded =>
      TfRef.attribute<bool>(this, 'engine_native_audit_fields_included');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `resource_arn` attribute.
  TfRef<String> get resourceArn =>
      TfRef.attribute<String>(this, 'resource_arn');
}
