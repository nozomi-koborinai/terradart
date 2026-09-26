// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_sagemaker_device_fleet`.
const Set<String> _awsSagemakerDeviceFleetSensitive = <String>{};

/// Typed helper for the `output_config` block of
/// `aws_sagemaker_device_fleet` (derived from provider schema).
@immutable
final class SagemakerDeviceFleetOutputConfig {
  const SagemakerDeviceFleetOutputConfig({
    this.kmsKeyId,
    required this.s3OutputLocation,
  });

  final TfArg<String>? kmsKeyId;

  final TfArg<String> s3OutputLocation;

  Map<String, Object?> encode() => {
    if (kmsKeyId != null) 'kms_key_id': kmsKeyId!.toTfJson(),
    's3_output_location': s3OutputLocation.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_device_fleet`.
final class AwsSagemakerDeviceFleet extends Resource {
  static const String tfType = 'aws_sagemaker_device_fleet';

  AwsSagemakerDeviceFleet({
    required super.localName,
    TfArg<String>? description,
    required TfArg<String> deviceFleetName,
    TfArg<bool>? enableIotRoleAlias,
    TfArg<String>? region,
    required TfArg<String> roleArn,
    TfArg<Map<String, String>>? tags,
    required SagemakerDeviceFleetOutputConfig outputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (description != null) 'description': description,
           'device_fleet_name': deviceFleetName,
           if (enableIotRoleAlias != null)
             'enable_iot_role_alias': enableIotRoleAlias,
           if (region != null) 'region': region,
           'role_arn': roleArn,
           if (tags != null) 'tags': tags,
           'output_config': TfArg.literal(outputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerDeviceFleetSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `iot_role_alias` attribute.
  TfRef<String> get iotRoleAlias =>
      TfRef.attribute<String>(this, 'iot_role_alias');
}
