// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_file_cache`.
const Set<String> _awsFsxFileCacheSensitive = <String>{};

/// Typed helper for the `data_repository_association` block of
/// `aws_fsx_file_cache` (derived from provider schema).
@immutable
final class FsxFileCacheDataRepositoryAssociation {
  const FsxFileCacheDataRepositoryAssociation({
    required this.dataRepositoryPath,
    this.dataRepositorySubdirectories,
    required this.fileCachePath,
    this.tags,
    this.nfs,
  });

  final TfArg<String> dataRepositoryPath;

  final TfArg<List<Object?>>? dataRepositorySubdirectories;

  final TfArg<String> fileCachePath;

  final TfArg<Map<String, String>>? tags;

  final List<FsxFileCacheDataRepositoryAssociationNfs>? nfs;

  Map<String, Object?> encode() => {
    'data_repository_path': dataRepositoryPath.toTfJson(),
    if (dataRepositorySubdirectories != null)
      'data_repository_subdirectories': dataRepositorySubdirectories!
          .toTfJson(),
    'file_cache_path': fileCachePath.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
    if (nfs != null) 'nfs': [for (final e in nfs!) e.encode()],
  };
}

/// Typed helper for the `data_repository_association.nfs` block of
/// `aws_fsx_file_cache` (derived from provider schema).
@immutable
final class FsxFileCacheDataRepositoryAssociationNfs {
  const FsxFileCacheDataRepositoryAssociationNfs({
    this.dnsIps,
    required this.version,
  });

  final TfArg<List<Object?>>? dnsIps;

  final TfArg<String> version;

  Map<String, Object?> encode() => {
    if (dnsIps != null) 'dns_ips': dnsIps!.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// Typed helper for the `lustre_configuration` block of
/// `aws_fsx_file_cache` (derived from provider schema).
@immutable
final class FsxFileCacheLustreConfiguration {
  const FsxFileCacheLustreConfiguration({
    required this.deploymentType,
    required this.perUnitStorageThroughput,
    this.weeklyMaintenanceStartTime,
    required this.metadataConfiguration,
  });

  final TfArg<String> deploymentType;

  final TfArg<num> perUnitStorageThroughput;

  final TfArg<String>? weeklyMaintenanceStartTime;

  final List<FsxFileCacheLustreConfigurationMetadataConfiguration>
  metadataConfiguration;

  Map<String, Object?> encode() => {
    'deployment_type': deploymentType.toTfJson(),
    'per_unit_storage_throughput': perUnitStorageThroughput.toTfJson(),
    if (weeklyMaintenanceStartTime != null)
      'weekly_maintenance_start_time': weeklyMaintenanceStartTime!.toTfJson(),
    'metadata_configuration': [
      for (final e in metadataConfiguration) e.encode(),
    ],
  };
}

/// Typed helper for the `lustre_configuration.metadata_configuration` block of
/// `aws_fsx_file_cache` (derived from provider schema).
@immutable
final class FsxFileCacheLustreConfigurationMetadataConfiguration {
  const FsxFileCacheLustreConfigurationMetadataConfiguration({
    required this.storageCapacity,
  });

  final TfArg<num> storageCapacity;

  Map<String, Object?> encode() => {
    'storage_capacity': storageCapacity.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_file_cache`.
final class AwsFsxFileCache extends Resource {
  static const String tfType = 'aws_fsx_file_cache';

  AwsFsxFileCache({
    required super.localName,
    TfArg<bool>? copyTagsToDataRepositoryAssociations,
    required TfArg<String> fileCacheType,
    required TfArg<String> fileCacheTypeVersion,
    TfArg<String>? kmsKeyId,
    TfArg<String>? region,
    TfArg<List<String>>? securityGroupIds,
    required TfArg<num> storageCapacity,
    required TfArg<List<String>> subnetIds,
    TfArg<Map<String, String>>? tags,
    List<FsxFileCacheDataRepositoryAssociation>? dataRepositoryAssociation,
    List<FsxFileCacheLustreConfiguration>? lustreConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (copyTagsToDataRepositoryAssociations != null)
             'copy_tags_to_data_repository_associations':
                 copyTagsToDataRepositoryAssociations,
           'file_cache_type': fileCacheType,
           'file_cache_type_version': fileCacheTypeVersion,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId,
           if (region != null) 'region': region,
           if (securityGroupIds != null) 'security_group_ids': securityGroupIds,
           'storage_capacity': storageCapacity,
           'subnet_ids': subnetIds,
           if (tags != null) 'tags': tags,
           if (dataRepositoryAssociation != null)
             'data_repository_association': TfArg.literal([
               for (final e in dataRepositoryAssociation) e.encode(),
             ]),
           if (lustreConfiguration != null)
             'lustre_configuration': TfArg.literal([
               for (final e in lustreConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxFileCacheSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `data_repository_association_ids` attribute.
  TfRef<List<String>> get dataRepositoryAssociationIds =>
      TfRef.attribute<List<String>>(this, 'data_repository_association_ids');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `file_cache_id` attribute.
  TfRef<String> get fileCacheId =>
      TfRef.attribute<String>(this, 'file_cache_id');

  /// Reference to `network_interface_ids` attribute.
  TfRef<List<String>> get networkInterfaceIds =>
      TfRef.attribute<List<String>>(this, 'network_interface_ids');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `vpc_id` attribute.
  TfRef<String> get vpcId => TfRef.attribute<String>(this, 'vpc_id');
}
