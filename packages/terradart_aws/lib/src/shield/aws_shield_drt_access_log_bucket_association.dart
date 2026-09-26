// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_shield_drt_access_log_bucket_association`.
const Set<String> _awsShieldDrtAccessLogBucketAssociationSensitive = <String>{};

/// Factory wrapper for `aws_shield_drt_access_log_bucket_association`.
final class AwsShieldDrtAccessLogBucketAssociation extends Resource {
  static const String tfType = 'aws_shield_drt_access_log_bucket_association';

  AwsShieldDrtAccessLogBucketAssociation({
    required super.localName,
    required TfArg<String> logBucket,
    required TfArg<String> roleArnAssociationId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'log_bucket': logBucket,
           'role_arn_association_id': roleArnAssociationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsShieldDrtAccessLogBucketAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
