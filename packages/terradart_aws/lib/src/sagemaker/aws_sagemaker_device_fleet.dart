// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/aws_iam_role.dart' show AwsIamRole;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

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

  final RefTo<AwsKmsKey>? kmsKeyId;

  final TfArg<String> s3OutputLocation;

  Map<String, Object?> encode() => {
    'kms_key_id': ?kmsKeyId?.encodeAs('arn').toTfJson(),
    's3_output_location': s3OutputLocation.toTfJson(),
  };
}

/// Factory wrapper for `aws_sagemaker_device_fleet`.
final class AwsSagemakerDeviceFleet extends Resource {
  static const String tfType = 'aws_sagemaker_device_fleet';

  AwsSagemakerDeviceFleet(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> deviceFleetName,
    TfArg<bool>? enableIotRoleAlias,
    TfArg<String>? region,
    required RefTo<AwsIamRole> roleArn,
    TfArg<Map<String, String>>? tags,
    required SagemakerDeviceFleetOutputConfig outputConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'device_fleet_name': deviceFleetName,
           'enable_iot_role_alias': ?enableIotRoleAlias,
           'region': ?region,
           'role_arn': roleArn.encodeAs('arn'),
           'tags': ?tags,
           'output_config': TfArg.literal(outputConfig.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSagemakerDeviceFleetSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSagemakerDeviceFleet>`.
  RefTo<AwsSagemakerDeviceFleet> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `iot_role_alias` attribute.
  TfRef<String> get iotRoleAlias =>
      TfRef.attribute<String>(this, 'iot_role_alias');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `device_fleet_name` attribute.
  TfRef<String> get deviceFleetName =>
      TfRef.attribute<String>(this, 'device_fleet_name');

  /// Reference to `enable_iot_role_alias` attribute.
  TfRef<bool> get enableIotRoleAlias =>
      TfRef.attribute<bool>(this, 'enable_iot_role_alias');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `role_arn` attribute.
  TfRef<String> get roleArn => TfRef.attribute<String>(this, 'role_arn');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
