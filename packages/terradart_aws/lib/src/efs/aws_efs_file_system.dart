// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_efs_file_system`.
const Set<String> _awsEfsFileSystemSensitive = <String>{};

/// Efs File System Performance enum for `performance_mode`.
extension type const EfsFileSystemPerformanceMode._(TfArg<String> _)
    implements TfArg<String> {
  EfsFileSystemPerformanceMode.variable(String name)
    : this._(TfArg.variable(name));
  EfsFileSystemPerformanceMode.expression(String template)
    : this._(TfArg.expression(template));
  const EfsFileSystemPerformanceMode.arg(TfArg<String> arg) : this._(arg);

  static const generalpurpose = EfsFileSystemPerformanceMode._(
    TfArgLiteral('generalPurpose'),
  );
  static const maxio = EfsFileSystemPerformanceMode._(TfArgLiteral('maxIO'));

  static const List<EfsFileSystemPerformanceMode> values = [
    generalpurpose,
    maxio,
  ];
}

/// Efs File System Throughput enum for `throughput_mode`.
extension type const EfsFileSystemThroughputMode._(TfArg<String> _)
    implements TfArg<String> {
  EfsFileSystemThroughputMode.variable(String name)
    : this._(TfArg.variable(name));
  EfsFileSystemThroughputMode.expression(String template)
    : this._(TfArg.expression(template));
  const EfsFileSystemThroughputMode.arg(TfArg<String> arg) : this._(arg);

  static const bursting = EfsFileSystemThroughputMode._(
    TfArgLiteral('bursting'),
  );
  static const provisioned = EfsFileSystemThroughputMode._(
    TfArgLiteral('provisioned'),
  );
  static const elastic = EfsFileSystemThroughputMode._(TfArgLiteral('elastic'));

  static const List<EfsFileSystemThroughputMode> values = [
    bursting,
    provisioned,
    elastic,
  ];
}

/// Typed helper for the `lifecycle_policy` block of
/// `aws_efs_file_system` (derived from provider schema).
@immutable
final class EfsFileSystemLifecyclePolicy {
  const EfsFileSystemLifecyclePolicy({
    this.transitionToArchive,
    this.transitionToIa,
    this.transitionToPrimaryStorageClass,
  });

  final EfsFileSystemTransitionToArchive? transitionToArchive;

  final EfsFileSystemTransitionToIa? transitionToIa;

  final EfsFileSystemTransitionToPrimaryStorageClass?
  transitionToPrimaryStorageClass;

  @internal
  Map<String, Object?> encode() => {
    'transition_to_archive': ?transitionToArchive?.toTfJson(),
    'transition_to_ia': ?transitionToIa?.toTfJson(),
    'transition_to_primary_storage_class': ?transitionToPrimaryStorageClass
        ?.toTfJson(),
  };
}

/// `transition_to_archive` — derived from the provider schema description.
extension type const EfsFileSystemTransitionToArchive._(TfArg<String> _)
    implements TfArg<String> {
  EfsFileSystemTransitionToArchive.variable(String name)
    : this._(TfArg.variable(name));
  EfsFileSystemTransitionToArchive.expression(String template)
    : this._(TfArg.expression(template));
  const EfsFileSystemTransitionToArchive.arg(TfArg<String> arg) : this._(arg);

  static const after1Day = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_1_DAY'),
  );
  static const after7Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_7_DAYS'),
  );
  static const after14Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_14_DAYS'),
  );
  static const after30Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_30_DAYS'),
  );
  static const after60Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_60_DAYS'),
  );
  static const after90Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_90_DAYS'),
  );
  static const after180Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_180_DAYS'),
  );
  static const after270Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_270_DAYS'),
  );
  static const after365Days = EfsFileSystemTransitionToArchive._(
    TfArgLiteral('AFTER_365_DAYS'),
  );

  static const List<EfsFileSystemTransitionToArchive> values = [
    after1Day,
    after7Days,
    after14Days,
    after30Days,
    after60Days,
    after90Days,
    after180Days,
    after270Days,
    after365Days,
  ];
}

/// `transition_to_ia` — derived from the provider schema description.
extension type const EfsFileSystemTransitionToIa._(TfArg<String> _)
    implements TfArg<String> {
  EfsFileSystemTransitionToIa.variable(String name)
    : this._(TfArg.variable(name));
  EfsFileSystemTransitionToIa.expression(String template)
    : this._(TfArg.expression(template));
  const EfsFileSystemTransitionToIa.arg(TfArg<String> arg) : this._(arg);

  static const after7Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_7_DAYS'),
  );
  static const after14Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_14_DAYS'),
  );
  static const after30Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_30_DAYS'),
  );
  static const after60Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_60_DAYS'),
  );
  static const after90Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_90_DAYS'),
  );
  static const after1Day = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_1_DAY'),
  );
  static const after180Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_180_DAYS'),
  );
  static const after270Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_270_DAYS'),
  );
  static const after365Days = EfsFileSystemTransitionToIa._(
    TfArgLiteral('AFTER_365_DAYS'),
  );

  static const List<EfsFileSystemTransitionToIa> values = [
    after7Days,
    after14Days,
    after30Days,
    after60Days,
    after90Days,
    after1Day,
    after180Days,
    after270Days,
    after365Days,
  ];
}

