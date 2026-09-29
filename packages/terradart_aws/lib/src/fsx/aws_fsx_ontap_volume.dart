// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_volume`.
const Set<String> _awsFsxOntapVolumeSensitive = <String>{};

/// Fsx Ontap Volume Ontap Volume enum for `ontap_volume_type`.
enum FsxOntapVolumeOntapVolumeType implements TerraformEnum {
  rw('RW'),
  dp('DP');

  const FsxOntapVolumeOntapVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Ontap Volume Security enum for `security_style`.
enum FsxOntapVolumeSecurityStyle implements TerraformEnum {
  unix('UNIX'),
  ntfs('NTFS'),
  mixed('MIXED');

  const FsxOntapVolumeSecurityStyle(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Ontap Volume Volume enum for `volume_style`.
enum FsxOntapVolumeVolumeStyle implements TerraformEnum {
  flexvol('FLEXVOL'),
  flexgroup('FLEXGROUP');

  const FsxOntapVolumeVolumeStyle(this.terraformValue);
  @override
  final String terraformValue;
}

/// Fsx Ontap Volume Volume enum for `volume_type`.
enum FsxOntapVolumeVolumeType implements TerraformEnum {
  ontap('ONTAP'),
  openzfs('OPENZFS');

  const FsxOntapVolumeVolumeType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Exactly one of `size_in_bytes`, `size_in_megabytes` on `aws_fsx_ontap_volume`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sizeInBytes(...)`.
sealed class FsxOntapVolumeSize {
  const FsxOntapVolumeSize();

  /// Sets `size_in_bytes`.
  const factory FsxOntapVolumeSize.sizeInBytes(TfArg<String> sizeInBytes) =
      FsxOntapVolumeSizeSizeInBytes;

  /// Sets `size_in_megabytes`.
  const factory FsxOntapVolumeSize.sizeInMegabytes(TfArg<num> sizeInMegabytes) =
      FsxOntapVolumeSizeSizeInMegabytes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxOntapVolumeSize.sizeInBytes] choice: sets `size_in_bytes`.
final class FsxOntapVolumeSizeSizeInBytes extends FsxOntapVolumeSize {
  const FsxOntapVolumeSizeSizeInBytes(this.sizeInBytes);

  final TfArg<String> sizeInBytes;

  @override
  String get blockKey => 'size_in_bytes';

  @override
  Map<String, Object?> encode() => {'size_in_bytes': sizeInBytes.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'size_in_bytes': sizeInBytes};
}

/// The [FsxOntapVolumeSize.sizeInMegabytes] choice: sets `size_in_megabytes`.
final class FsxOntapVolumeSizeSizeInMegabytes extends FsxOntapVolumeSize {
  const FsxOntapVolumeSizeSizeInMegabytes(this.sizeInMegabytes);

  final TfArg<num> sizeInMegabytes;

  @override
  String get blockKey => 'size_in_megabytes';

  @override
  Map<String, Object?> encode() => {
    'size_in_megabytes': sizeInMegabytes.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'size_in_megabytes': sizeInMegabytes,
  };
}

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

  final TfArg<FsxOntapVolumeSnaplockConfigurationPrivilegedDelete>?
  privilegedDelete;

  final TfArg<FsxOntapVolumeSnaplockConfigurationSnaplockType> snaplockType;

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

/// `privileged_delete` — derived from the provider schema description.
enum FsxOntapVolumeSnaplockConfigurationPrivilegedDelete
    implements TerraformEnum {
  disabled('DISABLED'),
  enabled('ENABLED'),
  permanentlyDisabled('PERMANENTLY_DISABLED');

  const FsxOntapVolumeSnaplockConfigurationPrivilegedDelete(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// `snaplock_type` — derived from the provider schema description.
enum FsxOntapVolumeSnaplockConfigurationSnaplockType implements TerraformEnum {
  compliance('COMPLIANCE'),
  enterprise('ENTERPRISE');

  const FsxOntapVolumeSnaplockConfigurationSnaplockType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `snaplock_configuration.autocommit_period` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationAutocommitPeriod {
  const FsxOntapVolumeSnaplockConfigurationAutocommitPeriod({
    this.type,
    this.value,
  });

  final TfArg<FsxOntapVolumeSnaplockConfigurationAutocommitPeriodType>? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum FsxOntapVolumeSnaplockConfigurationAutocommitPeriodType
    implements TerraformEnum {
  minutes('MINUTES'),
  hours('HOURS'),
  days('DAYS'),
  months('MONTHS'),
  years('YEARS'),
  none('NONE');

  const FsxOntapVolumeSnaplockConfigurationAutocommitPeriodType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
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

  final TfArg<
    FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetentionType
  >?
  type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetentionType
    implements TerraformEnum {
  seconds('SECONDS'),
  minutes('MINUTES'),
  hours('HOURS'),
  days('DAYS'),
  months('MONTHS'),
  years('YEARS'),
  infinite('INFINITE'),
  unspecified('UNSPECIFIED');

  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodDefaultRetentionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `snaplock_configuration.retention_period.maximum_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention {
  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetention({
    this.type,
    this.value,
  });

  final TfArg<
    FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetentionType
  >?
  type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetentionType
    implements TerraformEnum {
  seconds('SECONDS'),
  minutes('MINUTES'),
  hours('HOURS'),
  days('DAYS'),
  months('MONTHS'),
  years('YEARS'),
  infinite('INFINITE'),
  unspecified('UNSPECIFIED');

  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodMaximumRetentionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `snaplock_configuration.retention_period.minimum_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention {
  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetention({
    this.type,
    this.value,
  });

  final TfArg<
    FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetentionType
  >?
  type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    if (type != null) 'type': type!.toTfJson(),
    if (value != null) 'value': value!.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetentionType
    implements TerraformEnum {
  seconds('SECONDS'),
  minutes('MINUTES'),
  hours('HOURS'),
  days('DAYS'),
  months('MONTHS'),
  years('YEARS'),
  infinite('INFINITE'),
  unspecified('UNSPECIFIED');

  const FsxOntapVolumeSnaplockConfigurationRetentionPeriodMinimumRetentionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `tiering_policy` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeTieringPolicy {
  const FsxOntapVolumeTieringPolicy({this.coolingPeriod, this.name});

  final TfArg<num>? coolingPeriod;

  final TfArg<FsxOntapVolumeTieringPolicyName>? name;

  Map<String, Object?> encode() => {
    if (coolingPeriod != null) 'cooling_period': coolingPeriod!.toTfJson(),
    if (name != null) 'name': name!.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
enum FsxOntapVolumeTieringPolicyName implements TerraformEnum {
  snapshotOnly('SNAPSHOT_ONLY'),
  auto('AUTO'),
  all('ALL'),
  none('NONE');

  const FsxOntapVolumeTieringPolicyName(this.terraformValue);
  @override
  final String terraformValue;
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
    TfArg<FsxOntapVolumeOntapVolumeType>? ontapVolumeType,
    TfArg<String>? region,
    TfArg<FsxOntapVolumeSecurityStyle>? securityStyle,
    required FsxOntapVolumeSize size,
    TfArg<bool>? skipFinalBackup,
    TfArg<String>? snapshotPolicy,
    TfArg<bool>? storageEfficiencyEnabled,
    required TfArg<String> storageVirtualMachineId,
    TfArg<Map<String, String>>? tags,
    TfArg<FsxOntapVolumeVolumeStyle>? volumeStyle,
    TfArg<FsxOntapVolumeVolumeType>? volumeType,
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
           ...size.argMap,
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
