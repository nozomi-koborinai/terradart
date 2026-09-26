// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_ownership_controls`.
const Set<String> _awsS3BucketOwnershipControlsSensitive = <String>{};

/// Typed helper for the `rule` block of
/// `aws_s3_bucket_ownership_controls` (derived from provider schema).
@immutable
final class S3BucketOwnershipControlsRule {
  const S3BucketOwnershipControlsRule({required this.objectOwnership});

  final TfArg<String> objectOwnership;

  Map<String, Object?> encode() => {
    'object_ownership': objectOwnership.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_ownership_controls`.
final class AwsS3BucketOwnershipControls extends Resource {
  static const String tfType = 'aws_s3_bucket_ownership_controls';

  AwsS3BucketOwnershipControls({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? region,
    required S3BucketOwnershipControlsRule rule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (region != null) 'region': region,
           'rule': TfArg.literal(rule.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketOwnershipControlsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
