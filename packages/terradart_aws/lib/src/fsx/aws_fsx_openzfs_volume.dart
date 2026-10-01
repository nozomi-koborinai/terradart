// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_openzfs_volume`.
const Set<String> _awsFsxOpenzfsVolumeSensitive = <String>{};

/// Fsx Openzfs Volume Data Compression enum for `data_compression_type`.
extension type const FsxOpenzfsVolumeDataCompressionType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsVolumeDataCompressionType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsVolumeDataCompressionType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsVolumeDataCompressionType.arg(TfArg<String> arg)
    : this._(arg);

  static const none = FsxOpenzfsVolumeDataCompressionType._(
    TfArgLiteral('NONE'),
  );
  static const zstd = FsxOpenzfsVolumeDataCompressionType._(
    TfArgLiteral('ZSTD'),
  );
  static const lz4 = FsxOpenzfsVolumeDataCompressionType._(TfArgLiteral('LZ4'));

  static const List<FsxOpenzfsVolumeDataCompressionType> values = [
    none,
    zstd,
    lz4,
  ];
}

/// Fsx Openzfs Volume Delete Volume enum for `delete_volume_options`.
extension type const FsxOpenzfsVolumeDeleteVolumeOptions._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsVolumeDeleteVolumeOptions.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsVolumeDeleteVolumeOptions.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsVolumeDeleteVolumeOptions.arg(TfArg<String> arg)
    : this._(arg);

  static const deleteChildVolumesAndSnapshots =
      FsxOpenzfsVolumeDeleteVolumeOptions._(
        TfArgLiteral('DELETE_CHILD_VOLUMES_AND_SNAPSHOTS'),
      );

  static const List<FsxOpenzfsVolumeDeleteVolumeOptions> values = [
    deleteChildVolumesAndSnapshots,
  ];
}

/// Fsx Openzfs Volume enum for `volume_type`.
extension type const FsxOpenzfsVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsVolumeType.variable(String name) : this._(TfArg.variable(name));
  FsxOpenzfsVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const ontap = FsxOpenzfsVolumeType._(TfArgLiteral('ONTAP'));
  static const openzfs = FsxOpenzfsVolumeType._(TfArgLiteral('OPENZFS'));

  static const List<FsxOpenzfsVolumeType> values = [ontap, openzfs];
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

  final FsxOpenzfsVolumeCopyStrategy copyStrategy;

  final TfArg<String> snapshotArn;

  Map<String, Object?> encode() => {
    'copy_strategy': copyStrategy.toTfJson(),
    'snapshot_arn': snapshotArn.toTfJson(),
  };
}

/// `copy_strategy` — derived from the provider schema description.
extension type const FsxOpenzfsVolumeCopyStrategy._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsVolumeCopyStrategy.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsVolumeCopyStrategy.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsVolumeCopyStrategy.arg(TfArg<String> arg) : this._(arg);

  static const clone = FsxOpenzfsVolumeCopyStrategy._(TfArgLiteral('CLONE'));
  static const fullCopy = FsxOpenzfsVolumeCopyStrategy._(
    TfArgLiteral('FULL_COPY'),
  );
  static const incrementalCopy = FsxOpenzfsVolumeCopyStrategy._(
    TfArgLiteral('INCREMENTAL_COPY'),
  );

  static const List<FsxOpenzfsVolumeCopyStrategy> values = [
    clone,
    fullCopy,
    incrementalCopy,
  ];
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

  final FsxOpenzfsVolumeUserAndGroupQuotasType type;

  Map<String, Object?> encode() => {
    'id': id.toTfJson(),
    'storage_capacity_quota_gib': storageCapacityQuotaGib.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxOpenzfsVolumeUserAndGroupQuotasType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOpenzfsVolumeUserAndGroupQuotasType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOpenzfsVolumeUserAndGroupQuotasType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOpenzfsVolumeUserAndGroupQuotasType.arg(TfArg<String> arg)
    : this._(arg);

  static const user = FsxOpenzfsVolumeUserAndGroupQuotasType._(
    TfArgLiteral('USER'),
  );
  static const group = FsxOpenzfsVolumeUserAndGroupQuotasType._(
    TfArgLiteral('GROUP'),
  );

  static const List<FsxOpenzfsVolumeUserAndGroupQuotasType> values = [
    user,
    group,
  ];
}

/// Factory wrapper for `aws_fsx_openzfs_volume`.
final class AwsFsxOpenzfsVolume extends Resource {
  static const String tfType = 'aws_fsx_openzfs_volume';

  AwsFsxOpenzfsVolume(
    super.localName, {
    TfArg<bool>? copyTagsToSnapshots,
    FsxOpenzfsVolumeDataCompressionType? dataCompressionType,
    List<FsxOpenzfsVolumeDeleteVolumeOptions>? deleteVolumeOptions,
    required TfArg<String> name,
    required TfArg<String> parentVolumeId,
    TfArg<bool>? readOnly,
    TfArg<num>? recordSizeKib,
    TfArg<String>? region,
    TfArg<num>? storageCapacityQuotaGib,
    TfArg<num>? storageCapacityReservationGib,
    TfArg<Map<String, String>>? tags,
    FsxOpenzfsVolumeType? volumeType,
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
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `copy_tags_to_snapshots` attribute.
  TfRef<bool> get copyTagsToSnapshots =>
      TfRef.attribute<bool>(this, 'copy_tags_to_snapshots');

  /// Reference to `data_compression_type` attribute.
  TfRef<String> get dataCompressionType =>
      TfRef.attribute<String>(this, 'data_compression_type');

  /// Reference to `delete_volume_options` attribute.
  TfRef<List<String>> get deleteVolumeOptions =>
      TfRef.attribute<List<String>>(this, 'delete_volume_options');

  /// Reference to `parent_volume_id` attribute.
  TfRef<String> get parentVolumeId =>
      TfRef.attribute<String>(this, 'parent_volume_id');

  /// Reference to `read_only` attribute.
  TfRef<bool> get readOnly => TfRef.attribute<bool>(this, 'read_only');

  /// Reference to `record_size_kib` attribute.
  TfRef<num> get recordSizeKib => TfRef.attribute<num>(this, 'record_size_kib');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `storage_capacity_quota_gib` attribute.
  TfRef<num> get storageCapacityQuotaGib =>
      TfRef.attribute<num>(this, 'storage_capacity_quota_gib');

  /// Reference to `storage_capacity_reservation_gib` attribute.
  TfRef<num> get storageCapacityReservationGib =>
      TfRef.attribute<num>(this, 'storage_capacity_reservation_gib');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `volume_type` attribute.
  TfRef<String> get volumeType => TfRef.attribute<String>(this, 'volume_type');
}
