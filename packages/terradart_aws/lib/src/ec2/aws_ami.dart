// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami`.
const Set<String> _awsAmiSensitive = <String>{};

/// Ami enum for `architecture`.
extension type const AmiArchitecture._(TfArg<String> _)
    implements TfArg<String> {
  AmiArchitecture.variable(String name) : this._(TfArg.variable(name));
  AmiArchitecture.expression(String template)
    : this._(TfArg.expression(template));
  const AmiArchitecture.arg(TfArg<String> arg) : this._(arg);

  static const i386 = AmiArchitecture._(TfArgLiteral('i386'));
  static const x8664 = AmiArchitecture._(TfArgLiteral('x86_64'));
  static const arm64 = AmiArchitecture._(TfArgLiteral('arm64'));
  static const x8664Mac = AmiArchitecture._(TfArgLiteral('x86_64_mac'));
  static const arm64Mac = AmiArchitecture._(TfArgLiteral('arm64_mac'));

  static const List<AmiArchitecture> values = [
    i386,
    x8664,
    arm64,
    x8664Mac,
    arm64Mac,
  ];
}

/// Ami Boot enum for `boot_mode`.
extension type const AmiBootMode._(TfArg<String> _) implements TfArg<String> {
  AmiBootMode.variable(String name) : this._(TfArg.variable(name));
  AmiBootMode.expression(String template) : this._(TfArg.expression(template));
  const AmiBootMode.arg(TfArg<String> arg) : this._(arg);

  static const legacyBios = AmiBootMode._(TfArgLiteral('legacy-bios'));
  static const uefi = AmiBootMode._(TfArgLiteral('uefi'));
  static const uefiPreferred = AmiBootMode._(TfArgLiteral('uefi-preferred'));

  static const List<AmiBootMode> values = [legacyBios, uefi, uefiPreferred];
}

/// Ami Imds enum for `imds_support`.
extension type const AmiImdsSupport._(TfArg<String> _)
    implements TfArg<String> {
  AmiImdsSupport.variable(String name) : this._(TfArg.variable(name));
  AmiImdsSupport.expression(String template)
    : this._(TfArg.expression(template));
  const AmiImdsSupport.arg(TfArg<String> arg) : this._(arg);

  static const v2p0 = AmiImdsSupport._(TfArgLiteral('v2.0'));

  static const List<AmiImdsSupport> values = [v2p0];
}

/// Ami Tpm enum for `tpm_support`.
extension type const AmiTpmSupport._(TfArg<String> _) implements TfArg<String> {
  AmiTpmSupport.variable(String name) : this._(TfArg.variable(name));
  AmiTpmSupport.expression(String template)
    : this._(TfArg.expression(template));
  const AmiTpmSupport.arg(TfArg<String> arg) : this._(arg);

  static const v2p0 = AmiTpmSupport._(TfArgLiteral('v2.0'));

  static const List<AmiTpmSupport> values = [v2p0];
}

/// Ami Virtualization enum for `virtualization_type`.
extension type const AmiVirtualizationType._(TfArg<String> _)
    implements TfArg<String> {
  AmiVirtualizationType.variable(String name) : this._(TfArg.variable(name));
  AmiVirtualizationType.expression(String template)
    : this._(TfArg.expression(template));
  const AmiVirtualizationType.arg(TfArg<String> arg) : this._(arg);

  static const hvm = AmiVirtualizationType._(TfArgLiteral('hvm'));
  static const paravirtual = AmiVirtualizationType._(
    TfArgLiteral('paravirtual'),
  );

  static const List<AmiVirtualizationType> values = [hvm, paravirtual];
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

  final AmiVolumeType? volumeType;

  Map<String, Object?> encode() => {
    'delete_on_termination': ?deleteOnTermination?.toTfJson(),
    'device_name': deviceName.toTfJson(),
    'encrypted': ?encrypted?.toTfJson(),
    'iops': ?iops?.toTfJson(),
    'outpost_arn': ?outpostArn?.toTfJson(),
    'snapshot_id': ?snapshotId?.toTfJson(),
    'throughput': ?throughput?.toTfJson(),
    'volume_size': ?volumeSize?.toTfJson(),
    'volume_type': ?volumeType?.toTfJson(),
  };
}

