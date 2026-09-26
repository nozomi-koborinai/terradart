// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_smb_file_share`.
const Set<String> _awsStoragegatewaySmbFileShareSensitive = <String>{};

/// Typed helper for the `cache_attributes` block of
/// `aws_storagegateway_smb_file_share` (derived from provider schema).
@immutable
final class StoragegatewaySmbFileShareCacheAttributes {
  const StoragegatewaySmbFileShareCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  final TfArg<num>? cacheStaleTimeoutInSeconds;

  Map<String, Object?> encode() => {
    if (cacheStaleTimeoutInSeconds != null)
      'cache_stale_timeout_in_seconds': cacheStaleTimeoutInSeconds!.toTfJson(),
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
    TfArg<String>? authentication,
    TfArg<String>? bucketRegion,
    TfArg<String>? caseSensitivity,
    TfArg<String>? defaultStorageClass,
    TfArg<String>? fileShareName,
    required TfArg<String> gatewayArn,
    TfArg<bool>? guessMimeTypeEnabled,
    TfArg<List<String>>? invalidUserList,
    TfArg<bool>? kmsEncrypted,
    TfArg<String>? kmsKeyArn,
    required TfArg<String> locationArn,
    TfArg<String>? notificationPolicy,
    TfArg<String>? objectAcl,
    TfArg<bool>? oplocksEnabled,
    TfArg<bool>? readOnly,
    TfArg<String>? region,
    TfArg<bool>? requesterPays,
    required TfArg<String> roleArn,
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
           if (accessBasedEnumeration != null)
             'access_based_enumeration': accessBasedEnumeration,
           if (adminUserList != null) 'admin_user_list': adminUserList,
           if (auditDestinationArn != null)
             'audit_destination_arn': auditDestinationArn,
           if (authentication != null) 'authentication': authentication,
           if (bucketRegion != null) 'bucket_region': bucketRegion,
           if (caseSensitivity != null) 'case_sensitivity': caseSensitivity,
           if (defaultStorageClass != null)
             'default_storage_class': defaultStorageClass,
           if (fileShareName != null) 'file_share_name': fileShareName,
           'gateway_arn': gatewayArn,
           if (guessMimeTypeEnabled != null)
             'guess_mime_type_enabled': guessMimeTypeEnabled,
           if (invalidUserList != null) 'invalid_user_list': invalidUserList,
           if (kmsEncrypted != null) 'kms_encrypted': kmsEncrypted,
           if (kmsKeyArn != null) 'kms_key_arn': kmsKeyArn,
           'location_arn': locationArn,
           if (notificationPolicy != null)
             'notification_policy': notificationPolicy,
           if (objectAcl != null) 'object_acl': objectAcl,
           if (oplocksEnabled != null) 'oplocks_enabled': oplocksEnabled,
           if (readOnly != null) 'read_only': readOnly,
           if (region != null) 'region': region,
           if (requesterPays != null) 'requester_pays': requesterPays,
           'role_arn': roleArn,
           if (smbAclEnabled != null) 'smb_acl_enabled': smbAclEnabled,
           if (tags != null) 'tags': tags,
           if (validUserList != null) 'valid_user_list': validUserList,
           if (vpcEndpointDnsName != null)
             'vpc_endpoint_dns_name': vpcEndpointDnsName,
           if (cacheAttributes != null)
             'cache_attributes': TfArg.literal(cacheAttributes.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewaySmbFileShareSensitive;

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
