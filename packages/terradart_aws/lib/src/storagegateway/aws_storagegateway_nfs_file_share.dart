// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_nfs_file_share`.
const Set<String> _awsStoragegatewayNfsFileShareSensitive = <String>{};

/// Typed helper for the `cache_attributes` block of
/// `aws_storagegateway_nfs_file_share` (derived from provider schema).
@immutable
final class StoragegatewayNfsFileShareCacheAttributes {
  const StoragegatewayNfsFileShareCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  final TfArg<num>? cacheStaleTimeoutInSeconds;

  Map<String, Object?> encode() => {
    if (cacheStaleTimeoutInSeconds != null)
      'cache_stale_timeout_in_seconds': cacheStaleTimeoutInSeconds!.toTfJson(),
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
    if (directoryMode != null) 'directory_mode': directoryMode!.toTfJson(),
    if (fileMode != null) 'file_mode': fileMode!.toTfJson(),
    if (groupId != null) 'group_id': groupId!.toTfJson(),
    if (ownerId != null) 'owner_id': ownerId!.toTfJson(),
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
    TfArg<String>? defaultStorageClass,
    TfArg<String>? fileShareName,
    required TfArg<String> gatewayArn,
    TfArg<bool>? guessMimeTypeEnabled,
    TfArg<bool>? kmsEncrypted,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> locationArn,
    TfArg<String>? notificationPolicy,
    TfArg<String>? objectAcl,
    TfArg<bool>? readOnly,
    TfArg<String>? region,
    TfArg<bool>? requesterPays,
    required TfArg<String> roleArn,
    TfArg<String>? squash,
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
           if (auditDestinationArn != null)
             'audit_destination_arn': auditDestinationArn,
           if (bucketRegion != null) 'bucket_region': bucketRegion,
           'client_list': clientList,
           if (defaultStorageClass != null)
             'default_storage_class': defaultStorageClass,
           if (fileShareName != null) 'file_share_name': fileShareName,
           'gateway_arn': gatewayArn,
           if (guessMimeTypeEnabled != null)
             'guess_mime_type_enabled': guessMimeTypeEnabled,
           if (kmsEncrypted != null) 'kms_encrypted': kmsEncrypted,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'location_arn': locationArn,
           if (notificationPolicy != null)
             'notification_policy': notificationPolicy,
           if (objectAcl != null) 'object_acl': objectAcl,
           if (readOnly != null) 'read_only': readOnly,
           if (region != null) 'region': region,
           if (requesterPays != null) 'requester_pays': requesterPays,
           'role_arn': roleArn,
           if (squash != null) 'squash': squash,
           if (tags != null) 'tags': tags,
           if (vpcEndpointDnsName != null)
             'vpc_endpoint_dns_name': vpcEndpointDnsName,
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
