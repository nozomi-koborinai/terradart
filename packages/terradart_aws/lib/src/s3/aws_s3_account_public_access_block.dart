// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_account_public_access_block`.
const Set<String> _awsS3AccountPublicAccessBlockSensitive = <String>{};

/// Factory wrapper for `aws_s3_account_public_access_block`.
final class AwsS3AccountPublicAccessBlock extends Resource {
  static const String tfType = 'aws_s3_account_public_access_block';

  AwsS3AccountPublicAccessBlock({
    required super.localName,
    TfArg<String>? accountId,
    TfArg<bool>? blockPublicAcls,
    TfArg<bool>? blockPublicPolicy,
    TfArg<bool>? ignorePublicAcls,
    TfArg<bool>? restrictPublicBuckets,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': ?accountId,
           'block_public_acls': ?blockPublicAcls,
           'block_public_policy': ?blockPublicPolicy,
           'ignore_public_acls': ?ignorePublicAcls,
           'restrict_public_buckets': ?restrictPublicBuckets,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3AccountPublicAccessBlockSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3AccountPublicAccessBlock>`.
  RefTo<AwsS3AccountPublicAccessBlock> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