/// `volume_type` — derived from the provider schema description.
extension type const AmiVolumeType._(TfArg<String> _) implements TfArg<String> {
  AmiVolumeType.variable(String name) : this._(TfArg.variable(name));
  AmiVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const AmiVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const standard = AmiVolumeType._(TfArgLiteral('standard'));
  static const io1 = AmiVolumeType._(TfArgLiteral('io1'));
  static const io2 = AmiVolumeType._(TfArgLiteral('io2'));
  static const gp2 = AmiVolumeType._(TfArgLiteral('gp2'));
  static const sc1 = AmiVolumeType._(TfArgLiteral('sc1'));
  static const st1 = AmiVolumeType._(TfArgLiteral('st1'));
  static const gp3 = AmiVolumeType._(TfArgLiteral('gp3'));

  static const List<AmiVolumeType> values = [
    standard,
    io1,
    io2,
    gp2,
    sc1,
    st1,
    gp3,
  ];
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

  AwsAmi(
    super.localName, {
    AmiArchitecture? architecture,
    AmiBootMode? bootMode,
    TfArg<String>? deprecationTime,
    TfArg<String>? description,
    TfArg<bool>? enaSupport,
    TfArg<String>? imageLocation,
    AmiImdsSupport? imdsSupport,
    TfArg<String>? kernelId,
    required TfArg<String> name,
    TfArg<String>? ramdiskId,
    TfArg<String>? region,
    TfArg<String>? rootDeviceName,
    TfArg<String>? sriovNetSupport,
    TfArg<Map<String, String>>? tags,
    AmiTpmSupport? tpmSupport,
    TfArg<String>? uefiData,
    AmiVirtualizationType? virtualizationType,
    List<AmiEbsBlockDevice>? ebsBlockDevice,
    List<AmiEphemeralBlockDevice>? ephemeralBlockDevice,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'architecture': ?architecture,
           'boot_mode': ?bootMode,
           'deprecation_time': ?deprecationTime,
           'description': ?description,
           'ena_support': ?enaSupport,
           'image_location': ?imageLocation,
           'imds_support': ?imdsSupport,
           'kernel_id': ?kernelId,
           'name': name,
           'ramdisk_id': ?ramdiskId,
           'region': ?region,
           'root_device_name': ?rootDeviceName,
           'sriov_net_support': ?sriovNetSupport,
           'tags': ?tags,
           'tpm_support': ?tpmSupport,
           'uefi_data': ?uefiData,
           'virtualization_type': ?virtualizationType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `architecture` attribute.
  TfRef<String> get architecture =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `boot_mode` attribute.
  TfRef<String> get bootMode => TfRef.attribute<String>(this, 'boot_mode');

  /// Reference to `deprecation_time` attribute.
  TfRef<String> get deprecationTime =>
      TfRef.attribute<String>(this, 'deprecation_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ena_support` attribute.
  TfRef<bool> get enaSupport => TfRef.attribute<bool>(this, 'ena_support');

  /// Reference to `image_location` attribute.
  TfRef<String> get imageLocation =>
      TfRef.attribute<String>(this, 'image_location');

  /// Reference to `imds_support` attribute.
  TfRef<String> get imdsSupport =>
      TfRef.attribute<String>(this, 'imds_support');

  /// Reference to `kernel_id` attribute.
  TfRef<String> get kernelId => TfRef.attribute<String>(this, 'kernel_id');

  /// Reference to `ramdisk_id` attribute.
  TfRef<String> get ramdiskId => TfRef.attribute<String>(this, 'ramdisk_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `root_device_name` attribute.
  TfRef<String> get rootDeviceName =>
      TfRef.attribute<String>(this, 'root_device_name');

  /// Reference to `sriov_net_support` attribute.
  TfRef<String> get sriovNetSupport =>
      TfRef.attribute<String>(this, 'sriov_net_support');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `tpm_support` attribute.
  TfRef<String> get tpmSupport => TfRef.attribute<String>(this, 'tpm_support');

  /// Reference to `uefi_data` attribute.
  TfRef<String> get uefiData => TfRef.attribute<String>(this, 'uefi_data');

  /// Reference to `virtualization_type` attribute.
  TfRef<String> get virtualizationType =>
      TfRef.attribute<String>(this, 'virtualization_type');
}
