// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3files_file_system`.
const Set<String> _awsS3filesFileSystemSensitive = <String>{};

/// Factory wrapper for `aws_s3files_file_system`.
final class AwsS3filesFileSystem extends Resource {
  static const String tfType = 'aws_s3files_file_system';

  AwsS3filesFileSystem({
    required super.localName,
    TfArg<bool>? acceptBucketWarning,
    required RefTo<AwsS3Bucket> bucket,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? prefix,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_bucket_warning': ?acceptBucketWarning,
           'bucket': bucket.encodeAs('id'),
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'prefix': ?prefix,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3filesFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3filesFileSystem>`.
  RefTo<AwsS3filesFileSystem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
