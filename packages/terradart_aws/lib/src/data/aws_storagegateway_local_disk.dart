// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_local_disk`.
const Set<String> _awsStoragegatewayLocalDiskSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_local_disk`.
final class DataAwsStoragegatewayLocalDisk extends Data {
  static const String tfType = 'aws_storagegateway_local_disk';

  DataAwsStoragegatewayLocalDisk(
    super.localName, {
    TfArg<String>? diskNode,
    TfArg<String>? diskPath,
    required TfArg<String> gatewayArn,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'disk_node': ?diskNode,
           'disk_path': ?diskPath,
           'gateway_arn': gatewayArn,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayLocalDiskSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disk_id` attribute.
  TfRef<String> get diskId => TfRef.attribute<String>(this, 'disk_id');

  /// Reference to `disk_node` attribute.
  TfRef<String> get diskNode => TfRef.attribute<String>(this, 'disk_node');

  /// Reference to `disk_path` attribute.
  TfRef<String> get diskPath => TfRef.attribute<String>(this, 'disk_path');

  /// Reference to `gateway_arn` attribute.
  TfRef<String> get gatewayArn => TfRef.attribute<String>(this, 'gateway_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
