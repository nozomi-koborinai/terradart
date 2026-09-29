// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_storagegateway_smb_file_share`.
const Set<String> _awsStoragegatewaySmbFileShareSensitive = <String>{};

/// Storagegateway Smb File Share enum for `authentication`.
enum StoragegatewaySmbFileShareAuthentication implements TerraformEnum {
  activedirectory('ActiveDirectory'),
  guestaccess('GuestAccess');

  const StoragegatewaySmbFileShareAuthentication(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Smb File Share Case enum for `case_sensitivity`.
enum StoragegatewaySmbFileShareCaseSensitivity implements TerraformEnum {
  clientspecified('ClientSpecified'),
  casesensitive('CaseSensitive');

  const StoragegatewaySmbFileShareCaseSensitivity(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Smb File Share Default Storage enum for `default_storage_class`.
enum StoragegatewaySmbFileShareDefaultStorageClass implements TerraformEnum {
  s3IntelligentTiering('S3_INTELLIGENT_TIERING'),
  s3OnezoneIa('S3_ONEZONE_IA'),
  s3Standard('S3_STANDARD'),
  s3StandardIa('S3_STANDARD_IA');

  const StoragegatewaySmbFileShareDefaultStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Smb File Share Object enum for `object_acl`.
enum StoragegatewaySmbFileShareObjectAcl implements TerraformEnum {
  private('private'),
  publicRead('public-read'),
  publicReadWrite('public-read-write'),
  authenticatedRead('authenticated-read'),
  bucketOwnerRead('bucket-owner-read'),
  bucketOwnerFullControl('bucket-owner-full-control'),
  awsExecRead('aws-exec-read');

  const StoragegatewaySmbFileShareObjectAcl(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_attributes` block of
/// `aws_storagegateway_smb_file_share` (derived from provider schema).
@immutable
final class StoragegatewaySmbFileShareCacheAttributes {
  const StoragegatewaySmbFileShareCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  final TfArg<num>? cacheStaleTimeoutInSeconds;

  Map<String, Object?> encode() => {
    'cache_stale_timeout_in_seconds': ?cacheStaleTimeoutInSeconds?.toTfJson(),
  };
}

/// Factory wrapper for `aws_storagegateway_smb_file_share`.
final class AwsStoragegatewaySmbFileShare extends Resource {
  static const String tfType = 'aws_storagegateway_smb_file_share';

  AwsStoragegatewaySmbFileShare({
    required super.localName,
    TfArg<bool>? accessBasedEnumeration,
    TfArg<List<String>>? adminUserList,
    TfArg<String>? auditDestinationArn,
    TfArg<StoragegatewaySmbFileShareAuthentication>? authentication,
    TfArg<String>? bucketRegion,
    TfArg<StoragegatewaySmbFileShareCaseSensitivity>? caseSensitivity,
    TfArg<StoragegatewaySmbFileShareDefaultStorageClass>? defaultStorageClass,
    TfArg<String>? fileShareName,
    required TfArg<String> gatewayArn,
    TfArg<bool>? guessMimeTypeEnabled,
    TfArg<List<String>>? invalidUserList,
    TfArg<bool>? kmsEncrypted,
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> locationArn,
    TfArg<String>? notificationPolicy,
    TfArg<StoragegatewaySmbFileShareObjectAcl>? objectAcl,
    TfArg<bool>? oplocksEnabled,
    TfArg<bool>? readOnly,
    TfArg<String>? region,
    TfArg<bool>? requesterPays,
    required RefTo<AwsIamRole> roleArn,
    TfArg<bool>? smbAclEnabled,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? validUserList,
    TfArg<String>? vpcEndpointDnsName,
    StoragegatewaySmbFileShareCacheAttributes? cacheAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'access_based_enumeration': ?accessBasedEnumeration,
           'admin_user_list': ?adminUserList,
           'audit_destination_arn': ?auditDestinationArn,
           'authentication': ?authentication,
           'bucket_region': ?bucketRegion,
           'case_sensitivity': ?caseSensitivity,
           'default_storage_class': ?defaultStorageClass,
           'file_share_name': ?fileShareName,
           'gateway_arn': gatewayArn,
           'guess_mime_type_enabled': ?guessMimeTypeEnabled,
           'invalid_user_list': ?invalidUserList,
           'kms_encrypted': ?kmsEncrypted,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'location_arn': locationArn,
           'notification_policy': ?notificationPolicy,
           'object_acl': ?objectAcl,
           'oplocks_enabled': ?oplocksEnabled,
           'read_only': ?readOnly,
           'region': ?region,
           'requester_pays': ?requesterPays,
           'role_arn': roleArn.encodeAs('arn'),
           'smb_acl_enabled': ?smbAclEnabled,
           'tags': ?tags,
           'valid_user_list': ?validUserList,
           'vpc_endpoint_dns_name': ?vpcEndpointDnsName,
           if (cacheAttributes != null)
             'cache_attributes': TfArg.literal(cacheAttributes.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewaySmbFileShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsStoragegatewaySmbFileShare>`.
  RefTo<AwsStoragegatewaySmbFileShare> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `fileshare_id` attribute.
  TfRef<String> get fileshareId =>
      TfRef.attribute<String>(this, 'fileshare_id');

  /// Reference to `path` attribute.
  TfRef<String> get path => TfRef.attribute<String>(this, 'path');
}
