// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_launch_configuration`.
const Set<String> _awsLaunchConfigurationSensitive = <String>{};

/// Typed helper for the `ebs_block_device` block of
/// `aws_launch_configuration` (derived from provider schema).
@immutable
final class LaunchConfigurationEbsBlockDevice {
  const LaunchConfigurationEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.noDevice,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<String> deviceName;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<bool>? noDevice;

  final TfArg<String>? snapshotId;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    'device_name': deviceName.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (noDevice != null) 'no_device': noDevice!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `ephemeral_block_device` block of
/// `aws_launch_configuration` (derived from provider schema).
@immutable
final class LaunchConfigurationEphemeralBlockDevice {
  const LaunchConfigurationEphemeralBlockDevice({
    required this.deviceName,
    this.noDevice,
    this.virtualName,
  });

  final TfArg<String> deviceName;

  final TfArg<bool>? noDevice;

  final TfArg<String>? virtualName;

  Map<String, Object?> encode() => {
    'device_name': deviceName.toTfJson(),
    if (noDevice != null) 'no_device': noDevice!.toTfJson(),
    if (virtualName != null) 'virtual_name': virtualName!.toTfJson(),
  };
}

/// Typed helper for the `metadata_options` block of
/// `aws_launch_configuration` (derived from provider schema).
@immutable
final class LaunchConfigurationMetadataOptions {
  const LaunchConfigurationMetadataOptions({
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
  });

  final TfArg<String>? httpEndpoint;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<String>? httpTokens;

  Map<String, Object?> encode() => {
    if (httpEndpoint != null) 'http_endpoint': httpEndpoint!.toTfJson(),
    if (httpPutResponseHopLimit != null)
      'http_put_response_hop_limit': httpPutResponseHopLimit!.toTfJson(),
    if (httpTokens != null) 'http_tokens': httpTokens!.toTfJson(),
  };
}

/// Typed helper for the `root_block_device` block of
/// `aws_launch_configuration` (derived from provider schema).
@immutable
final class LaunchConfigurationRootBlockDevice {
  const LaunchConfigurationRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<num>? throughput;

  final TfArg<num>? volumeSize;

  final TfArg<String>? volumeType;

  Map<String, Object?> encode() => {
    if (deleteOnTermination != null)
      'delete_on_termination': deleteOnTermination!.toTfJson(),
    if (encrypted != null) 'encrypted': encrypted!.toTfJson(),
    if (iops != null) 'iops': iops!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Factory wrapper for `aws_launch_configuration`.
final class AwsLaunchConfiguration extends Resource {
  static const String tfType = 'aws_launch_configuration';

  AwsLaunchConfiguration({
    required super.localName,
    TfArg<bool>? associatePublicIpAddress,
    TfArg<bool>? ebsOptimized,
    TfArg<bool>? enableMonitoring,
    TfArg<String>? iamInstanceProfile,
    required TfArg<String> imageId,
    required TfArg<String> instanceType,
    TfArg<String>? keyName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    TfArg<String>? placementTenancy,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroups,
    TfArg<String>? spotPrice,
    TfArg<String>? userData,
    TfArg<String>? userDataBase64,
    List<LaunchConfigurationEbsBlockDevice>? ebsBlockDevice,
    List<LaunchConfigurationEphemeralBlockDevice>? ephemeralBlockDevice,
    LaunchConfigurationMetadataOptions? metadataOptions,
    LaunchConfigurationRootBlockDevice? rootBlockDevice,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (associatePublicIpAddress != null)
             'associate_public_ip_address': associatePublicIpAddress,
           if (ebsOptimized != null) 'ebs_optimized': ebsOptimized,
           if (enableMonitoring != null) 'enable_monitoring': enableMonitoring,
           if (iamInstanceProfile != null)
             'iam_instance_profile': iamInstanceProfile,
           'image_id': imageId,
           'instance_type': instanceType,
           if (keyName != null) 'key_name': keyName,
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           if (placementTenancy != null) 'placement_tenancy': placementTenancy,
           if (region != null) 'region': region,
           if (securityGroups != null) 'security_groups': securityGroups,
           if (spotPrice != null) 'spot_price': spotPrice,
           if (userData != null) 'user_data': userData,
           if (userDataBase64 != null) 'user_data_base64': userDataBase64,
           if (ebsBlockDevice != null)
             'ebs_block_device': TfArg.literal([
               for (final e in ebsBlockDevice) e.encode(),
             ]),
           if (ephemeralBlockDevice != null)
             'ephemeral_block_device': TfArg.literal([
               for (final e in ephemeralBlockDevice) e.encode(),
             ]),
           if (metadataOptions != null)
             'metadata_options': TfArg.literal(metadataOptions.encode()),
           if (rootBlockDevice != null)
             'root_block_device': TfArg.literal(rootBlockDevice.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsLaunchConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
