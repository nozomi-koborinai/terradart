// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_acl`.
const Set<String> _awsS3BucketAclSensitive = <String>{};

/// Typed helper for the `access_control_policy` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclAccessControlPolicy {
  const S3BucketAclAccessControlPolicy({this.grant, required this.owner});

  final List<S3BucketAclAccessControlPolicyGrant>? grant;

  final S3BucketAclAccessControlPolicyOwner owner;

  Map<String, Object?> encode() => {
    if (grant != null) 'grant': [for (final e in grant!) e.encode()],
    'owner': owner.encode(),
  };
}

/// Typed helper for the `access_control_policy.grant` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclAccessControlPolicyGrant {
  const S3BucketAclAccessControlPolicyGrant({
    required this.permission,
    this.grantee,
  });

  final TfArg<String> permission;

  final S3BucketAclAccessControlPolicyGrantGrantee? grantee;

  Map<String, Object?> encode() => {
    'permission': permission.toTfJson(),
    if (grantee != null) 'grantee': grantee!.encode(),
  };
}

/// Typed helper for the `access_control_policy.grant.grantee` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclAccessControlPolicyGrantGrantee {
  const S3BucketAclAccessControlPolicyGrantGrantee({
    this.emailAddress,
    this.id,
    required this.type,
    this.uri,
  });

  final TfArg<String>? emailAddress;

  final TfArg<String>? id;

  final TfArg<String> type;

  final TfArg<String>? uri;

  Map<String, Object?> encode() => {
    if (emailAddress != null) 'email_address': emailAddress!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    'type': type.toTfJson(),
    if (uri != null) 'uri': uri!.toTfJson(),
  };
}

/// Typed helper for the `access_control_policy.owner` block of
/// `aws_s3_bucket_acl` (derived from provider schema).
@immutable
final class S3BucketAclAccessControlPolicyOwner {
  const S3BucketAclAccessControlPolicyOwner({
    this.displayName,
    required this.id,
  });

  final TfArg<String>? displayName;

  final TfArg<String> id;

  Map<String, Object?> encode() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    'id': id.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_acl`.
final class AwsS3BucketAcl extends Resource {
  static const String tfType = 'aws_s3_bucket_acl';

  AwsS3BucketAcl({
    required super.localName,
    TfArg<String>? acl,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    S3BucketAclAccessControlPolicy? accessControlPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (acl != null) 'acl': acl,
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           if (accessControlPolicy != null)
             'access_control_policy': TfArg.literal(
               accessControlPolicy.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketAclSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
