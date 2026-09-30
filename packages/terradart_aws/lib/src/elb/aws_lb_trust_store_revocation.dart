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
           'region': ?region,
           'revocations_s3_bucket': revocationsS3Bucket,
           'revocations_s3_key': revocationsS3Key,
           'revocations_s3_object_version': ?revocationsS3ObjectVersion,
           'trust_store_arn': trustStoreArn,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLbTrustStoreRevocationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLbTrustStoreRevocation>`.
  RefTo<AwsLbTrustStoreRevocation> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `revocation_id` attribute.
  TfRef<num> get revocationId => TfRef.attribute<num>(this, 'revocation_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `revocations_s3_bucket` attribute.
  TfRef<String> get revocationsS3BucketRef =>
      TfRef.attribute<String>(this, 'revocations_s3_bucket');

  /// Reference to `revocations_s3_key` attribute.
  TfRef<String> get revocationsS3KeyRef =>
      TfRef.attribute<String>(this, 'revocations_s3_key');

  /// Reference to `revocations_s3_object_version` attribute.
  TfRef<String> get revocationsS3ObjectVersionRef =>
      TfRef.attribute<String>(this, 'revocations_s3_object_version');

  /// Reference to `trust_store_arn` attribute.
  TfRef<String> get trustStoreArnRef =>
      TfRef.attribute<String>(this, 'trust_store_arn');
}
