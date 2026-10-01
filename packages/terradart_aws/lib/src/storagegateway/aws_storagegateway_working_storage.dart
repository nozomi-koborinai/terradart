// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_storagegateway_working_storage`.
const Set<String> _awsStoragegatewayWorkingStorageSensitive = <String>{};

/// Factory wrapper for `aws_storagegateway_working_storage`.
final class AwsStoragegatewayWorkingStorage extends Resource {
  static const String tfType = 'aws_storagegateway_working_storage';

  AwsStoragegatewayWorkingStorage({
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsStoragegatewayWorkingStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsStoragegatewayWorkingStorage>`.
  RefTo<AwsStoragegatewayWorkingStorage> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `disk_id` attribute.
  TfRef<String> get diskId => TfRef.attribute<String>(this, 'disk_id');

  /// Reference to `gateway_arn` attribute.
  TfRef<String> get gatewayArn => TfRef.attribute<String>(this, 'gateway_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