/// `transition_to_primary_storage_class` — derived from the provider schema description.
extension type const EfsFileSystemTransitionToPrimaryStorageClass._(
  TfArg<String> _
) implements TfArg<String> {
  EfsFileSystemTransitionToPrimaryStorageClass.variable(String name)
    : this._(TfArg.variable(name));
  EfsFileSystemTransitionToPrimaryStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const EfsFileSystemTransitionToPrimaryStorageClass.arg(TfArg<String> arg)
    : this._(arg);

  static const after1Access = EfsFileSystemTransitionToPrimaryStorageClass._(
    TfArgLiteral('AFTER_1_ACCESS'),
  );

  static const List<EfsFileSystemTransitionToPrimaryStorageClass> values = [
    after1Access,
  ];
}

/// Typed helper for the `protection` block of
/// `aws_efs_file_system` (derived from provider schema).
@immutable
final class EfsFileSystemProtection {
  const EfsFileSystemProtection({this.replicationOverwrite});

  final EfsFileSystemReplicationOverwrite? replicationOverwrite;

  @internal
  Map<String, Object?> encode() => {
    'replication_overwrite': ?replicationOverwrite?.toTfJson(),
  };
}

/// `replication_overwrite` — derived from the provider schema description.
extension type const EfsFileSystemReplicationOverwrite._(TfArg<String> _)
    implements TfArg<String> {
  EfsFileSystemReplicationOverwrite.variable(String name)
    : this._(TfArg.variable(name));
  EfsFileSystemReplicationOverwrite.expression(String template)
    : this._(TfArg.expression(template));
  const EfsFileSystemReplicationOverwrite.arg(TfArg<String> arg) : this._(arg);

  static const enabled = EfsFileSystemReplicationOverwrite._(
    TfArgLiteral('ENABLED'),
  );
  static const disabled = EfsFileSystemReplicationOverwrite._(
    TfArgLiteral('DISABLED'),
  );

  static const List<EfsFileSystemReplicationOverwrite> values = [
    enabled,
    disabled,
  ];
}

/// Factory wrapper for `aws_efs_file_system`.
final class AwsEfsFileSystem extends Resource {
  static const String tfType = 'aws_efs_file_system';

  AwsEfsFileSystem(
    super.localName, {
    TfArg<String>? availabilityZoneName,
    TfArg<String>? creationToken,
    TfArg<bool>? encrypted,
    RefTo<AwsKmsKey>? kmsKeyId,
    EfsFileSystemPerformanceMode? performanceMode,
    TfArg<num>? provisionedThroughputInMibps,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    EfsFileSystemThroughputMode? throughputMode,
    List<EfsFileSystemLifecyclePolicy>? lifecyclePolicy,
    EfsFileSystemProtection? protection,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'availability_zone_name': ?availabilityZoneName,
           'creation_token': ?creationToken,
           'encrypted': ?encrypted,
           'kms_key_id': ?kmsKeyId?.encodeAs('arn'),
           'performance_mode': ?performanceMode,
           'provisioned_throughput_in_mibps': ?provisionedThroughputInMibps,
           'region': ?region,
           'tags': ?tags,
           'throughput_mode': ?throughputMode,
           if (lifecyclePolicy != null)
             'lifecycle_policy': TfArg.literal([
               for (final e in lifecyclePolicy) e.encode(),
             ]),
           if (protection != null)
             'protection': TfArg.literal(protection.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEfsFileSystemSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEfsFileSystem>`.
  RefTo<AwsEfsFileSystem> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `availability_zone_id` attribute.
  TfRef<String> get availabilityZoneId =>
      TfRef.attribute<String>(this, 'availability_zone_id');

  /// Reference to `dns_name` attribute.
  TfRef<String> get dnsName => TfRef.attribute<String>(this, 'dns_name');

  /// Reference to `number_of_mount_targets` attribute.
  TfRef<num> get numberOfMountTargets =>
      TfRef.attribute<num>(this, 'number_of_mount_targets');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `size_in_bytes` attribute.
  TfRef<List<Map<String, Object?>>> get sizeInBytes =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'size_in_bytes');

  /// Reference to `availability_zone_name` attribute.
  TfRef<String> get availabilityZoneName =>
      TfRef.attribute<String>(this, 'availability_zone_name');

  /// Reference to `creation_token` attribute.
  TfRef<String> get creationToken =>
      TfRef.attribute<String>(this, 'creation_token');

  /// Reference to `encrypted` attribute.
  TfRef<bool> get encrypted => TfRef.attribute<bool>(this, 'encrypted');

  /// Reference to `kms_key_id` attribute.
  TfRef<String> get kmsKeyId => TfRef.attribute<String>(this, 'kms_key_id');

  /// Reference to `performance_mode` attribute.
  TfRef<String> get performanceMode =>
      TfRef.attribute<String>(this, 'performance_mode');

  /// Reference to `provisioned_throughput_in_mibps` attribute.
  TfRef<num> get provisionedThroughputInMibps =>
      TfRef.attribute<num>(this, 'provisioned_throughput_in_mibps');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throughput_mode` attribute.
  TfRef<String> get throughputMode =>
      TfRef.attribute<String>(this, 'throughput_mode');
}
