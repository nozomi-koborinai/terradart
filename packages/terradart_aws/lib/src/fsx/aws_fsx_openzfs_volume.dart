// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_openzfs_volume`.
const Set<String> _awsFsxOpenzfsVolumeSensitive = <String>{};

/// Typed helper for the `nfs_exports` block of
/// `aws_fsx_openzfs_volume` (derived from provider schema).
@immutable
final class FsxOpenzfsVolumeNfsExports {
  const FsxOpenzfsVolumeNfsExports({required this.clientConfigurations});

  final List<FsxOpenzfsVolumeNfsExportsClientConfigurations>
  clientConfigurations;

  Map<String, Object?> encode() => {
    'client_configurations': [for (final e in clientConfigurations) e.encode()],
  };
}

/// Typed helper for the `nfs_exports.client_configurations` block of
/// `aws_fsx_openzfs_volume` (derived from provider schema).
@immutable
final class FsxOpenzfsVolumeNfsExportsClientConfigurations {
  const FsxOpenzfsVolumeNfsExportsClientConfigurations({
    required this.clients,
    required this.options,
  });

  final TfArg<String> clients;

  final TfArg<List<Object?>> options;

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

  final TfArg<String> copyStrategy;

  final TfArg<String> snapshotArn;

  Map<String, Object?> encode() => {
    'copy_strategy': copyStrategy.toTfJson(),
    'snapshot_arn': snapshotArn.toTfJson(),
  };
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

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'storage_capacity_quota_gib': storageCapacityQuotaGib.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_openzfs_volume`.
final class AwsFsxOpenzfsVolume extends Resource {
  static const String tfType = 'aws_fsx_openzfs_volume';

  AwsFsxOpenzfsVolume({
    required super.localName,
    TfArg<bool>? copyTagsToSnapshots,
    TfArg<String>? dataCompressionType,
    TfArg<List<String>>? deleteVolumeOptions,
    required TfArg<String> name,
    required TfArg<String> parentVolumeId,
    TfArg<bool>? readOnly,
    TfArg<num>? recordSizeKib,
    TfArg<String>? region,
    TfArg<num>? storageCapacityQuotaGib,
    TfArg<num>? storageCapacityReservationGib,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? volumeType,
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
           if (copyTagsToSnapshots != null)
             'copy_tags_to_snapshots': copyTagsToSnapshots,
           if (dataCompressionType != null)
             'data_compression_type': dataCompressionType,
           if (deleteVolumeOptions != null)
             'delete_volume_options': deleteVolumeOptions,
           'name': name,
           'parent_volume_id': parentVolumeId,
           if (readOnly != null) 'read_only': readOnly,
           if (recordSizeKib != null) 'record_size_kib': recordSizeKib,
           if (region != null) 'region': region,
           if (storageCapacityQuotaGib != null)
             'storage_capacity_quota_gib': storageCapacityQuotaGib,
           if (storageCapacityReservationGib != null)
             'storage_capacity_reservation_gib': storageCapacityReservationGib,
           if (tags != null) 'tags': tags,
           if (volumeType != null) 'volume_type': volumeType,
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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
