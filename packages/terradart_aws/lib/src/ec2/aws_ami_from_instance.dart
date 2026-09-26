// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami_from_instance`.
const Set<String> _awsAmiFromInstanceSensitive = <String>{};

/// Typed helper for the `ebs_block_device` block of
/// `aws_ami_from_instance` (derived from provider schema).
@immutable
final class AmiFromInstanceEbsBlockDevice {
  const AmiFromInstanceEbsBlockDevice();

  Map<String, Object?> encode() => {};
}

/// Typed helper for the `ephemeral_block_device` block of
/// `aws_ami_from_instance` (derived from provider schema).
@immutable
final class AmiFromInstanceEphemeralBlockDevice {
  const AmiFromInstanceEphemeralBlockDevice();

  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `aws_ami_from_instance`.
final class AwsAmiFromInstance extends Resource {
  static const String tfType = 'aws_ami_from_instance';

  AwsAmiFromInstance({
    required super.localName,
    TfArg<String>? deprecationTime,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<bool>? snapshotWithoutReboot,
    required TfArg<String> sourceInstanceId,
    TfArg<Map<String, String>>? tags,
    List<AmiFromInstanceEbsBlockDevice>? ebsBlockDevice,
    List<AmiFromInstanceEphemeralBlockDevice>? ephemeralBlockDevice,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (deprecationTime != null) 'deprecation_time': deprecationTime,
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (snapshotWithoutReboot != null)
             'snapshot_without_reboot': snapshotWithoutReboot,
           'source_instance_id': sourceInstanceId,
           if (tags != null) 'tags': tags,
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
  Set<String> get sensitiveFields => _awsAmiFromInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `architecture` attribute.
  TfRef<String> get architecture =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `boot_mode` attribute.
  TfRef<String> get bootMode => TfRef.attribute<String>(this, 'boot_mode');

  /// Reference to `ena_support` attribute.
  TfRef<bool> get enaSupport => TfRef.attribute<bool>(this, 'ena_support');

  /// Reference to `hypervisor` attribute.
  TfRef<String> get hypervisor => TfRef.attribute<String>(this, 'hypervisor');

  /// Reference to `image_location` attribute.
  TfRef<String> get imageLocation =>
      TfRef.attribute<String>(this, 'image_location');

  /// Reference to `image_owner_alias` attribute.
  TfRef<String> get imageOwnerAlias =>
      TfRef.attribute<String>(this, 'image_owner_alias');

  /// Reference to `image_type` attribute.
  TfRef<String> get imageType => TfRef.attribute<String>(this, 'image_type');

  /// Reference to `imds_support` attribute.
  TfRef<String> get imdsSupport =>
      TfRef.attribute<String>(this, 'imds_support');

  /// Reference to `kernel_id` attribute.
  TfRef<String> get kernelId => TfRef.attribute<String>(this, 'kernel_id');

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

  /// Reference to `ramdisk_id` attribute.
  TfRef<String> get ramdiskId => TfRef.attribute<String>(this, 'ramdisk_id');

  /// Reference to `root_device_name` attribute.
  TfRef<String> get rootDeviceName =>
      TfRef.attribute<String>(this, 'root_device_name');

  /// Reference to `root_snapshot_id` attribute.
  TfRef<String> get rootSnapshotId =>
      TfRef.attribute<String>(this, 'root_snapshot_id');

  /// Reference to `sriov_net_support` attribute.
  TfRef<String> get sriovNetSupport =>
      TfRef.attribute<String>(this, 'sriov_net_support');

  /// Reference to `tpm_support` attribute.
  TfRef<String> get tpmSupport => TfRef.attribute<String>(this, 'tpm_support');

  /// Reference to `uefi_data` attribute.
  TfRef<String> get uefiData => TfRef.attribute<String>(this, 'uefi_data');

  /// Reference to `usage_operation` attribute.
  TfRef<String> get usageOperation =>
      TfRef.attribute<String>(this, 'usage_operation');

  /// Reference to `virtualization_type` attribute.
  TfRef<String> get virtualizationType =>
      TfRef.attribute<String>(this, 'virtualization_type');
}
