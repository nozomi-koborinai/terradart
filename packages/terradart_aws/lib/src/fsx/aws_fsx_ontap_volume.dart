// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_volume`.
const Set<String> _awsFsxOntapVolumeSensitive = <String>{};

/// Typed helper for the `aggregate_configuration` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeAggregateConfiguration {
  const FsxOntapVolumeAggregateConfiguration({
    this.aggregates,
    this.constituentsPerAggregate,
  });

  final TfArg<List<Object?>>? aggregates;

  final TfArg<num>? constituentsPerAggregate;

  Map<String, Object?> encode() => {
    if (aggregates != null) 'aggregates': aggregates!.toTfJson(),
    if (constituentsPerAggregate != null)
      'constituents_per_aggregate': constituentsPerAggregate!.toTfJson(),
  };
}

/// Typed helper for the `snaplock_configuration` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfiguration {
  const FsxOntapVolumeSnaplockConfiguration({
    this.auditLogVolume,
    this.privilegedDelete,
    required this.snaplockType,
    this.volumeAppendModeEnabled,
    this.autocommitPeriod,
    this.retentionPeriod,
  });

  final TfArg<bool>? auditLogVolume;

  final TfArg<String>? privilegedDelete;

  final TfArg<String> snaplockType;

  final TfArg<bool>? volumeAppendModeEnabled;

  final FsxOntapVolumeSnaplockConfigurationAutocommitPeriod? autocommitPeriod;

  final FsxOntapVolumeSnaplockConfigurationRetentionPeriod? retentionPeriod;

  Map<String, Object?> encode() => {
    if (auditLogVolume != null) 'audit_log_volume': auditLogVolume!.toTfJson(),
    if (privilegedDelete != null)
      'privileged_delete': privilegedDelete!.toTfJson(),
    'snaplock_type': snaplockType.toTfJson(),
    if (volumeAppendModeEnabled != null)
      'volume_append_mode_enabled': volumeAppendModeEnabled!.toTfJson(),
    if (autocommitPeriod != null)
      'autocommit_period': autocommitPeriod!.encode(),
    if (retentionPeriod != null) 'retention_period': retentionPeriod!.encode(),
  };
}

/// Typed helper for the `snaplock_configuration.autocommit_period` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationAutocommitPeriod {
  const FsxOntapVolumeSnaplockConfigurationAutocommitPeriod({
    this.type,
    this.value,
  });

  final TfArg<String>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `snaplock_configuration.retention_period` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationRetentionPeriod {
  const FsxOntapVolumeSnaplockConfigurationRetentionPeriod({
    this.defaultRetention,
    this.maximumRetention,
    this.minimumRetention,
  });

  final FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention?
  defaultRetention;

  final FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention?
  maximumRetention;

  final FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention?
  minimumRetention;

  Map<String, Object?> encode() => {
    if (defaultRetention != null)
      'default_retention': defaultRetention!.encode(),
    if (maximumRetention != null)
      'maximum_retention': maximumRetention!.encode(),
    if (minimumRetention != null)
      'minimum_retention': minimumRetention!.encode(),
  };
}

/// Typed helper for the `snaplock_configuration.retention_period.default_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention {
  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetention({
    this.type,
    this.value,
  });

  final TfArg<String>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `snaplock_configuration.retention_period.maximum_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention {
  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention({
    this.type,
    this.value,
  });

  final TfArg<String>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `snaplock_configuration.retention_period.minimum_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention {
  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention({
    this.type,
    this.value,
  });

  final TfArg<String>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// Typed helper for the `tiering_policy` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeTieringPolicy {
  const FsxOntapVolumeTieringPolicy({this.coolingPeriod, this.name});

  final TfArg<num>? coolingPeriod;

  final TfArg<String>? name;

  Map<String, Object?> encode() => {
    if (coolingPeriod != null) 'cooling_period': coolingPeriod!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// Factory wrapper for `aws_fsx_ontap_volume`.
final class AwsFsxOntapVolume extends Resource {
  static const String tfType = 'aws_fsx_ontap_volume';

  AwsFsxOntapVolume({
    required super.localName,
    TfArg<bool>? bypassSnaplockEnterpriseRetention,
    TfArg<bool>? copyTagsToBackups,
    TfArg<Map<String, String>>? finalBackupTags,
    TfArg<String>? junctionPath,
    required TfArg<String> name,
    TfArg<String>? ontapVolumeType,
    TfArg<String>? region,
    TfArg<String>? securityStyle,
    TfArg<String>? sizeInBytes,
    TfArg<num>? sizeInMegabytes,
    TfArg<bool>? skipFinalBackup,
    TfArg<String>? snapshotPolicy,
    TfArg<bool>? storageEfficiencyEnabled,
    required TfArg<String> storageVirtualMachineId,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? volumeStyle,
    TfArg<String>? volumeType,
    FsxOntapVolumeAggregateConfiguration? aggregateConfiguration,
    FsxOntapVolumeSnaplockConfiguration? snaplockConfiguration,
    FsxOntapVolumeTieringPolicy? tieringPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (bypassSnaplockEnterpriseRetention != null)
             'bypass_snaplock_enterprise_retention':
                 bypassSnaplockEnterpriseRetention,
           if (copyTagsToBackups != null)
             'copy_tags_to_backups': copyTagsToBackups,
           if (finalBackupTags != null) 'final_backup_tags': finalBackupTags,
           if (junctionPath != null) 'junction_path': junctionPath,
           'name': name,
           if (ontapVolumeType != null) 'ontap_volume_type': ontapVolumeType,
           if (region != null) 'region': region,
           if (securityStyle != null) 'security_style': securityStyle,
           if (sizeInBytes != null) 'size_in_bytes': sizeInBytes,
           if (sizeInMegabytes != null) 'size_in_megabytes': sizeInMegabytes,
           if (skipFinalBackup != null) 'skip_final_backup': skipFinalBackup,
           if (snapshotPolicy != null) 'snapshot_policy': snapshotPolicy,
           if (storageEfficiencyEnabled != null)
             'storage_efficiency_enabled': storageEfficiencyEnabled,
           'storage_virtual_machine_id': storageVirtualMachineId,
           if (tags != null) 'tags': tags,
           if (volumeStyle != null) 'volume_style': volumeStyle,
           if (volumeType != null) 'volume_type': volumeType,
           if (aggregateConfiguration != null)
             'aggregate_configuration': TfArg.literal(
               aggregateConfiguration.encode(),
             ),
           if (snaplockConfiguration != null)
             'snaplock_configuration': TfArg.literal(
               snaplockConfiguration.encode(),
             ),
           if (tieringPolicy != null)
             'tiering_policy': TfArg.literal(tieringPolicy.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsFsxOntapVolumeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `file_system_id` attribute.
  TfRef<String> get fileSystemId =>
      TfRef.attribute<String>(this, 'file_system_id');

  /// Reference to `flexcache_endpoint_type` attribute.
  TfRef<String> get flexcacheEndpointType =>
      TfRef.attribute<String>(this, 'flexcache_endpoint_type');

  /// Reference to `uuid` attribute.
  TfRef<String> get uuid => TfRef.attribute<String>(this, 'uuid');
}
