// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ami`.
const Set<String> _awsAmiSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_ami` (derived from provider schema).
@immutable
final class DataAmiFilter {
  const DataAmiFilter({required this.name, required this.values});

  final TfArg<String> name;

  final TfArg<List<Object?>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_ami`.
final class DataAwsAmi extends Data {
  static const String tfType = 'aws_ami';

  DataAwsAmi({
    required super.localName,
    TfArg<bool>? allowUnsafeFilter,
    TfArg<List<String>>? executableUsers,
    TfArg<bool>? includeDeprecated,
    TfArg<bool>? mostRecent,
    TfArg<String>? nameRegex,
    TfArg<List<String>>? owners,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? uefiData,
    List<DataAmiFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (allowUnsafeFilter != null)
             'allow_unsafe_filter': allowUnsafeFilter,
           if (executableUsers != null) 'executable_users': executableUsers,
           if (includeDeprecated != null)
             'include_deprecated': includeDeprecated,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (nameRegex != null) 'name_regex': nameRegex,
           if (owners != null) 'owners': owners,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (uefiData != null) 'uefi_data': uefiData,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAmiSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `architecture` attribute.
  TfRef<String> get architecture =>
      TfRef.attribute<String>(this, 'architecture');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `block_device_mappings` attribute.
  TfRef<List<Map<String, Object?>>> get blockDeviceMappings =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'block_device_mappings',
      );

  /// Reference to `boot_mode` attribute.
  TfRef<String> get bootMode => TfRef.attribute<String>(this, 'boot_mode');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `deprecation_time` attribute.
  TfRef<String> get deprecationTime =>
      TfRef.attribute<String>(this, 'deprecation_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `ena_support` attribute.
  TfRef<bool> get enaSupport => TfRef.attribute<bool>(this, 'ena_support');

  /// Reference to `hypervisor` attribute.
  TfRef<String> get hypervisor => TfRef.attribute<String>(this, 'hypervisor');

  /// Reference to `image_id` attribute.
  TfRef<String> get imageId => TfRef.attribute<String>(this, 'image_id');

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

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `platform` attribute.
  TfRef<String> get platform => TfRef.attribute<String>(this, 'platform');

  /// Reference to `platform_details` attribute.
  TfRef<String> get platformDetails =>
      TfRef.attribute<String>(this, 'platform_details');

  /// Reference to `product_codes` attribute.
  TfRef<List<Map<String, Object?>>> get productCodes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'product_codes');

  /// Reference to `public` attribute.
  TfRef<bool> get public => TfRef.attribute<bool>(this, 'public');

  /// Reference to `ramdisk_id` attribute.
  TfRef<String> get ramdiskId => TfRef.attribute<String>(this, 'ramdisk_id');

  /// Reference to `root_device_name` attribute.
  TfRef<String> get rootDeviceName =>
      TfRef.attribute<String>(this, 'root_device_name');

  /// Reference to `root_device_type` attribute.
  TfRef<String> get rootDeviceType =>
      TfRef.attribute<String>(this, 'root_device_type');

  /// Reference to `root_snapshot_id` attribute.
  TfRef<String> get rootSnapshotId =>
      TfRef.attribute<String>(this, 'root_snapshot_id');

  /// Reference to `sriov_net_support` attribute.
  TfRef<String> get sriovNetSupport =>
      TfRef.attribute<String>(this, 'sriov_net_support');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `state_reason` attribute.
  TfRef<Map<String, String>> get stateReason =>
      TfRef.attribute<Map<String, String>>(this, 'state_reason');

  /// Reference to `tpm_support` attribute.
  TfRef<String> get tpmSupport => TfRef.attribute<String>(this, 'tpm_support');

  /// Reference to `usage_operation` attribute.
  TfRef<String> get usageOperation =>
      TfRef.attribute<String>(this, 'usage_operation');

  /// Reference to `virtualization_type` attribute.
  TfRef<String> get virtualizationType =>
      TfRef.attribute<String>(this, 'virtualization_type');
}
