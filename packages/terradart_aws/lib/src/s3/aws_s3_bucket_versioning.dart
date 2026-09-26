// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  final TfArg<String>? mfaDelete;

  final TfArg<String> status;

  Map<String, Object?> encode() => {
    if (mfaDelete != null) 'mfa_delete': mfaDelete!.toTfJson(),
    'status': status.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_versioning`.
final class AwsS3BucketVersioning extends Resource {
  static const String tfType = 'aws_s3_bucket_versioning';

  AwsS3BucketVersioning({
    required super.localName,
    required TfArg<String> bucket,
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
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (mfa != null) 'mfa': mfa,
           if (region != null) 'region': region,
           'versioning_configuration': TfArg.literal(
             versioningConfiguration.encode(),
           ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketVersioningSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
