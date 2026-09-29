// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;

/// Sensitive field paths for `aws_launch_configuration`.
const Set<String> _awsLaunchConfigurationSensitive = <String>{};

/// At most one of `name`, `name_prefix` on `aws_launch_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.name(...)`.
sealed class LaunchConfigurationName {
  const LaunchConfigurationName();

  /// Sets `name`.
  const factory LaunchConfigurationName.name(TfArg<String> name) =
      LaunchConfigurationNameName;

  /// Sets `name_prefix`.
  const factory LaunchConfigurationName.namePrefix(TfArg<String> namePrefix) =
      LaunchConfigurationNameNamePrefix;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LaunchConfigurationName.name] choice: sets `name`.
final class LaunchConfigurationNameName extends LaunchConfigurationName {
  const LaunchConfigurationNameName(this.name);

  final TfArg<String> name;

  @override
  String get blockKey => 'name';

  @override
  Map<String, Object?> encode() => {'name': name.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name': name};
}

/// The [LaunchConfigurationName.namePrefix] choice: sets `name_prefix`.
final class LaunchConfigurationNameNamePrefix extends LaunchConfigurationName {
  const LaunchConfigurationNameNamePrefix(this.namePrefix);

  final TfArg<String> namePrefix;

  @override
  String get blockKey => 'name_prefix';

  @override
  Map<String, Object?> encode() => {'name_prefix': namePrefix.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'name_prefix': namePrefix};
}

/// At most one of `user_data`, `user_data_base64` on `aws_launch_configuration`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.userData(...)`.
sealed class LaunchConfigurationUserData {
  const LaunchConfigurationUserData();

  /// Sets `user_data`.
  const factory LaunchConfigurationUserData.userData(TfArg<String> userData) =
      LaunchConfigurationUserDataUserData;

  /// Sets `user_data_base64`.
  const factory LaunchConfigurationUserData.userDataBase64(
    TfArg<String> userDataBase64,
  ) = LaunchConfigurationUserDataUserDataBase64;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [LaunchConfigurationUserData.userData] choice: sets `user_data`.
final class LaunchConfigurationUserDataUserData
    extends LaunchConfigurationUserData {
  const LaunchConfigurationUserDataUserData(this.userData);

  final TfArg<String> userData;

  @override
  String get blockKey => 'user_data';

  @override
  Map<String, Object?> encode() => {'user_data': userData.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'user_data': userData};
}

/// The [LaunchConfigurationUserData.userDataBase64] choice: sets `user_data_base64`.
final class LaunchConfigurationUserDataUserDataBase64
    extends LaunchConfigurationUserData {
  const LaunchConfigurationUserDataUserDataBase64(this.userDataBase64);

  final TfArg<String> userDataBase64;

  @override
  String get blockKey => 'user_data_base64';

  @override
  Map<String, Object?> encode() => {
    'user_data_base64': userDataBase64.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'user_data_base64': userDataBase64,
  };
}

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
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'no_device': ?noDevice?.toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
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
    'no_device': ?noDevice?.toTfJson(),
    'virtual_name': ?virtualName?.toTfJson(),
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

  final TfArg<LaunchConfigurationMetadataOptionsHttpEndpoint>? httpEndpoint;

  final TfArg<num>? httpPutResponseHopLimit;

  final TfArg<LaunchConfigurationMetadataOptionsHttpTokens>? httpTokens;

  Map<String, Object?> encode() => {
    'http_endpoint': ?httpEndpoint?.toTfJson(),
    'http_put_response_hop_limit': ?httpPutResponseHopLimit?.toTfJson(),
    'http_tokens': ?httpTokens?.toTfJson(),
  };
}

/// `http_endpoint` — derived from the provider schema description.
enum LaunchConfigurationMetadataOptionsHttpEndpoint implements TerraformEnum {
  enabled('enabled'),
  disabled('disabled');

  const LaunchConfigurationMetadataOptionsHttpEndpoint(this.terraformValue);
  @override
  final String terraformValue;
}

/// `http_tokens` — derived from the provider schema description.
enum LaunchConfigurationMetadataOptionsHttpTokens implements TerraformEnum {
  optional('optional'),
  required('required');

  const LaunchConfigurationMetadataOptionsHttpTokens(this.terraformValue);
  @override
  final String terraformValue;
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
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
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
    LaunchConfigurationName? name,
    TfArg<String>? placementTenancy,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroups,
    TfArg<String>? spotPrice,
    LaunchConfigurationUserData? userData,
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
           'associate_public_ip_address': ?associatePublicIpAddress,
           'ebs_optimized': ?ebsOptimized,
           'enable_monitoring': ?enableMonitoring,
           'iam_instance_profile': ?iamInstanceProfile,
           'image_id': imageId,
           'instance_type': instanceType,
           'key_name': ?keyName,
           ...?name?.argMap,
           'placement_tenancy': ?placementTenancy,
           'region': ?region,
           'security_groups': ?securityGroups?.encodeAs('id'),
           'spot_price': ?spotPrice,
           ...?userData?.argMap,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsLaunchConfiguration>`.
  RefTo<AwsLaunchConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
