// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../ec2/aws_security_group.dart' show AwsSecurityGroup;
import '../ec2/aws_subnet.dart' show AwsSubnet;
import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_fsx_file_cache`.
const Set<String> _awsFsxFileCacheSensitive = <String>{};

/// Fsx File Cache enum for `file_cache_type`.
extension type const FsxFileCacheType._(TfArg<String> _)
    implements TfArg<String> {
  FsxFileCacheType.variable(String name) : this._(TfArg.variable(name));
  FsxFileCacheType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxFileCacheType.arg(TfArg<String> arg) : this._(arg);

  static const lustre = FsxFileCacheType._(TfArgLiteral('LUSTRE'));

  static const List<FsxFileCacheType> values = [lustre];
}

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

  final TfArg<List<String>>? dataRepositorySubdirectories;

  final TfArg<String> fileCachePath;

  final TfArg<Map<String, String>>? tags;

  final List<FsxFileCacheNfs>? nfs;

  @internal
  Map<String, Object?> encode() => {
    'data_repository_path': dataRepositoryPath.toTfJson(),
    'data_repository_subdirectories': ?dataRepositorySubdirectories?.toTfJson(),
    'file_cache_path': fileCachePath.toTfJson(),
    'tags': ?tags?.toTfJson(),
    if (nfs != null) 'nfs': [for (final e in nfs!) e.encode()],
  };
}

/// Typed helper for the `data_repository_association.nfs` block of
/// `aws_fsx_file_cache` (derived from provider schema).
@immutable
final class FsxFileCacheNfs {
  const FsxFileCacheNfs({this.dnsIps, required this.version});

  final TfArg<List<String>>? dnsIps;

  final FsxFileCacheVersion version;

  @internal
  Map<String, Object?> encode() => {
    'dns_ips': ?dnsIps?.toTfJson(),
    'version': version.toTfJson(),
  };
}

/// `version` — derived from the provider schema description.
extension type const FsxFileCacheVersion._(TfArg<String> _)
    implements TfArg<String> {
  FsxFileCacheVersion.variable(String name) : this._(TfArg.variable(name));
  FsxFileCacheVersion.expression(String template)
    : this._(TfArg.expression(template));
  const FsxFileCacheVersion.arg(TfArg<String> arg) : this._(arg);

  static const nfs3 = FsxFileCacheVersion._(TfArgLiteral('NFS3'));

  static const List<FsxFileCacheVersion> values = [nfs3];
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

  final FsxFileCacheDeploymentType deploymentType;

  final TfArg<num> perUnitStorageThroughput;

  final TfArg<String>? weeklyMaintenanceStartTime;

  final List<FsxFileCacheMetadataConfiguration> metadataConfiguration;

  @internal
  Map<String, Object?> encode() => {
    'deployment_type': deploymentType.toTfJson(),
    'per_unit_storage_throughput': perUnitStorageThroughput.toTfJson(),
    'weekly_maintenance_start_time': ?weeklyMaintenanceStartTime?.toTfJson(),
    'metadata_configuration': [
      for (final e in metadataConfiguration) e.encode(),
    ],
  };
}

/// `deployment_type` — derived from the provider schema description.
extension type const FsxFileCacheDeploymentType._(TfArg<String> _)
    implements TfArg<String> {
  FsxFileCacheDeploymentType.variable(String name)
    : this._(TfArg.variable(name));
  FsxFileCacheDeploymentType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxFileCacheDeploymentType.arg(TfArg<String> arg) : this._(arg);

  static const cache1 = FsxFileCacheDeploymentType._(TfArgLiteral('CACHE_1'));

  static const List<FsxFileCacheDeploymentType> values = [cache1];
}

/// Typed helper for the `lustre_configuration.metadata_configuration` block of
/// `aws_fsx_file_cache` (derived from provider schema).
@immutable
final class FsxFileCacheMetadataConfiguration {
  const FsxFileCacheMetadataConfiguration({required this.storageCapacity});

  final TfArg<num> storageCapacity;

  @internal
  Map<String, Object?> encode() => {
    'storage_capacity': storageCapacity.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_file_cache`.
final class AwsFsxFileCache extends Resource {
  static const String tfType = 'aws_fsx_file_cache';

  AwsFsxFileCache(
    super.localName, {
    TfArg<bool>? copyTagsToDataRepositoryAssociations,
    required FsxFileCacheType fileCacheType,
    required TfArg<String> fileCacheTypeVersion,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? region,
    TfArg<List<RefTo<AwsSecurityGroup>>>? securityGroupIds,
    required TfArg<num> storageCapacity,
    required TfArg<List<RefTo<AwsSubnet>>> subnetIds,
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
           'copy_tags_to_data_repository_associations':
               ?copyTagsToDataRepositoryAssociations,
           'file_cache_type': fileCacheType,
           'file_cache_type_version': fileCacheTypeVersion,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'region': ?region,
           'security_group_ids': ?securityGroupIds?.encodeAs('id'),
           'storage_capacity': storageCapacity,
           'subnet_ids': subnetIds.encodeAs('id'),
           'tags': ?tags,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxFileCache>`.
  RefTo<AwsFsxFileCache> get ref => RefTo.of(this);

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

  /// Reference to `copy_tags_to_data_repository_associations` attribute.
  TfRef<bool> get copyTagsToDataRepositoryAssociations =>
      TfRef.attribute<bool>(this, 'copy_tags_to_data_repository_associations');

  /// Reference to `file_cache_type` attribute.
  TfRef<String> get fileCacheType =>
      TfRef.attribute<String>(this, 'file_cache_type');

  /// Reference to `file_cache_type_version` attribute.
  TfRef<String> get fileCacheTypeVersion =>
      TfRef.attribute<String>(this, 'file_cache_type_version');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_group_ids` attribute.
  TfRef<List<String>> get securityGroupIds =>
      TfRef.attribute<List<String>>(this, 'security_group_ids');

  /// Reference to `storage_capacity` attribute.
  TfRef<num> get storageCapacity =>
      TfRef.attribute<num>(this, 'storage_capacity');

  /// Reference to `subnet_ids` attribute.
  TfRef<List<String>> get subnetIds =>
      TfRef.attribute<List<String>>(this, 'subnet_ids');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
