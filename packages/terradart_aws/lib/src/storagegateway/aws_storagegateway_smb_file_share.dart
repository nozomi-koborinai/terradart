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

  /// Reference to `access_based_enumeration` attribute.
  TfRef<bool> get accessBasedEnumeration =>
      TfRef.attribute<bool>(this, 'access_based_enumeration');

  /// Reference to `admin_user_list` attribute.
  TfRef<List<String>> get adminUserList =>
      TfRef.attribute<List<String>>(this, 'admin_user_list');

  /// Reference to `audit_destination_arn` attribute.
  TfRef<String> get auditDestinationArn =>
      TfRef.attribute<String>(this, 'audit_destination_arn');

  /// Reference to `authentication` attribute.
  TfRef<String> get authentication =>
      TfRef.attribute<String>(this, 'authentication');

  /// Reference to `bucket_region` attribute.
  TfRef<String> get bucketRegion =>
      TfRef.attribute<String>(this, 'bucket_region');

  /// Reference to `case_sensitivity` attribute.
  TfRef<String> get caseSensitivity =>
      TfRef.attribute<String>(this, 'case_sensitivity');

  /// Reference to `default_storage_class` attribute.
  TfRef<String> get defaultStorageClass =>
      TfRef.attribute<String>(this, 'default_storage_class');

  /// Reference to `file_share_name` attribute.
  TfRef<String> get fileShareName =>
      TfRef.attribute<String>(this, 'file_share_name');

  /// Reference to `gateway_arn` attribute.
  TfRef<String> get gatewayArn => TfRef.attribute<String>(this, 'gateway_arn');

  /// Reference to `guess_mime_type_enabled` attribute.
  TfRef<bool> get guessMimeTypeEnabled =>
      TfRef.attribute<bool>(this, 'guess_mime_type_enabled');

  /// Reference to `invalid_user_list` attribute.
  TfRef<List<String>> get invalidUserList =>
      TfRef.attribute<List<String>>(this, 'invalid_user_list');

  /// Reference to `kms_encrypted` attribute.
  TfRef<bool> get kmsEncrypted => TfRef.attribute<bool>(this, 'kms_encrypted');

  /// Reference to `kms_key_arn` attribute.
  TfRef<String> get kmsKeyArn => TfRef.attribute<String>(this, 'kms_key_arn');

  /// Reference to `location_arn` attribute.
  TfRef<String> get locationArn =>
      TfRef.attribute<String>(this, 'location_arn');

  /// Reference to `notification_policy` attribute.
  TfRef<String> get notificationPolicy =>
      TfRef.attribute<String>(this, 'notification_policy');

  /// Reference to `object_acl` attribute.
  TfRef<String> get objectAcl => TfRef.attribute<String>(this, 'object_acl');

  /// Reference to `oplocks_enabled` attribute.
  TfRef<bool> get oplocksEnabled =>
      TfRef.attribute<bool>(this, 'oplocks_enabled');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `requester_pays` attribute.
  TfRef<bool> get requesterPays =>
      TfRef.attribute<bool>(this, 'requester_pays');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `smb_acl_enabled` attribute.
  TfRef<bool> get smbAclEnabled =>
      TfRef.attribute<bool>(this, 'smb_acl_enabled');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `valid_user_list` attribute.
  TfRef<List<String>> get validUserList =>
      TfRef.attribute<List<String>>(this, 'valid_user_list');

  /// Reference to `vpc_endpoint_dns_name` attribute.
  TfRef<String> get vpcEndpointDnsName =>
      TfRef.attribute<String>(this, 'vpc_endpoint_dns_name');
}
