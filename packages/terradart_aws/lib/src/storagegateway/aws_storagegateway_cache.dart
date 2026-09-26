// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_cache`.
const Set<String> _awsStoragegatewayCacheSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_cache`.
final class AwsStoragegatewayCache extends Resource {
  static const String tfType = 'aws_storagegateway_cache';

  AwsStoragegatewayCache({
    required super.localName,
    required TfArg<String> diskId,
    required TfArg<String> gatewayArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk_id': diskId,
           'gateway_arn': gatewayArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayCacheSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
