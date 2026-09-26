// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_lb_trust_store_revocation`.
const Set<String> _awsLbTrustStoreRevocationSensitive = <String>{};

/// Factory wrapper for `aws_lb_trust_store_revocation`.
final class AwsLbTrustStoreRevocation extends Resource {
  static const String tfType = 'aws_lb_trust_store_revocation';

  AwsLbTrustStoreRevocation({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> revocationsS3Bucket,
    required TfArg<String> revocationsS3Key,
    TfArg<String>? revocationsS3ObjectVersion,
    required TfArg<String> trustStoreArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'revocations_s3_bucket': revocationsS3Bucket,
           'revocations_s3_key': revocationsS3Key,
           if (revocationsS3ObjectVersion != null)
             'revocations_s3_object_version': revocationsS3ObjectVersion,
           'trust_store_arn': trustStoreArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbTrustStoreRevocationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revocation_id` attribute.
  TfRef<num> get revocationId => TfRef.attribute<num>(this, 'revocation_id');
}
