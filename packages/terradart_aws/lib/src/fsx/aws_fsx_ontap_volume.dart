// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_fsx_ontap_volume`.
const Set<String> _awsFsxOntapVolumeSensitive = <String>{};

/// Fsx Ontap Volume Ontap Volume enum for `ontap_volume_type`.
extension type const FsxOntapVolumeOntapVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeOntapVolumeType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumeOntapVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeOntapVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const rw = FsxOntapVolumeOntapVolumeType._(TfArgLiteral('RW'));
  static const dp = FsxOntapVolumeOntapVolumeType._(TfArgLiteral('DP'));

  static const List<FsxOntapVolumeOntapVolumeType> values = [rw, dp];
}

/// Fsx Ontap Volume Security enum for `security_style`.
extension type const FsxOntapVolumeSecurityStyle._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeSecurityStyle.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumeSecurityStyle.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeSecurityStyle.arg(TfArg<String> arg) : this._(arg);

  static const unix = FsxOntapVolumeSecurityStyle._(TfArgLiteral('UNIX'));
  static const ntfs = FsxOntapVolumeSecurityStyle._(TfArgLiteral('NTFS'));
  static const mixed = FsxOntapVolumeSecurityStyle._(TfArgLiteral('MIXED'));

  static const List<FsxOntapVolumeSecurityStyle> values = [unix, ntfs, mixed];
}

/// Fsx Ontap Volume enum for `volume_style`.
extension type const FsxOntapVolumeStyle._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeStyle.variable(String name) : this._(TfArg.variable(name));
  FsxOntapVolumeStyle.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeStyle.arg(TfArg<String> arg) : this._(arg);

  static const flexvol = FsxOntapVolumeStyle._(TfArgLiteral('FLEXVOL'));
  static const flexgroup = FsxOntapVolumeStyle._(TfArgLiteral('FLEXGROUP'));

  static const List<FsxOntapVolumeStyle> values = [flexvol, flexgroup];
}

/// Fsx Ontap Volume enum for `volume_type`.
extension type const FsxOntapVolumeType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeType.variable(String name) : this._(TfArg.variable(name));
  FsxOntapVolumeType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeType.arg(TfArg<String> arg) : this._(arg);

  static const ontap = FsxOntapVolumeType._(TfArgLiteral('ONTAP'));
  static const openzfs = FsxOntapVolumeType._(TfArgLiteral('OPENZFS'));

  static const List<FsxOntapVolumeType> values = [ontap, openzfs];
}

/// Exactly one of `size_in_bytes`, `size_in_megabytes` on `aws_fsx_ontap_volume`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.sizeInBytes(...)`.
sealed class FsxOntapVolumeSize {
  const FsxOntapVolumeSize();

  /// Sets `size_in_bytes`.
  const factory FsxOntapVolumeSize.sizeInBytes(TfArg<String> sizeInBytes) =
      FsxOntapVolumeSizeInBytes;

  /// Sets `size_in_megabytes`.
  const factory FsxOntapVolumeSize.sizeInMegabytes(TfArg<num> sizeInMegabytes) =
      FsxOntapVolumeSizeInMegabytes;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [FsxOntapVolumeSize.sizeInBytes] choice: sets `size_in_bytes`.
final class FsxOntapVolumeSizeInBytes extends FsxOntapVolumeSize {
  const FsxOntapVolumeSizeInBytes(this.sizeInBytes);

  final TfArg<String> sizeInBytes;

  @override
  String get blockKey => 'size_in_bytes';

  @override
  Map<String, Object?> encode() => {'size_in_bytes': sizeInBytes.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'size_in_bytes': sizeInBytes};
}

/// The [FsxOntapVolumeSize.sizeInMegabytes] choice: sets `size_in_megabytes`.
final class FsxOntapVolumeSizeInMegabytes extends FsxOntapVolumeSize {
  const FsxOntapVolumeSizeInMegabytes(this.sizeInMegabytes);

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

  final TfArg<List<String>>? aggregates;

  final TfArg<num>? constituentsPerAggregate;

