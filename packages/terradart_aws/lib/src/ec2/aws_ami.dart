// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami`.
const Set<String> _awsAmiSensitive = <String>{};

/// Ami enum for `architecture`.
enum AmiArchitecture implements TerraformEnum {
  i386('i386'),
  x8664('x86_64'),
  arm64('arm64'),
  x8664Mac('x86_64_mac'),
  arm64Mac('arm64_mac');

  const AmiArchitecture(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ami Boot enum for `boot_mode`.
enum AmiBootMode implements TerraformEnum {
  legacyBios('legacy-bios'),
  uefi('uefi'),
  uefiPreferred('uefi-preferred');

  const AmiBootMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ami Imds enum for `imds_support`.
enum AmiImdsSupport implements TerraformEnum {
  v2p0('v2.0');

  const AmiImdsSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ami Tpm enum for `tpm_support`.
enum AmiTpmSupport implements TerraformEnum {
  v2p0('v2.0');

  const AmiTpmSupport(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ami Virtualization enum for `virtualization_type`.
enum AmiVirtualizationType implements TerraformEnum {
  hvm('hvm'),
  paravirtual('paravirtual');

  const AmiVirtualizationType(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final TfArg<AmiEbsBlockDeviceVolumeType>? volumeType;

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

/// `volume_type` — derived from the provider schema description.
enum AmiEbsBlockDeviceVolumeType implements TerraformEnum {
  standard('standard'),
  io1('io1'),
  io2('io2'),
  gp2('gp2'),
  sc1('sc1'),
  st1('st1'),
  gp3('gp3');

  const AmiEbsBlockDeviceVolumeType(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<AmiArchitecture>? architecture,
    TfArg<AmiBootMode>? bootMode,
    TfArg<String>? deprecationTime,
    TfArg<String>? description,
    TfArg<bool>? enaSupport,
    TfArg<String>? imageLocation,
    TfArg<AmiImdsSupport>? imdsSupport,
    TfArg<String>? kernelId,
    required TfArg<String> name,
    TfArg<String>? ramdiskId,
    TfArg<String>? region,
    TfArg<String>? rootDeviceName,
    TfArg<String>? sriovNetSupport,
    TfArg<Map<String, String>>? tags,
    TfArg<AmiTpmSupport>? tpmSupport,
    TfArg<String>? uefiData,
    TfArg<AmiVirtualizationType>? virtualizationType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsAmi>`.
  RefTo<AwsAmi> get ref => RefTo.of(this);

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
