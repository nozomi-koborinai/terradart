// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_acl`.
const Set<String> _awsS3BucketAclSensitive = <String>{};

/// Exactly one of `access_control_policy`, `acl` on `aws_s3_bucket_acl`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.accessControlPolicy(...)`.
sealed class S3BucketAclPolicy {
  const S3BucketAclPolicy();

  /// Sets `access_control_policy`.
  const factory S3BucketAclPolicy.accessControlPolicy(
    S3BucketAclAccessControlPolicy accessControlPolicy,
  ) = S3BucketAclAccessControlPolicyChoice;

  /// Sets `acl`.
  const factory S3BucketAclPolicy.acl(TfArg<String> acl) = S3BucketAclPolicyAcl;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [S3BucketAclPolicy.accessControlPolicy] choice: sets `access_control_policy`.
final class S3BucketAclAccessControlPolicyChoice extends S3BucketAclPolicy {
  const S3BucketAclAccessControlPolicyChoice(this.accessControlPolicy);

  final S3BucketAclAccessControlPolicy accessControlPolicy;

  @override
  String get blockKey => 'access_control_policy';

  @override
  Map<String, Object?> encode() => {
    'access_control_policy': accessControlPolicy.encode(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'access_control_policy': TfArg.literal(accessControlPolicy.encode()),
  };
}

/// The [S3BucketAclPolicy.acl] choice: sets `acl`.
final class S3BucketAclPolicyAcl extends S3BucketAclPolicy {
  const S3BucketAclPolicyAcl(this.acl);

  final TfArg<String> acl;

  @override
  String get blockKey => 'acl';

  @override
  Map<String, Object?> encode() => {'acl': acl.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'acl': acl};
}

/// Typed helper for the `access_control_policy` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclAccessControlPolicy {
  const S3BucketAclAccessControlPolicy({this.grant, required this.owner});

  final List<S3BucketAclGrant>? grant;

  final S3BucketAclOwner owner;

  Map<String, Object?> encode() => {
    if (grant != null) 'grant': [for (final e in grant!) e.encode()],
    'owner': owner.encode(),
  };
}

/// Typed helper for the `access_control_policy.grant` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclGrant {
  const S3BucketAclGrant({required this.permission, this.grantee});

  final TfArg<S3BucketAclPermission> permission;

  final S3BucketAclGrantee? grantee;

  Map<String, Object?> encode() => {
    'permission': permission.toTfJson(),
    'grantee': ?grantee?.encode(),
  };
}

/// `permission` — derived from the provider schema description.
enum S3BucketAclPermission implements TerraformEnum {
  fullControl('FULL_CONTROL'),
  write('WRITE'),
  writeAcp('WRITE_ACP'),
  read('READ'),
  readAcp('READ_ACP');

  const S3BucketAclPermission(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_control_policy.grant.grantee` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclGrantee {
  const S3BucketAclGrantee({
    this.emailAddress,
    this.id,
    required this.type,
    this.uri,
  });

  final TfArg<String>? emailAddress;

  final TfArg<String>? id;

  final TfArg<S3BucketAclType> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    'email_address': ?emailAddress?.toTfJson(),
    'id': ?id?.toTfJson(),
    'type': type.toTfJson(),
    'uri': ?uri?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum S3BucketAclType implements TerraformEnum {
  canonicaluser('CanonicalUser'),
  amazoncustomerbyemail('AmazonCustomerByEmail'),
  group('Group');

  const S3BucketAclType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `access_control_policy.owner` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclOwner {
  const S3BucketAclOwner({this.displayName, required this.id});

  final TfArg<String>? displayName;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    'display_name': ?displayName?.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_acl`.
final class AwsS3BucketAcl extends Resource {
  static const String tfType = 'aws_s3_bucket_acl';

  AwsS3BucketAcl(
    super.localName, {
    required S3BucketAclPolicy policy,
    required RefTo<AwsS3Bucket> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           ...policy.argMap,
           'bucket': bucket.encodeAs('id'),
           'expected_bucket_owner': ?expectedBucketOwner,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketAclSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketAcl>`.
  RefTo<AwsS3BucketAcl> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `acl` attribute.
  TfRef<String> get acl => TfRef.attribute<String>(this, 'acl');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `expected_bucket_owner` attribute.
  TfRef<String> get expectedBucketOwner =>
      TfRef.attribute<String>(this, 'expected_bucket_owner');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