  Map<String, Object?> encode() => {
    'aggregates': ?aggregates?.toTfJson(),
    'constituents_per_aggregate': ?constituentsPerAggregate?.toTfJson(),
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

  final FsxOntapVolumePrivilegedDelete? privilegedDelete;

  final FsxOntapVolumeSnaplockType snaplockType;

  final TfArg<bool>? volumeAppendModeEnabled;

  final FsxOntapVolumeAutocommitPeriod? autocommitPeriod;

  final FsxOntapVolumeRetentionPeriod? retentionPeriod;

  Map<String, Object?> encode() => {
    'audit_log_volume': ?auditLogVolume?.toTfJson(),
    'privileged_delete': ?privilegedDelete?.toTfJson(),
    'snaplock_type': snaplockType.toTfJson(),
    'volume_append_mode_enabled': ?volumeAppendModeEnabled?.toTfJson(),
    'autocommit_period': ?autocommitPeriod?.encode(),
    'retention_period': ?retentionPeriod?.encode(),
  };
}

/// `privileged_delete` — derived from the provider schema description.
extension type const FsxOntapVolumePrivilegedDelete._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumePrivilegedDelete.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumePrivilegedDelete.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumePrivilegedDelete.arg(TfArg<String> arg) : this._(arg);

  static const disabled = FsxOntapVolumePrivilegedDelete._(
    TfArgLiteral('DISABLED'),
  );
  static const enabled = FsxOntapVolumePrivilegedDelete._(
    TfArgLiteral('ENABLED'),
  );
  static const permanentlyDisabled = FsxOntapVolumePrivilegedDelete._(
    TfArgLiteral('PERMANENTLY_DISABLED'),
  );

  static const List<FsxOntapVolumePrivilegedDelete> values = [
    disabled,
    enabled,
    permanentlyDisabled,
  ];
}

/// `snaplock_type` — derived from the provider schema description.
extension type const FsxOntapVolumeSnaplockType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeSnaplockType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumeSnaplockType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeSnaplockType.arg(TfArg<String> arg) : this._(arg);

  static const compliance = FsxOntapVolumeSnaplockType._(
    TfArgLiteral('COMPLIANCE'),
  );
  static const enterprise = FsxOntapVolumeSnaplockType._(
    TfArgLiteral('ENTERPRISE'),
  );

  static const List<FsxOntapVolumeSnaplockType> values = [
    compliance,
    enterprise,
  ];
}

/// Typed helper for the `snaplock_configuration.autocommit_period` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeAutocommitPeriod {
  const FsxOntapVolumeAutocommitPeriod({this.type, this.value});

  final FsxOntapVolumeAutocommitPeriodType? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxOntapVolumeAutocommitPeriodType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeAutocommitPeriodType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumeAutocommitPeriodType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeAutocommitPeriodType.arg(TfArg<String> arg) : this._(arg);

  static const minutes = FsxOntapVolumeAutocommitPeriodType._(
    TfArgLiteral('MINUTES'),
  );
  static const hours = FsxOntapVolumeAutocommitPeriodType._(
    TfArgLiteral('HOURS'),
  );
  static const days = FsxOntapVolumeAutocommitPeriodType._(
    TfArgLiteral('DAYS'),
  );
  static const months = FsxOntapVolumeAutocommitPeriodType._(
    TfArgLiteral('MONTHS'),
  );
  static const years = FsxOntapVolumeAutocommitPeriodType._(
    TfArgLiteral('YEARS'),
  );
  static const none = FsxOntapVolumeAutocommitPeriodType._(
    TfArgLiteral('NONE'),
  );

  static const List<FsxOntapVolumeAutocommitPeriodType> values = [
    minutes,
    hours,
    days,
    months,
    years,
    none,
  ];
}

