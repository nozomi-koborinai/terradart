// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_ownership_controls`.
const Set<String> _awsS3BucketOwnershipControlsSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_ownership_controls` (derived from provider schema).
@immutable
final class S3BucketOwnershipControlsRule {
  const S3BucketOwnershipControlsRule({required this.objectOwnership});

  final TfArg<S3BucketOwnershipControlsObjectOwnership> objectOwnership;

  Map<String, Object?> encode() => {
    'object_ownership': objectOwnership.toTfJson(),
  };
}

/// `object_ownership` — derived from the provider schema description.
enum S3BucketOwnershipControlsObjectOwnership implements TerraformEnum {
  bucketownerpreferred('BucketOwnerPreferred'),
  objectwriter('ObjectWriter'),
  bucketownerenforced('BucketOwnerEnforced');

  const S3BucketOwnershipControlsObjectOwnership(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_s3_bucket_ownership_controls`.
final class AwsS3BucketOwnershipControls extends Resource {
  static const String tfType = 'aws_s3_bucket_ownership_controls';

  AwsS3BucketOwnershipControls(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? region,
    required S3BucketOwnershipControlsRule rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'region': ?region,
           'rule': TfArg.literal(rule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketOwnershipControlsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketOwnershipControls>`.
  RefTo<AwsS3BucketOwnershipControls> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
