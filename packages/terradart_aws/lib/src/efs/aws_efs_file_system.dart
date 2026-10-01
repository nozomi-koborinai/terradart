// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_efs_file_system`.
const Set<String> _awsEfsFileSystemSensitive = <String>{};

/// Efs File System Performance enum for `performance_mode`.
enum EfsFileSystemPerformanceMode implements TerraformEnum {
  generalpurpose('generalPurpose'),
  maxio('maxIO');

  const EfsFileSystemPerformanceMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Efs File System Throughput enum for `throughput_mode`.
enum EfsFileSystemThroughputMode implements TerraformEnum {
  bursting('bursting'),
  provisioned('provisioned'),
  elastic('elastic');

  const EfsFileSystemThroughputMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<EfsFileSystemTransitionToArchive>? transitionToArchive;

  final TfArg<EfsFileSystemTransitionToIa>? transitionToIa;

  final TfArg<EfsFileSystemTransitionToPrimaryStorageClass>?
  transitionToPrimaryStorageClass;

  Map<String, Object?> encode() => {
    'transition_to_archive': ?transitionToArchive?.toTfJson(),
    'transition_to_ia': ?transitionToIa?.toTfJson(),
    'transition_to_primary_storage_class': ?transitionToPrimaryStorageClass
        ?.toTfJson(),
  };
}

/// `transition_to_archive` — derived from the provider schema description.
enum EfsFileSystemTransitionToArchive implements TerraformEnum {
  after1Day('AFTER_1_DAY'),
  after7Days('AFTER_7_DAYS'),
  after14Days('AFTER_14_DAYS'),
  after30Days('AFTER_30_DAYS'),
  after60Days('AFTER_60_DAYS'),
  after90Days('AFTER_90_DAYS'),
  after180Days('AFTER_180_DAYS'),
  after270Days('AFTER_270_DAYS'),
  after365Days('AFTER_365_DAYS');

  const EfsFileSystemTransitionToArchive(this.terraformValue);
  @override
  final String terraformValue;
}

/// `transition_to_ia` — derived from the provider schema description.
enum EfsFileSystemTransitionToIa implements TerraformEnum {
  after7Days('AFTER_7_DAYS'),
  after14Days('AFTER_14_DAYS'),
  after30Days('AFTER_30_DAYS'),
  after60Days('AFTER_60_DAYS'),
  after90Days('AFTER_90_DAYS'),
  after1Day('AFTER_1_DAY'),
  after180Days('AFTER_180_DAYS'),
  after270Days('AFTER_270_DAYS'),
  after365Days('AFTER_365_DAYS');

  const EfsFileSystemTransitionToIa(this.terraformValue);
  @override
  final String terraformValue;
}

/// `transition_to_primary_storage_class` — derived from the provider schema description.
enum EfsFileSystemTransitionToPrimaryStorageClass implements TerraformEnum {
  after1Access('AFTER_1_ACCESS');

  const EfsFileSystemTransitionToPrimaryStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `protection` block of
/// `aws_efs_file_system` (derived from provider schema).
@immutable
final class EfsFileSystemProtection {
  const EfsFileSystemProtection({this.replicationOverwrite});

  final TfArg<EfsFileSystemReplicationOverwrite>? replicationOverwrite;

  Map<String, Object?> encode() => {
    'replication_overwrite': ?replicationOverwrite?.toTfJson(),
  };
}

/// `replication_overwrite` — derived from the provider schema description.
enum EfsFileSystemReplicationOverwrite implements TerraformEnum {
  enabled('ENABLED'),
  disabled('DISABLED');

  const EfsFileSystemReplicationOverwrite(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_efs_file_system`.
final class AwsEfsFileSystem extends Resource {
  static const String tfType = 'aws_efs_file_system';

  AwsEfsFileSystem({
    required super.localName,
    TfArg<String>? availabilityZoneName,
    TfArg<String>? creationToken,
    TfArg<bool>? encrypted,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<EfsFileSystemPerformanceMode>? performanceMode,
    TfArg<num>? provisionedThroughputInMibps,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<EfsFileSystemThroughputMode>? throughputMode,
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