/// Typed helper for the `snaplock_configuration.retention_period` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeRetentionPeriod {
  const FsxOntapVolumeRetentionPeriod({
    this.defaultRetention,
    this.maximumRetention,
    this.minimumRetention,
  });

  final FsxOntapVolumeDefaultRetention? defaultRetention;

  final FsxOntapVolumeMaximumRetention? maximumRetention;

  final FsxOntapVolumeMinimumRetention? minimumRetention;

  Map<String, Object?> encode() => {
    'default_retention': ?defaultRetention?.encode(),
    'maximum_retention': ?maximumRetention?.encode(),
    'minimum_retention': ?minimumRetention?.encode(),
  };
}

/// Typed helper for the `snaplock_configuration.retention_period.default_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeDefaultRetention {
  const FsxOntapVolumeDefaultRetention({this.type, this.value});

  final FsxOntapVolumeDefaultRetentionType? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const FsxOntapVolumeDefaultRetentionType._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeDefaultRetentionType.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumeDefaultRetentionType.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeDefaultRetentionType.arg(TfArg<String> arg) : this._(arg);

  static const seconds = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('SECONDS'),
  );
  static const minutes = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('MINUTES'),
  );
  static const hours = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('HOURS'),
  );
  static const days = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('DAYS'),
  );
  static const months = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('MONTHS'),
  );
  static const years = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('YEARS'),
  );
  static const infinite = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('INFINITE'),
  );
  static const unspecified = FsxOntapVolumeDefaultRetentionType._(
    TfArgLiteral('UNSPECIFIED'),
  );

  static const List<FsxOntapVolumeDefaultRetentionType> values = [
    seconds,
    minutes,
    hours,
    days,
    months,
    years,
    infinite,
    unspecified,
  ];
}

/// Typed helper for the `snaplock_configuration.retention_period.maximum_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeMaximumRetention {
  const FsxOntapVolumeMaximumRetention({this.type, this.value});

  final FsxOntapVolumeDefaultRetentionType? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `snaplock_configuration.retention_period.minimum_retention` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeMinimumRetention {
  const FsxOntapVolumeMinimumRetention({this.type, this.value});

  final FsxOntapVolumeDefaultRetentionType? type;

  final TfArg<num>? value;

  Map<String, Object?> encode() => {
    'type': ?type?.toTfJson(),
    'value': ?value?.toTfJson(),
  };
}

/// Typed helper for the `tiering_policy` block of
/// `aws_fsx_ontap_volume` (derived from provider schema).
@immutable
final class FsxOntapVolumeTieringPolicy {
  const FsxOntapVolumeTieringPolicy({this.coolingPeriod, this.name});

  final TfArg<num>? coolingPeriod;

  final FsxOntapVolumeTieringPolicyName? name;

  Map<String, Object?> encode() => {
    'cooling_period': ?coolingPeriod?.toTfJson(),
    'name': ?name?.toTfJson(),
  };
}

/// `name` — derived from the provider schema description.
extension type const FsxOntapVolumeTieringPolicyName._(TfArg<String> _)
    implements TfArg<String> {
  FsxOntapVolumeTieringPolicyName.variable(String name)
    : this._(TfArg.variable(name));
  FsxOntapVolumeTieringPolicyName.expression(String template)
    : this._(TfArg.expression(template));
  const FsxOntapVolumeTieringPolicyName.arg(TfArg<String> arg) : this._(arg);

  static const snapshotOnly = FsxOntapVolumeTieringPolicyName._(
    TfArgLiteral('SNAPSHOT_ONLY'),
  );
  static const auto = FsxOntapVolumeTieringPolicyName._(TfArgLiteral('AUTO'));
  static const all = FsxOntapVolumeTieringPolicyName._(TfArgLiteral('ALL'));
  static const none = FsxOntapVolumeTieringPolicyName._(TfArgLiteral('NONE'));

  static const List<FsxOntapVolumeTieringPolicyName> values = [
    snapshotOnly,
    auto,
    all,
    none,
  ];
}

/// Factory wrapper for `aws_fsx_ontap_volume`.
final class AwsFsxOntapVolume extends Resource {
  static const String tfType = 'aws_fsx_ontap_volume';

