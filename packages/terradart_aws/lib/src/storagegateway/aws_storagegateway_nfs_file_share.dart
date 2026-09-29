// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_storagegateway_nfs_file_share`.
const Set<String> _awsStoragegatewayNfsFileShareSensitive = <String>{};

/// Storagegateway Nfs File Share Default Storage enum for `default_storage_class`.
enum StoragegatewayNfsFileShareDefaultStorageClass implements TerraformEnum {
  s3IntelligentTiering('S3_INTELLIGENT_TIERING'),
  s3OnezoneIa('S3_ONEZONE_IA'),
  s3Standard('S3_STANDARD'),
  s3StandardIa('S3_STANDARD_IA');

  const StoragegatewayNfsFileShareDefaultStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Nfs File Share Object enum for `object_acl`.
enum StoragegatewayNfsFileShareObjectAcl implements TerraformEnum {
  private('private'),
  publicRead('public-read'),
  publicReadWrite('public-read-write'),
  authenticatedRead('authenticated-read'),
  bucketOwnerRead('bucket-owner-read'),
  bucketOwnerFullControl('bucket-owner-full-control'),
  awsExecRead('aws-exec-read');

  const StoragegatewayNfsFileShareObjectAcl(this.terraformValue);
  @override
  final String terraformValue;
}

/// Storagegateway Nfs File Share enum for `squash`.
enum StoragegatewayNfsFileShareSquash implements TerraformEnum {
  allsquash('AllSquash'),
  nosquash('NoSquash'),
  rootsquash('RootSquash');

  const StoragegatewayNfsFileShareSquash(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `cache_attributes` block of
/// `aws_storagegateway_nfs_file_share` (derived from provider schema).
@immutable
final class StoragegatewayNfsFileShareCacheAttributes {
  const StoragegatewayNfsFileShareCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  final TfArg<num>? cacheStaleTimeoutInSeconds;

  Map<String, Object?> encode() => {
    'cache_stale_timeout_in_seconds': ?cacheStaleTimeoutInSeconds?.toTfJson(),
  };
}

/// Typed helper for the `nfs_file_share_defaults` block of
/// `aws_storagegateway_nfs_file_share` (derived from provider schema).
@immutable
final class StoragegatewayNfsFileShareNfsFileShareDefaults {
  const StoragegatewayNfsFileShareNfsFileShareDefaults({
    this.directoryMode,
    this.fileMode,
    this.groupId,
    this.ownerId,
  });

  final TfArg<String>? directoryMode;

  final TfArg<String>? fileMode;

  final TfArg<String>? groupId;

  final TfArg<String>? ownerId;

  Map<String, Object?> encode() => {
    'directory_mode': ?directoryMode?.toTfJson(),
    'file_mode': ?fileMode?.toTfJson(),
    'group_id': ?groupId?.toTfJson(),
    'owner_id': ?ownerId?.toTfJson(),
  };
}

/// Factory wrapper for `aws_storagegateway_nfs_file_share`.
final class AwsStoragegatewayNfsFileShare extends Resource {
  static const String tfType = 'aws_storagegateway_nfs_file_share';

  AwsStoragegatewayNfsFileShare({
    required super.localName,
    TfArg<String>? auditDestinationArn,
    TfArg<String>? bucketRegion,
    required TfArg<List<String>> clientList,
    TfArg<StoragegatewayNfsFileShareDefaultStorageClass>? defaultStorageClass,
    TfArg<String>? fileShareName,
    required TfArg<String> gatewayArn,
    TfArg<bool>? guessMimeTypeEnabled,
    TfArg<bool>? kmsEncrypted,
    RefTo<AwsKmsKey>? kmsKeyArn,
    required TfArg<String> locationArn,
    TfArg<String>? notificationPolicy,
    TfArg<StoragegatewayNfsFileShareObjectAcl>? objectAcl,
    TfArg<bool>? readOnly,
    TfArg<String>? region,
    TfArg<bool>? requesterPays,
    required RefTo<AwsIamRole> roleArn,
    TfArg<StoragegatewayNfsFileShareSquash>? squash,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? vpcEndpointDnsName,
    StoragegatewayNfsFileShareCacheAttributes? cacheAttributes,
    StoragegatewayNfsFileShareNfsFileShareDefaults? nfsFileShareDefaults,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'audit_destination_arn': ?auditDestinationArn,
           'bucket_region': ?bucketRegion,
           'client_list': clientList,
           'default_storage_class': ?defaultStorageClass,
           'file_share_name': ?fileShareName,
           'gateway_arn': gatewayArn,
           'guess_mime_type_enabled': ?guessMimeTypeEnabled,
           'kms_encrypted': ?kmsEncrypted,
           'kms_key_arn': ?kmsKeyArn?.encodeAs('arn'),
           'location_arn': locationArn,
           'notification_policy': ?notificationPolicy,
           'object_acl': ?objectAcl,
           'read_only': ?readOnly,
           'region': ?region,
           'requester_pays': ?requesterPays,
           'role_arn': roleArn.encodeAs('arn'),
           'squash': ?squash,
           'tags': ?tags,
           'vpc_endpoint_dns_name': ?vpcEndpointDnsName,
           if (cacheAttributes != null)
             'cache_attributes': TfArg.literal(cacheAttributes.encode()),
           if (nfsFileShareDefaults != null)
             'nfs_file_share_defaults': TfArg.literal(
               nfsFileShareDefaults.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayNfsFileShareSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsStoragegatewayNfsFileShare>`.
  RefTo<AwsStoragegatewayNfsFileShare> get ref => RefTo.of(this);

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
