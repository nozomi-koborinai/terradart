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

  final AthenaDatabaseS3AclOption s3AclOption;

  @internal
  Map<String, Object?> encode() => {'s3_acl_option': s3AclOption.toTfJson()};
}

/// `s3_acl_option` — derived from the provider schema description.
extension type const AthenaDatabaseS3AclOption._(TfArg<String> _)
    implements TfArg<String> {
  AthenaDatabaseS3AclOption.variable(String name)
    : this._(TfArg.variable(name));
  AthenaDatabaseS3AclOption.expression(String template)
    : this._(TfArg.expression(template));
  const AthenaDatabaseS3AclOption.arg(TfArg<String> arg) : this._(arg);

  static const bucketOwnerFullControl = AthenaDatabaseS3AclOption._(
    TfArgLiteral('BUCKET_OWNER_FULL_CONTROL'),
  );

  static const List<AthenaDatabaseS3AclOption> values = [
    bucketOwnerFullControl,
  ];
}

/// Typed helper for the `encryption_configuration` block of
/// `aws_athena_database` (derived from provider schema).
@immutable
final class AthenaDatabaseEncryptionConfiguration {
  const AthenaDatabaseEncryptionConfiguration({
    required this.encryptionOption,
    this.kmsKey,
  });

  final AthenaDatabaseEncryptionOption encryptionOption;

  final RefTo<AwsKmsKey>? kmsKey;

  @internal
  Map<String, Object?> encode() => {
    'encryption_option': encryptionOption.toTfJson(),
    'kms_key': ?kmsKey?.encodeAs('arn').toTfJson(),
  };
}

/// `encryption_option` — derived from the provider schema description.
extension type const AthenaDatabaseEncryptionOption._(TfArg<String> _)
    implements TfArg<String> {
  AthenaDatabaseEncryptionOption.variable(String name)
    : this._(TfArg.variable(name));
  AthenaDatabaseEncryptionOption.expression(String template)
    : this._(TfArg.expression(template));
  const AthenaDatabaseEncryptionOption.arg(TfArg<String> arg) : this._(arg);

  static const sseS3 = AthenaDatabaseEncryptionOption._(TfArgLiteral('SSE_S3'));
  static const sseKms = AthenaDatabaseEncryptionOption._(
    TfArgLiteral('SSE_KMS'),
  );
  static const cseKms = AthenaDatabaseEncryptionOption._(
    TfArgLiteral('CSE_KMS'),
  );

  static const List<AthenaDatabaseEncryptionOption> values = [
    sseS3,
    sseKms,
    cseKms,
  ];
}

/// Factory wrapper for `aws_athena_database`.
final class AwsAthenaDatabase extends Resource {
  static const String tfType = 'aws_athena_database';

  AwsAthenaDatabase(
    super.localName, {
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
