// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_datasync_location_s3`.
const Set<String> _awsDatasyncLocationS3Sensitive = <String>{};

/// Datasync Location S3 Storage enum for `s3_storage_class`.
extension type const DatasyncLocationS3StorageClass._(TfArg<String> _)
    implements TfArg<String> {
  DatasyncLocationS3StorageClass.variable(String name)
    : this._(TfArg.variable(name));
  DatasyncLocationS3StorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const DatasyncLocationS3StorageClass.arg(TfArg<String> arg) : this._(arg);

  static const standard = DatasyncLocationS3StorageClass._(
    TfArgLiteral('STANDARD'),
  );
  static const standardIa = DatasyncLocationS3StorageClass._(
    TfArgLiteral('STANDARD_IA'),
  );
  static const onezoneIa = DatasyncLocationS3StorageClass._(
    TfArgLiteral('ONEZONE_IA'),
  );
  static const intelligentTiering = DatasyncLocationS3StorageClass._(
    TfArgLiteral('INTELLIGENT_TIERING'),
  );
  static const glacier = DatasyncLocationS3StorageClass._(
    TfArgLiteral('GLACIER'),
  );
  static const deepArchive = DatasyncLocationS3StorageClass._(
    TfArgLiteral('DEEP_ARCHIVE'),
  );
  static const outposts = DatasyncLocationS3StorageClass._(
    TfArgLiteral('OUTPOSTS'),
  );
  static const glacierInstantRetrieval = DatasyncLocationS3StorageClass._(
    TfArgLiteral('GLACIER_INSTANT_RETRIEVAL'),
  );

  static const List<DatasyncLocationS3StorageClass> values = [
    standard,
    standardIa,
    onezoneIa,
    intelligentTiering,
    glacier,
    deepArchive,
    outposts,
    glacierInstantRetrieval,
  ];
}

/// Typed helper for the `s3_config` block of
/// `aws_datasync_location_s3` (derived from provider schema).
@immutable
final class DatasyncLocationS3Config {
  const DatasyncLocationS3Config({required this.bucketAccessRoleArn});

  final TfArg<String> bucketAccessRoleArn;

  Map<String, Object?> encode() => {
    'bucket_access_role_arn': bucketAccessRoleArn.toTfJson(),
  };
}

/// Factory wrapper for `aws_datasync_location_s3`.
final class AwsDatasyncLocationS3 extends Resource {
  static const String tfType = 'aws_datasync_location_s3';

  AwsDatasyncLocationS3(
    super.localName, {
    TfArg<List<String>>? agentArns,
    TfArg<String>? region,
    required RefTo<AwsS3Bucket> s3BucketArn,
    DatasyncLocationS3StorageClass? s3StorageClass,
    required TfArg<String> subdirectory,
    TfArg<Map<String, String>>? tags,
    required DatasyncLocationS3Config s3Config,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'agent_arns': ?agentArns,
           'region': ?region,
           's3_bucket_arn': s3BucketArn.encodeAs('arn'),
           's3_storage_class': ?s3StorageClass,
           'subdirectory': subdirectory,
           'tags': ?tags,
           's3_config': TfArg.literal(s3Config.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDatasyncLocationS3Sensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDatasyncLocationS3>`.
  RefTo<AwsDatasyncLocationS3> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `uri` attribute.
  TfRef<String> get uri => TfRef.attribute<String>(this, 'uri');

  /// Reference to `agent_arns` attribute.
  TfRef<List<String>> get agentArns =>
      TfRef.attribute<List<String>>(this, 'agent_arns');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `s3_bucket_arn` attribute.
  TfRef<String> get s3BucketArn =>
      TfRef.attribute<String>(this, 's3_bucket_arn');

  /// Reference to `s3_storage_class` attribute.
  TfRef<String> get s3StorageClass =>
      TfRef.attribute<String>(this, 's3_storage_class');

  /// Reference to `subdirectory` attribute.
  TfRef<String> get subdirectory =>
      TfRef.attribute<String>(this, 'subdirectory');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
