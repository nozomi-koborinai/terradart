// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_shield_drt_access_log_bucket_association`.
const Set<String> _awsShieldDrtAccessLogBucketAssociationSensitive = <String>{};

/// Factory wrapper for `aws_shield_drt_access_log_bucket_association`.
final class AwsShieldDrtAccessLogBucketAssociation extends Resource {
  static const String tfType = 'aws_shield_drt_access_log_bucket_association';

  AwsShieldDrtAccessLogBucketAssociation(
    super.localName, {
    required RefTo<AwsS3Bucket> logBucket,
    required TfArg<String> roleArnAssociationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_bucket': logBucket.encodeAs('id'),
           'role_arn_association_id': roleArnAssociationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsShieldDrtAccessLogBucketAssociationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsShieldDrtAccessLogBucketAssociation>`.
  RefTo<AwsShieldDrtAccessLogBucketAssociation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `log_bucket` attribute.
  TfRef<String> get logBucket => TfRef.attribute<String>(this, 'log_bucket');

  /// Reference to `role_arn_association_id` attribute.
  TfRef<String> get roleArnAssociationId =>
      TfRef.attribute<String>(this, 'role_arn_association_id');
}
