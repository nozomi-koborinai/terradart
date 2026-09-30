// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_versioning`.
const Set<String> _awsS3BucketVersioningSensitive = <String>{};

/// Typed helper for the `versioning_configuration` block of
/// `aws_s3_bucket_versioning` (derived from provider schema).
@immutable
final class S3BucketVersioningVersioningConfiguration {
  const S3BucketVersioningVersioningConfiguration({
    this.mfaDelete,
    required this.status,
  });

  final TfArg<S3BucketVersioningVersioningConfigurationMfaDelete>? mfaDelete;

  final TfArg<String> status;

  Map<String, Object?> encode() => {
    'mfa_delete': ?mfaDelete?.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// `mfa_delete` — derived from the provider schema description.
enum S3BucketVersioningVersioningConfigurationMfaDelete
    implements TerraformEnum {
  enabled('Enabled'),
  disabled('Disabled');

  const S3BucketVersioningVersioningConfigurationMfaDelete(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_versioning`.
final class AwsS3BucketVersioning extends Resource {
  static const String tfType = 'aws_s3_bucket_versioning';

  AwsS3BucketVersioning({
    required super.localName,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? mfa,
    TfArg<String>? region,
    required S3BucketVersioningVersioningConfiguration versioningConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'mfa': ?mfa,
           'region': ?region,
           'versioning_configuration': TfArg.literal(
             versioningConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketVersioningSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketVersioning>`.
  RefTo<AwsS3BucketVersioning> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwnerRef =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `mfa` attribute.
  TfRef<String> get mfaRef => TfRef.attribute<String>(this, 'mfa');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');
}
