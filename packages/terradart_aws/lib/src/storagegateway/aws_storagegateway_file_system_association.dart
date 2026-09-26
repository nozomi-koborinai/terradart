// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_file_system_association`.
const Set<String> _awsStoragegatewayFileSystemAssociationSensitive = <String>{
  'password',
};

/// Typed helper for the `cache_attributes` block of
/// `aws_storagegateway_file_system_association` (derived from provider schema).
@immutable
final class StoragegatewayFileSystemAssociationCacheAttributes {
  const StoragegatewayFileSystemAssociationCacheAttributes({
    this.cacheStaleTimeoutInSeconds,
  });

  final TfArg<num>? cacheStaleTimeoutInSeconds;

  Map<String, Object?> encode() => {
    if (cacheStaleTimeoutInSeconds != null)
      'cache_stale_timeout_in_seconds': cacheStaleTimeoutInSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_storagegateway_file_system_association`.
final class AwsStoragegatewayFileSystemAssociation extends Resource {
  static const String tfType = 'aws_storagegateway_file_system_association';

  AwsStoragegatewayFileSystemAssociation({
    required super.localName,
    TfArg<String>? auditDestinationArn,
    required TfArg<String> gatewayArn,
    required TfArg<String> locationArn,
    required TfArg<String> password,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> username,
    StoragegatewayFileSystemAssociationCacheAttributes? cacheAttributes,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (auditDestinationArn != null)
             'audit_destination_arn': auditDestinationArn,
           'gateway_arn': gatewayArn,
           'location_arn': locationArn,
           'password': password,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'username': username,
           if (cacheAttributes != null)
             'cache_attributes': TfArg.literal(cacheAttributes.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsStoragegatewayFileSystemAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
