// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_launch_configuration`.
const Set<String> _awsLaunchConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_launch_configuration`.
final class DataAwsLaunchConfiguration extends Data {
  static const String tfType = 'aws_launch_configuration';

  DataAwsLaunchConfiguration({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, if (region != null) 'region': region},
       );

  @override
  Set<String> get sensitiveFields => _awsLaunchConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `associate_public_ip_address` attribute.
  TfRef<bool> get associatePublicIpAddress =>
      TfRef.attribute<bool>(this, 'associate_public_ip_address');

  /// Reference to `ebs_block_device` attribute.
  TfRef<List<Map<String, Object?>>> get ebsBlockDevice =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ebs_block_device');

  /// Reference to `ebs_optimized` attribute.
  TfRef<bool> get ebsOptimized => TfRef.attribute<bool>(this, 'ebs_optimized');

  /// Reference to `enable_monitoring` attribute.
  TfRef<bool> get enableMonitoring =>
      TfRef.attribute<bool>(this, 'enable_monitoring');

  /// Reference to `ephemeral_block_device` attribute.
  TfRef<List<Map<String, Object?>>> get ephemeralBlockDevice =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'ephemeral_block_device',
      );

  /// Reference to `iam_instance_profile` attribute.
  TfRef<String> get iamInstanceProfile =>
      TfRef.attribute<String>(this, 'iam_instance_profile');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

  /// Reference to `instance_type` attribute.
  TfRef<String> get instanceType =>
      TfRef.attribute<String>(this, 'instance_type');

  /// Reference to `key_name` attribute.
  TfRef<String> get keyName => TfRef.attribute<String>(this, 'key_name');

  /// Reference to `metadata_options` attribute.
  TfRef<List<Map<String, Object?>>> get metadataOptions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'metadata_options');

  /// Reference to `placement_tenancy` attribute.
  TfRef<String> get placementTenancy =>
      TfRef.attribute<String>(this, 'placement_tenancy');

  /// Reference to `root_block_device` attribute.
  TfRef<List<Map<String, Object?>>> get rootBlockDevice =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'root_block_device');

  /// Reference to `security_groups` attribute.
  TfRef<List<String>> get securityGroups =>
      TfRef.attribute<List<String>>(this, 'security_groups');

  /// Reference to `spot_price` attribute.
  TfRef<String> get spotPrice => TfRef.attribute<String>(this, 'spot_price');

  /// Reference to `user_data` attribute.
  TfRef<String> get userData => TfRef.attribute<String>(this, 'user_data');
}