  AwsFsxOntapVolume(
    super.localName, {
    TfArg<bool>? bypassSnaplockEnterpriseRetention,
    TfArg<bool>? copyTagsToBackups,
    TfArg<Map<String, String>>? finalBackupTags,
    TfArg<String>? junctionPath,
    required TfArg<String> name,
    FsxOntapVolumeOntapVolumeType? ontapVolumeType,
    TfArg<String>? region,
    FsxOntapVolumeSecurityStyle? securityStyle,
    required FsxOntapVolumeSize size,
    TfArg<bool>? skipFinalBackup,
    TfArg<String>? snapshotPolicy,
    TfArg<bool>? storageEfficiencyEnabled,
    required TfArg<String> storageVirtualMachineId,
    TfArg<Map<String, String>>? tags,
    FsxOntapVolumeStyle? volumeStyle,
    FsxOntapVolumeType? volumeType,
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
           'bypass_snaplock_enterprise_retention':
               ?bypassSnaplockEnterpriseRetention,
           'copy_tags_to_backups': ?copyTagsToBackups,
           'final_backup_tags': ?finalBackupTags,
           'junction_path': ?junctionPath,
           'name': name,
           'ontap_volume_type': ?ontapVolumeType,
           'region': ?region,
           'security_style': ?securityStyle,
           ...size.argMap,
           'skip_final_backup': ?skipFinalBackup,
           'snapshot_policy': ?snapshotPolicy,
           'storage_efficiency_enabled': ?storageEfficiencyEnabled,
           'storage_virtual_machine_id': storageVirtualMachineId,
           'tags': ?tags,
           'volume_style': ?volumeStyle,
           'volume_type': ?volumeType,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsFsxOntapVolume>`.
  RefTo<AwsFsxOntapVolume> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `bypass_snaplock_enterprise_retention` attribute.
  TfRef<bool> get bypassSnaplockEnterpriseRetention =>
      TfRef.attribute<bool>(this, 'bypass_snaplock_enterprise_retention');

  /// Reference to `copy_tags_to_backups` attribute.
  TfRef<bool> get copyTagsToBackups =>
      TfRef.attribute<bool>(this, 'copy_tags_to_backups');

  /// Reference to `final_backup_tags` attribute.
  TfRef<Map<String, String>> get finalBackupTags =>
      TfRef.attribute<Map<String, String>>(this, 'final_backup_tags');

  /// Reference to `junction_path` attribute.
  TfRef<String> get junctionPath =>
      TfRef.attribute<String>(this, 'junction_path');

  /// Reference to `ontap_volume_type` attribute.
  TfRef<String> get ontapVolumeType =>
      TfRef.attribute<String>(this, 'ontap_volume_type');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `security_style` attribute.
  TfRef<String> get securityStyle =>
      TfRef.attribute<String>(this, 'security_style');

  /// Reference to `size_in_bytes` attribute.
  TfRef<String> get sizeInBytes =>
      TfRef.attribute<String>(this, 'size_in_bytes');

  /// Reference to `size_in_megabytes` attribute.
  TfRef<num> get sizeInMegabytes =>
      TfRef.attribute<num>(this, 'size_in_megabytes');

  /// Reference to `skip_final_backup` attribute.
  TfRef<bool> get skipFinalBackup =>
      TfRef.attribute<bool>(this, 'skip_final_backup');

  /// Reference to `snapshot_policy` attribute.
  TfRef<String> get snapshotPolicy =>
      TfRef.attribute<String>(this, 'snapshot_policy');

  /// Reference to `storage_efficiency_enabled` attribute.
  TfRef<bool> get storageEfficiencyEnabled =>
      TfRef.attribute<bool>(this, 'storage_efficiency_enabled');

  /// Reference to `storage_virtual_machine_id` attribute.
  TfRef<String> get storageVirtualMachineId =>
      TfRef.attribute<String>(this, 'storage_virtual_machine_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `volume_style` attribute.
  TfRef<String> get volumeStyle =>
      TfRef.attribute<String>(this, 'volume_style');

  /// Reference to `volume_type` attribute.
  TfRef<String> get volumeType => TfRef.attribute<String>(this, 'volume_type');
}
