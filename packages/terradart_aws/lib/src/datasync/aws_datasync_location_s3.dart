// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_datasync_location_s3`.
const Set<String> _awsDatasyncLocationS3Sensitive = <String>{};

/// Typed helper for the `s3_config` block of
/// `aws_datasync_location_s3` (derived from provider schema).
@immutable
final class DatasyncLocationS3S3Config {
  const DatasyncLocationS3S3Config({required this.bucketAccessRoleArn});

  final TfArg<String> bucketAccessRoleArn;

  Map<String, Object?> encode() => {
    'bucket_access_role_arn': bucketAccessRoleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_s3`.
final class AwsDatasyncLocationS3 extends Resource {
  static const String tfType = 'aws_datasync_location_s3';

  AwsDatasyncLocationS3({
    required super.localName,
    TfArg<List<String>>? agentArns,
    TfArg<String>? region,
    required TfArg<String> s3BucketArn,
    TfArg<String>? s3StorageClass,
    required TfArg<String> subdirectory,
    TfArg<Map<String, String>>? tags,
    required DatasyncLocationS3S3Config s3Config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (agentArns != null) 'agent_arns': agentArns,
           if (region != null) 'region': region,
           's3_bucket_arn': s3BucketArn,
           if (s3StorageClass != null) 's3_storage_class': s3StorageClass,
           'subdirectory': subdirectory,
           if (tags != null) 'tags': tags,
           's3_config': TfArg.literal(s3Config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationS3Sensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');
}
