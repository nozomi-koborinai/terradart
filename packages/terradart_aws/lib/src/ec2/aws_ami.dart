// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami`.
const Set<String> _awsAmiSensitive = <String>{};

/// Typed helper for the `ebs_block_device` block of
/// `aws_ami` (derived from provider schema).
@immutable
final class AmiEbsBlockDevice {
  const AmiEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.outpostArn,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  final TfArg<bool>? deleteOnTermination;

  final TfArg<String> deviceName;

  final TfArg<bool>? encrypted;

  final TfArg<num>? iops;

  final TfArg<String>? outpostArn;

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
    if (outpostArn != null) 'outpost_arn': outpostArn!.toTfJson(),
    if (snapshotId != null) 'snapshot_id': snapshotId!.toTfJson(),
    if (throughput != null) 'throughput': throughput!.toTfJson(),
    if (volumeSize != null) 'volume_size': volumeSize!.toTfJson(),
    if (volumeType != null) 'volume_type': volumeType!.toTfJson(),
  };
}

/// Typed helper for the `ephemeral_block_device` block of
/// `aws_ami` (derived from provider schema).
@immutable
final class AmiEphemeralBlockDevice {
  const AmiEphemeralBlockDevice({
    required this.deviceName,
    required this.virtualName,
  });

  final TfArg<String> deviceName;

  final TfArg<String> virtualName;

  Map<String, Object?> encode() => {
    'device_name': deviceName.toTfJson(),
    'virtual_name': virtualName.toTfJson(),
  };
}

/// Factory wrapper for `aws_ami`.
final class AwsAmi extends Resource {
  static const String tfType = 'aws_ami';

  AwsAmi({
    required super.localName,
    TfArg<String>? architecture,
    TfArg<String>? bootMode,
    TfArg<String>? deprecationTime,
    TfArg<String>? description,
    TfArg<bool>? enaSupport,
    TfArg<String>? imageLocation,
    TfArg<String>? imdsSupport,
    TfArg<String>? kernelId,
    required TfArg<String> name,
    TfArg<String>? ramdiskId,
    TfArg<String>? region,
    TfArg<String>? rootDeviceName,
    TfArg<String>? sriovNetSupport,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? tpmSupport,
    TfArg<String>? uefiData,
    TfArg<String>? virtualizationType,
    List<AmiEbsBlockDevice>? ebsBlockDevice,
    List<AmiEphemeralBlockDevice>? ephemeralBlockDevice,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (architecture != null) 'architecture': architecture,
           if (bootMode != null) 'boot_mode': bootMode,
           if (deprecationTime != null) 'deprecation_time': deprecationTime,
           if (description != null) 'description': description,
           if (enaSupport != null) 'ena_support': enaSupport,
           if (imageLocation != null) 'image_location': imageLocation,
           if (imdsSupport != null) 'imds_support': imdsSupport,
           if (kernelId != null) 'kernel_id': kernelId,
           'name': name,
           if (ramdiskId != null) 'ramdisk_id': ramdiskId,
           if (region != null) 'region': region,
           if (rootDeviceName != null) 'root_device_name': rootDeviceName,
           if (sriovNetSupport != null) 'sriov_net_support': sriovNetSupport,
           if (tags != null) 'tags': tags,
           if (tpmSupport != null) 'tpm_support': tpmSupport,
           if (uefiData != null) 'uefi_data': uefiData,
           if (virtualizationType != null)
             'virtualization_type': virtualizationType,
           if (ebsBlockDevice != null)
             'ebs_block_device': TfArg.literal([
               for (final e in ebsBlockDevice) e.encode(),
             ]),
           if (ephemeralBlockDevice != null)
             'ephemeral_block_device': TfArg.literal([
               for (final e in ephemeralBlockDevice) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hypervisor` attribute.
  TfRef<String> get hypervisor => TfRef.attribute<String>(this, 'hypervisor');

  /// Reference to `image_owner_alias` attribute.
  TfRef<String> get imageOwnerAlias =>
      TfRef.attribute<String>(this, 'image_owner_alias');

  /// Reference to `image_type` attribute.
  TfRef<String> get imageType => TfRef.attribute<String>(this, 'image_type');

  /// Reference to `last_launched_time` attribute.
  TfRef<String> get lastLaunchedTime =>
      TfRef.attribute<String>(this, 'last_launched_time');

  /// Reference to `manage_ebs_snapshots` attribute.
  TfRef<bool> get manageEbsSnapshots =>
      TfRef.attribute<bool>(this, 'manage_ebs_snapshots');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `platform_details` attribute.
  TfRef<String> get platformDetails =>
      TfRef.attribute<String>(this, 'platform_details');

  /// Reference to `public` attribute.
  TfRef<bool> get public => TfRef.attribute<bool>(this, 'public');

  /// Reference to `root_snapshot_id` attribute.
  TfRef<String> get rootSnapshotId =>
      TfRef.attribute<String>(this, 'root_snapshot_id');

  /// Reference to `usage_operation` attribute.
  TfRef<String> get usageOperation =>
      TfRef.attribute<String>(this, 'usage_operation');
}
