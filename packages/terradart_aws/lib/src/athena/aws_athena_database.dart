// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;
import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_athena_database`.
const Set<String> _awsAthenaDatabaseSensitive = <String>{};

/// Typed helper for the `acl_configuration` block of
/// `aws_athena_database` (derived from provider schema).
@immutable
final class AthenaDatabaseAclConfiguration {
  const AthenaDatabaseAclConfiguration({required this.s3AclOption});

  final TfArg<AthenaDatabaseS3AclOption> s3AclOption;

  Map<String, Object?> encode() => {'s3_acl_option': s3AclOption.toTfJson()};
}

/// `s3_acl_option` — derived from the provider schema description.
enum AthenaDatabaseS3AclOption implements TerraformEnum {
  bucketOwnerFullControl('BUCKET_OWNER_FULL_CONTROL');

  const AthenaDatabaseS3AclOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_athena_database` (derived from provider schema).
@immutable
final class AthenaDatabaseEncryptionConfiguration {
  const AthenaDatabaseEncryptionConfiguration({
    required this.encryptionOption,
    this.kmsKey,
  });

  final TfArg<AthenaDatabaseEncryptionOption> encryptionOption;

  final RefTo<AwsKmsKey>? kmsKey;

  Map<String, Object?> encode() => {
    'encryption_option': encryptionOption.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
enum AthenaDatabaseEncryptionOption implements TerraformEnum {
  sseS3('SSE_S3'),
  sseKms('SSE_KMS'),
  cseKms('CSE_KMS');

  const AthenaDatabaseEncryptionOption(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_athena_database`.
final class AwsAthenaDatabase extends Resource {
  static const String tfType = 'aws_athena_database';

  AwsAthenaDatabase({
    required super.localName,
    RefTo<AwsS3Bucket>? bucket,
    TfArg<String>? comment,
    TfArg<String>? expectedBucketOwner,
    TfArg<bool>? forceDestroy,
    required TfArg<String> name,
    TfArg<Map<String, String>>? properties,
    TfArg<String>? region,
    TfArg<String>? workgroup,
    AthenaDatabaseAclConfiguration? aclConfiguration,
    AthenaDatabaseEncryptionConfiguration? encryptionConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': ?bucket?.encodeAs('id'),
           'comment': ?comment,
           'expected_bucket_owner': ?expectedBucketOwner,
           'force_destroy': ?forceDestroy,
           'name': name,
           'properties': ?properties,
           'region': ?region,
           'workgroup': ?workgroup,
           if (aclConfiguration != null)
             'acl_configuration': TfArg.literal(aclConfiguration.encode()),
           if (encryptionConfiguration != null)
             'encryption_configuration': TfArg.literal(
               encryptionConfiguration.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAthenaDatabaseSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAthenaDatabase>`.
  RefTo<AwsAthenaDatabase> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `comment` attribute.
  TfRef<String> get comment => TfRef.attribute<String>(this, 'comment');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `properties` attribute.
  TfRef<Map<String, String>> get properties =>
      TfRef.attribute<Map<String, String>>(this, 'properties');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `workgroup` attribute.
  TfRef<String> get workgroup => TfRef.attribute<String>(this, 'workgroup');
}
