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

  final TfArg<AthenaDatabaseAclConfigurationS3AclOption> s3AclOption;

  Map<String, Object?> encode() => {'s3_acl_option': s3AclOption.toTfJson()};
}

/// `s3_acl_option` — derived from the provider schema description.
enum AthenaDatabaseAclConfigurationS3AclOption implements TerraformEnum {
  bucketOwnerFullControl('BUCKET_OWNER_FULL_CONTROL');

  const AthenaDatabaseAclConfigurationS3AclOption(this.terraformValue);
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

  final TfArg<AthenaDatabaseEncryptionConfigurationEncryptionOption>
  encryptionOption;

  final RefTo<AwsKmsKey>? kmsKey;

  Map<String, Object?> encode() => {
    'encryption_option': encryptionOption.toTfJson(),
    if (kmsKey != null) 'kms_key': kmsKey!.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
enum AthenaDatabaseEncryptionConfigurationEncryptionOption
    implements TerraformEnum {
  sseS3('SSE_S3'),
  sseKms('SSE_KMS'),
  cseKms('CSE_KMS');

  const AthenaDatabaseEncryptionConfigurationEncryptionOption(
    this.terraformValue,
  );
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
           if (bucket != null) 'bucket': bucket.encodeAs('id'),
           if (comment != null) 'comment': comment,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'name': name,
           if (properties != null) 'properties': properties,
           if (region != null) 'region': region,
           if (workgroup != null) 'workgroup': workgroup,
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
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
