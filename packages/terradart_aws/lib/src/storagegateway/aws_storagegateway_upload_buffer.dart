// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_upload_buffer`.
const Set<String> _awsStoragegatewayUploadBufferSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_upload_buffer`.
final class AwsStoragegatewayUploadBuffer extends Resource {
  static const String tfType = 'aws_storagegateway_upload_buffer';

  AwsStoragegatewayUploadBuffer({
    required super.localName,
    TfArg<String>? diskId,
    TfArg<String>? diskPath,
    required TfArg<String> gatewayArn,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (diskId != null) 'disk_id': diskId,
           if (diskPath != null) 'disk_path': diskPath,
           'gateway_arn': gatewayArn,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayUploadBufferSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
