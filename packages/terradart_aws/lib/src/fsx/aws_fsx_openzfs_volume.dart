// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_openzfs_volume`.
const Set<String> _awsFsxOpenzfsVolumeSensitive = <String>{};

/// Fsx Openzfs Volume Data Compression enum for `data_compression_type`.
enum FsxOpenzfsVolumeDataCompressionType implements TerraformEnum {
  none('NONE'),
  zstd('ZSTD'),
  lz4('LZ4');

  const FsxOpenzfsVolumeDataCompressionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Openzfs Volume Delete Volume enum for `delete_volume_options`.
enum FsxOpenzfsVolumeDeleteVolumeOptions implements TerraformEnum {
  deleteChildVolumesAndSnapshots('DELETE_CHILD_VOLUMES_AND_SNAPSHOTS');

  const FsxOpenzfsVolumeDeleteVolumeOptions(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Openzfs Volume Volume enum for `volume_type`.
enum FsxOpenzfsVolumeVolumeType implements TerraformEnum {
  ontap('ONTAP'),
  openzfs('OPENZFS');

  const FsxOpenzfsVolumeVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `nfs_exports` block of
/// `aws_fsx_openzfs_volume` (derived from provider schema).
@immutable
final class FsxOpenzfsVolumeNfsExports {
  const FsxOpenzfsVolumeNfsExports({required this.clientConfigurations});

  final List<FsxOpenzfsVolumeClientConfigurations> clientConfigurations;

  Map<String, Object?> encode() => {
    'client_configurations': [for (final e in clientConfigurations) e.encode()],
  };
}

/// Typed helper for the `nfs_exports.client_configurations` block of
/// `aws_fsx_openzfs_volume` (derived from provider schema).
@immutable
final class FsxOpenzfsVolumeClientConfigurations {
  const FsxOpenzfsVolumeClientConfigurations({
    required this.clients,
    required this.options,
  });

  final TfArg<String> clients;

  final TfArg<List<String>> options;

  Map<String, Object?> encode() => {
    'clients': clients.toTfJson(),
    'options': options.toTfJson(),
  };
}

/// Typed helper for the `origin_snapshot` block of
/// `aws_fsx_openzfs_volume` (derived from provider schema).
@immutable
final class FsxOpenzfsVolumeOriginSnapshot {
  const FsxOpenzfsVolumeOriginSnapshot({
    required this.copyStrategy,
    required this.snapshotArn,
  });

  final TfArg<FsxOpenzfsVolumeCopyStrategy> copyStrategy;

  final TfArg<String> snapshotArn;

  Map<String, Object?> encode() => {
    'copy_strategy': copyStrategy.toTfJson(),
    'snapshot_arn': snapshotArn.toTfJson(),
  };
}

/// `copy_strategy` — derived from the provider schema description.
enum FsxOpenzfsVolumeCopyStrategy implements TerraformEnum {
  clone('CLONE'),
  fullCopy('FULL_COPY'),
  incrementalCopy('INCREMENTAL_COPY');

  const FsxOpenzfsVolumeCopyStrategy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `user_and_group_quotas` block of
/// `aws_fsx_openzfs_volume` (derived from provider schema).
@immutable
final class FsxOpenzfsVolumeUserAndGroupQuotas {
  const FsxOpenzfsVolumeUserAndGroupQuotas({
    required this.id,
    required this.storageCapacityQuotaGib,
    required this.type,
  });

  final TfArg<num> id;

  final TfArg<num> storageCapacityQuotaGib;

  final TfArg<FsxOpenzfsVolumeType> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'storage_capacity_quota_gib': storageCapacityQuotaGib.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum FsxOpenzfsVolumeType implements TerraformEnum {
  user('USER'),
  group('GROUP');

  const FsxOpenzfsVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_fsx_openzfs_volume`.
final class AwsFsxOpenzfsVolume extends Resource {
  static const String tfType = 'aws_fsx_openzfs_volume';

  AwsFsxOpenzfsVolume({
    required super.localName,
    TfArg<bool>? copyTagsToSnapshots,
    TfArg<FsxOpenzfsVolumeDataCompressionType>? dataCompressionType,
    List<TfArg<FsxOpenzfsVolumeDeleteVolumeOptions>>? deleteVolumeOptions,
    required TfArg<String> name,
    required TfArg<String> parentVolumeId,
    TfArg<bool>? readOnly,
    TfArg<num>? recordSizeKib,
    TfArg<String>? region,
    TfArg<num>? storageCapacityQuotaGib,
    TfArg<num>? storageCapacityReservationGib,
    TfArg<Map<String, String>>? tags,
    TfArg<FsxOpenzfsVolumeVolumeType>? volumeType,
    FsxOpenzfsVolumeNfsExports? nfsExports,
    FsxOpenzfsVolumeOriginSnapshot? originSnapshot,
    List<FsxOpenzfsVolumeUserAndGroupQuotas>? userAndGroupQuotas,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'copy_tags_to_snapshots': ?copyTagsToSnapshots,
           'data_compression_type': ?dataCompressionType,
           if (deleteVolumeOptions != null)
             'delete_volume_options': TfArg.literal([
               for (final e in deleteVolumeOptions) e.toTfJson(),
             ]),
           'name': name,
           'parent_volume_id': parentVolumeId,
           'read_only': ?readOnly,
           'record_size_kib': ?recordSizeKib,
           'region': ?region,
           'storage_capacity_quota_gib': ?storageCapacityQuotaGib,
           'storage_capacity_reservation_gib': ?storageCapacityReservationGib,
           'tags': ?tags,
           'volume_type': ?volumeType,
           if (nfsExports != null)
             'nfs_exports': TfArg.literal(nfsExports.encode()),
           if (originSnapshot != null)
             'origin_snapshot': TfArg.literal(originSnapshot.encode()),
           if (userAndGroupQuotas != null)
             'user_and_group_quotas': TfArg.literal([
               for (final e in userAndGroupQuotas) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOpenzfsVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxOpenzfsVolume>`.
  RefTo<AwsFsxOpenzfsVolume> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `copy_tags_to_snapshots` attribute.
  TfRef<bool> get copyTagsToSnapshotsRef =>
      TfRef.attribute<bool>(this, 'copy_tags_to_snapshots');

  /// Reference to `data_compression_type` attribute.
  TfRef<String> get dataCompressionTypeRef =>
      TfRef.attribute<String>(this, 'data_compression_type');

  /// Reference to `delete_volume_options` attribute.
  TfRef<List<String>> get deleteVolumeOptionsRef =>
      TfRef.attribute<List<String>>(this, 'delete_volume_options');

  /// Reference to `parent_volume_id` attribute.
  TfRef<String> get parentVolumeIdRef =>
      TfRef.attribute<String>(this, 'parent_volume_id');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnlyRef => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `record_size_kib` attribute.
  TfRef<num> get recordSizeKibRef =>
      TfRef.attribute<num>(this, 'record_size_kib');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `storage_capacity_quota_gib` attribute.
  TfRef<num> get storageCapacityQuotaGibRef =>
      TfRef.attribute<num>(this, 'storage_capacity_quota_gib');

  /// Reference to `storage_capacity_reservation_gib` attribute.
  TfRef<num> get storageCapacityReservationGibRef =>
      TfRef.attribute<num>(this, 'storage_capacity_reservation_gib');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tagsRef =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `volume_type` attribute.
  TfRef<String> get volumeTypeRef =>
      TfRef.attribute<String>(this, 'volume_type');
}
