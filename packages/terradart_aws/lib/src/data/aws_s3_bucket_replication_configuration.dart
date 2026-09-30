// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../s3/aws_s3_bucket_replication_configuration.dart';
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_replication_configuration`.
const Set<String> _awsS3BucketReplicationConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_s3_bucket_replication_configuration`.
final class DataAwsS3BucketReplicationConfiguration extends Data {
  static const String tfType = 'aws_s3_bucket_replication_configuration';

  DataAwsS3BucketReplicationConfiguration({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'bucket': bucket.encodeAs('id'), 'region': ?region},
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketReplicationConfigurationSensitive;

  /// A reference to the `aws_s3_bucket_replication_configuration` this data source reads, for
  /// arguments typed `RefTo<AwsS3BucketReplicationConfiguration>`.
  RefTo<AwsS3BucketReplicationConfiguration> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `rule` attribute.
  TfRef<List<Map<String, Object?>>> get rule =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rule');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
