// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_redshift_logging`.
const Set<String> _awsRedshiftLoggingSensitive = <String>{};

/// Redshift Logging Log Destination enum for `log_destination_type`.
extension type const RedshiftLoggingLogDestinationType._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftLoggingLogDestinationType.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftLoggingLogDestinationType.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftLoggingLogDestinationType.arg(TfArg<String> arg) : this._(arg);

  static const s3 = RedshiftLoggingLogDestinationType._(TfArgLiteral('s3'));
  static const cloudwatch = RedshiftLoggingLogDestinationType._(
    TfArgLiteral('cloudwatch'),
  );
  static const s3table = RedshiftLoggingLogDestinationType._(
    TfArgLiteral('s3table'),
  );

  static const List<RedshiftLoggingLogDestinationType> values = [
    s3,
    cloudwatch,
    s3table,
  ];
}

/// Redshift Logging Log enum for `log_exports`.
extension type const RedshiftLoggingLogExports._(TfArg<String> _)
    implements TfArg<String> {
  RedshiftLoggingLogExports.variable(String name)
    : this._(TfArg.variable(name));
  RedshiftLoggingLogExports.expression(String template)
    : this._(TfArg.expression(template));
  const RedshiftLoggingLogExports.arg(TfArg<String> arg) : this._(arg);

  static const connectionlog = RedshiftLoggingLogExports._(
    TfArgLiteral('connectionlog'),
  );
  static const useractivitylog = RedshiftLoggingLogExports._(
    TfArgLiteral('useractivitylog'),
  );
  static const userlog = RedshiftLoggingLogExports._(TfArgLiteral('userlog'));

  static const List<RedshiftLoggingLogExports> values = [
    connectionlog,
    useractivitylog,
    userlog,
  ];
}

/// Factory wrapper for `aws_redshift_logging`.
final class AwsRedshiftLogging extends Resource {
  static const String tfType = 'aws_redshift_logging';

  AwsRedshiftLogging(
    super.localName, {
    RefTo<AwsS3Bucket>? bucketName,
    required TfArg<String> clusterIdentifier,
    RedshiftLoggingLogDestinationType? logDestinationType,
    List<RedshiftLoggingLogExports>? logExports,
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
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `log_destination_type` attribute.
  TfRef<String> get logDestinationType =>
      TfRef.attribute<String>(this, 'log_destination_type');

  /// Reference to `log_exports` attribute.
  TfRef<List<String>> get logExports =>
      TfRef.attribute<List<String>>(this, 'log_exports');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_key_prefix` attribute.
  TfRef<String> get s3KeyPrefix =>
      TfRef.attribute<String>(this, 's3_key_prefix');
}
