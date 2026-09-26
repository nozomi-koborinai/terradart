// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_account_public_access_block`.
const Set<String> _awsS3AccountPublicAccessBlockSensitive = <String>{};

/// Factory wrapper for `aws_s3_account_public_access_block`.
final class DataAwsS3AccountPublicAccessBlock extends Data {
  static const String tfType = 'aws_s3_account_public_access_block';

  DataAwsS3AccountPublicAccessBlock({
    required super.localName,
    TfArg<String>? accountId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {if (accountId != null) 'account_id': accountId},
       );

  @override
  Set<String> get sensitiveFields => _awsS3AccountPublicAccessBlockSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `block_public_acls` attribute.
  TfRef<bool> get blockPublicAcls =>
      TfRef.attribute<bool>(this, 'block_public_acls');

  /// Reference to `block_public_policy` attribute.
  TfRef<bool> get blockPublicPolicy =>
      TfRef.attribute<bool>(this, 'block_public_policy');

  /// Reference to `ignore_public_acls` attribute.
  TfRef<bool> get ignorePublicAcls =>
      TfRef.attribute<bool>(this, 'ignore_public_acls');

  /// Reference to `restrict_public_buckets` attribute.
  TfRef<bool> get restrictPublicBuckets =>
      TfRef.attribute<bool>(this, 'restrict_public_buckets');
}
